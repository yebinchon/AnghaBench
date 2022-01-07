; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_get_adjust_training_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_get_adjust_training_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64* }

@VOLTAGE_LEVEL_3 = common dso_local global i64 0, align 8
@DP_TRAIN_MAX_SWING_REACHED = common dso_local global i64 0, align 8
@PRE_EMPHASIS_LEVEL_3 = common dso_local global i64 0, align 8
@DP_TRAIN_MAX_PRE_EMPHASIS_REACHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.analogix_dp_device*, i64*)* @analogix_dp_get_adjust_training_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analogix_dp_get_adjust_training_lane(%struct.analogix_dp_device* %0, i64* %1) #0 {
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %11 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %54, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load i64*, i64** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @analogix_dp_get_adjust_request_voltage(i64* %19, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @analogix_dp_get_adjust_request_pre_emphasis(i64* %22, i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @DPCD_VOLTAGE_SWING_SET(i64 %25)
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @DPCD_PRE_EMPHASIS_SET(i64 %27)
  %29 = or i64 %26, %28
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @VOLTAGE_LEVEL_3, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = load i64, i64* @DP_TRAIN_MAX_SWING_REACHED, align 8
  %35 = load i64, i64* %9, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %33, %18
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @PRE_EMPHASIS_LEVEL_3, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* @DP_TRAIN_MAX_PRE_EMPHASIS_REACHED, align 8
  %43 = load i64, i64* %9, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %48 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 %46, i64* %53, align 8
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %14

57:                                               ; preds = %14
  ret void
}

declare dso_local i64 @analogix_dp_get_adjust_request_voltage(i64*, i32) #1

declare dso_local i64 @analogix_dp_get_adjust_request_pre_emphasis(i64*, i32) #1

declare dso_local i64 @DPCD_VOLTAGE_SWING_SET(i64) #1

declare dso_local i64 @DPCD_PRE_EMPHASIS_SET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
