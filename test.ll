; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32"

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %a, align 4
  store i32 1, ptr %b, align 4
  store i32 1, ptr %c, align 4
  %0 = load i32, ptr %a, align 4
  %1 = load i32, ptr %b, align 4
  %2 = load i32, ptr %c, align 4
  %add = add nsw i32 %0, %1
  %add1 = add nsw i32 %add, %2
  store i32 %add1, ptr %e, align 4
  %3 = load i32, ptr %e, align 4
  ret i32 %3
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,-save-restore" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32"}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{i32 1, !"SmallDataLimit", i32 8}
!4 = !{!"clang version 16.0.0 (https://github.com/zhoujingfighting/llvm-project.git 2082188406965fe35ef3d8b1f2057ab7f8e15a43)"}
