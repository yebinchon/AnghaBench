; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_rot_mode_to_degrees.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_rot_mode_to_degrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_rot_mode_to_degrees(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = ashr i32 %13, 2
  %15 = and i32 %14, 1
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = ashr i32 %16, 1
  %18 = and i32 %17, 1
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 0
  %21 = and i32 %20, 1
  store i32 %21, i32* %11, align 4
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
  switch i32 %34, label %43 [
    i32 128, label %35
    i32 129, label %37
    i32 131, label %39
    i32 130, label %41
  ]

35:                                               ; preds = %4
  %36 = load i32*, i32** %6, align 8
  store i32 0, i32* %36, align 4
  br label %46

37:                                               ; preds = %4
  %38 = load i32*, i32** %6, align 8
  store i32 90, i32* %38, align 4
  br label %46

39:                                               ; preds = %4
  %40 = load i32*, i32** %6, align 8
  store i32 180, i32* %40, align 4
  br label %46

41:                                               ; preds = %4
  %42 = load i32*, i32** %6, align 8
  store i32 270, i32* %42, align 4
  br label %46

43:                                               ; preds = %4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %47

46:                                               ; preds = %41, %39, %37, %35
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
