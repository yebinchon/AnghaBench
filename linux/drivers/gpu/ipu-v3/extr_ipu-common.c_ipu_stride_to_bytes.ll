; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_stride_to_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_stride_to_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_stride_to_bytes(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %23 [
    i32 131, label %7
    i32 128, label %7
    i32 130, label %7
    i32 141, label %7
    i32 139, label %7
    i32 140, label %7
    i32 138, label %7
    i32 135, label %11
    i32 129, label %11
    i32 134, label %11
    i32 143, label %15
    i32 137, label %15
    i32 142, label %19
    i32 136, label %19
    i32 133, label %19
    i32 132, label %19
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 8, %8
  %10 = ashr i32 %9, 3
  store i32 %10, i32* %3, align 4
  br label %27

11:                                               ; preds = %2, %2, %2
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 16, %12
  %14 = ashr i32 %13, 3
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %2, %2
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 24, %16
  %18 = ashr i32 %17, 3
  store i32 %18, i32* %3, align 4
  br label %27

19:                                               ; preds = %2, %2, %2, %2
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 32, %20
  %22 = ashr i32 %21, 3
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %19, %15, %11, %7
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
