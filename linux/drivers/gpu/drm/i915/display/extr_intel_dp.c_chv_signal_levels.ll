; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_chv_signal_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_chv_signal_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32* }
%struct.intel_encoder = type { i32 }
%struct.TYPE_2__ = type { %struct.intel_encoder }

@DP_TRAIN_PRE_EMPHASIS_MASK = common dso_local global i32 0, align 4
@DP_TRAIN_VOLTAGE_SWING_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @chv_signal_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_signal_levels(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %9 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %10 = call %struct.TYPE_2__* @dp_to_dig_port(%struct.intel_dp* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.intel_encoder* %11, %struct.intel_encoder** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %13 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %54 [
    i32 135, label %20
    i32 134, label %30
    i32 133, label %39
    i32 132, label %47
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %28 [
    i32 131, label %24
    i32 130, label %25
    i32 129, label %26
    i32 128, label %27
  ]

24:                                               ; preds = %20
  store i32 128, i32* %5, align 4
  store i32 52, i32* %6, align 4
  br label %29

25:                                               ; preds = %20
  store i32 128, i32* %5, align 4
  store i32 77, i32* %6, align 4
  br label %29

26:                                               ; preds = %20
  store i32 128, i32* %5, align 4
  store i32 102, i32* %6, align 4
  br label %29

27:                                               ; preds = %20
  store i32 128, i32* %5, align 4
  store i32 154, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %29

28:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %61

29:                                               ; preds = %27, %26, %25, %24
  br label %55

30:                                               ; preds = %1
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %37 [
    i32 131, label %34
    i32 130, label %35
    i32 129, label %36
  ]

34:                                               ; preds = %30
  store i32 85, i32* %5, align 4
  store i32 78, i32* %6, align 4
  br label %38

35:                                               ; preds = %30
  store i32 85, i32* %5, align 4
  store i32 116, i32* %6, align 4
  br label %38

36:                                               ; preds = %30
  store i32 85, i32* %5, align 4
  store i32 154, i32* %6, align 4
  br label %38

37:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %61

38:                                               ; preds = %36, %35, %34
  br label %55

39:                                               ; preds = %1
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %45 [
    i32 131, label %43
    i32 130, label %44
  ]

43:                                               ; preds = %39
  store i32 64, i32* %5, align 4
  store i32 104, i32* %6, align 4
  br label %46

44:                                               ; preds = %39
  store i32 64, i32* %5, align 4
  store i32 154, i32* %6, align 4
  br label %46

45:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %61

46:                                               ; preds = %44, %43
  br label %55

47:                                               ; preds = %1
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %50 = and i32 %48, %49
  switch i32 %50, label %52 [
    i32 131, label %51
  ]

51:                                               ; preds = %47
  store i32 43, i32* %5, align 4
  store i32 154, i32* %6, align 4
  br label %53

52:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %61

53:                                               ; preds = %51
  br label %55

54:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

55:                                               ; preds = %53, %46, %38, %29
  %56 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @chv_set_phy_signal_level(%struct.intel_encoder* %56, i32 %57, i32 %58, i32 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %54, %52, %45, %37, %28
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_2__* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @chv_set_phy_signal_level(%struct.intel_encoder*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
