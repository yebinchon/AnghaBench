; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44009.c_max44009_threshold_byte_from_fraction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44009.c_max44009_threshold_byte_from_fraction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX44009_MAXIMUM_THRESHOLD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX44009_SCALE_DENOMINATOR = common dso_local global i32 0, align 4
@MAX44009_SCALE_NUMERATOR = common dso_local global i32 0, align 4
@MAX44009_FRACT_MULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @max44009_threshold_byte_from_fraction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max44009_threshold_byte_from_fraction(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MAX44009_MAXIMUM_THRESHOLD, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MAX44009_MAXIMUM_THRESHOLD, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %13, %10
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MAX44009_SCALE_DENOMINATOR, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @MAX44009_SCALE_NUMERATOR, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sdiv i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @MAX44009_FRACT_MULT, align 4
  %36 = sdiv i32 %34, %35
  %37 = load i32, i32* @MAX44009_SCALE_DENOMINATOR, align 4
  %38 = load i32, i32* @MAX44009_SCALE_NUMERATOR, align 4
  %39 = sdiv i32 %37, %38
  %40 = mul nsw i32 %36, %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %49, %27
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 255
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %43

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = ashr i32 %53, 4
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 15
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 %57, 4
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %52, %24
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
