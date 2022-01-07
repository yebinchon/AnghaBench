; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_config_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_config_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32 }

@PLL_UNLOCKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"PLL is not locked yet.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DP_TIMEOUT_LOOP_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Timeout of slave video streamclk ok\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CALCULATED_M = common dso_local global i32 0, align 4
@VIDEO_TIMING_FROM_CAPTURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Ignoring timeout of video streamclk ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_config_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_config_video(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %7 = call i32 @analogix_dp_config_video_slave_mode(%struct.analogix_dp_device* %6)
  %8 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %9 = call i32 @analogix_dp_set_video_color_format(%struct.analogix_dp_device* %8)
  %10 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %11 = call i64 @analogix_dp_get_pll_lock_status(%struct.analogix_dp_device* %10)
  %12 = load i64, i64* @PLL_UNLOCKED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %16 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %85

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %26 = call i64 @analogix_dp_is_slave_video_stream_clock_on(%struct.analogix_dp_device* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %42

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @DP_TIMEOUT_LOOP_COUNT, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %35 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %85

40:                                               ; preds = %29
  %41 = call i32 @usleep_range(i32 1000, i32 1001)
  br label %22

42:                                               ; preds = %28
  %43 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %44 = load i32, i32* @CALCULATED_M, align 4
  %45 = call i32 @analogix_dp_set_video_cr_mn(%struct.analogix_dp_device* %43, i32 %44, i32 0, i32 0)
  %46 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %47 = load i32, i32* @VIDEO_TIMING_FROM_CAPTURE, align 4
  %48 = call i32 @analogix_dp_set_video_timing_mode(%struct.analogix_dp_device* %46, i32 %47)
  %49 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %50 = call i32 @analogix_dp_enable_video_mute(%struct.analogix_dp_device* %49, i32 0)
  %51 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %52 = call i32 @analogix_dp_enable_video_master(%struct.analogix_dp_device* %51, i32 0)
  %53 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %54 = call i32 @analogix_dp_start_video(%struct.analogix_dp_device* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %82, %42
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  %58 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %59 = call i64 @analogix_dp_is_video_stream_on(%struct.analogix_dp_device* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp sgt i32 %64, 10
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %84

67:                                               ; preds = %61
  br label %73

68:                                               ; preds = %55
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %68
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @DP_TIMEOUT_LOOP_COUNT, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %79 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_warn(i32 %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %84

82:                                               ; preds = %73
  %83 = call i32 @usleep_range(i32 1000, i32 1001)
  br label %55

84:                                               ; preds = %77, %66
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %33, %14
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @analogix_dp_config_video_slave_mode(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_set_video_color_format(%struct.analogix_dp_device*) #1

declare dso_local i64 @analogix_dp_get_pll_lock_status(%struct.analogix_dp_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @analogix_dp_is_slave_video_stream_clock_on(%struct.analogix_dp_device*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @analogix_dp_set_video_cr_mn(%struct.analogix_dp_device*, i32, i32, i32) #1

declare dso_local i32 @analogix_dp_set_video_timing_mode(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @analogix_dp_enable_video_mute(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @analogix_dp_enable_video_master(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @analogix_dp_start_video(%struct.analogix_dp_device*) #1

declare dso_local i64 @analogix_dp_is_video_stream_on(%struct.analogix_dp_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
