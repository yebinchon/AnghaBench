; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_degrees_to_rot_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_degrees_to_rot_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_degrees_to_rot_mode(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %18 [
    i32 0, label %14
    i32 90, label %15
    i32 180, label %16
    i32 270, label %17
  ]

14:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %21

15:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %21

16:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %21

17:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %36

21:                                               ; preds = %17, %16, %15, %14
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %12, align 4
  %24 = xor i32 %23, %22
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 %28, 2
  %30 = load i32, i32* %12, align 4
  %31 = shl i32 %30, 1
  %32 = or i32 %29, %31
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %32, %33
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %21, %18
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
