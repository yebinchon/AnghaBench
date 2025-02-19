; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_enable_psr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_enable_psr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, i32 }
%struct.dp_sdp = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@DP_PSR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to read psr status %d\0A\00", align 1
@DP_PSR_SINK_ACTIVE_RFB = common dso_local global i64 0, align 8
@EDP_VSC_PSR_STATE_ACTIVE = common dso_local global i32 0, align 4
@EDP_VSC_PSR_CRC_VALUES_VALID = common dso_local global i32 0, align 4
@POWER_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_enable_psr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_enable_psr(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca %struct.dp_sdp, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %7 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %8 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %7, i32 0, i32 1
  %9 = load i32, i32* @DP_PSR_STATUS, align 4
  %10 = call i32 @drm_dp_dpcd_readb(i32* %8, i32 %9, i64* %6)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %15 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @DRM_DEV_ERROR(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %25

19:                                               ; preds = %1
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @DP_PSR_SINK_ACTIVE_RFB, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %54

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %13
  %26 = call i32 @memset(%struct.dp_sdp* %4, i32 0, i32 32)
  %27 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %4, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %4, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 7, i32* %30, align 8
  %31 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 2, i32* %32, align 4
  %33 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 8, i32* %34, align 8
  %35 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %4, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @EDP_VSC_PSR_STATE_ACTIVE, align 4
  %39 = load i32, i32* @EDP_VSC_PSR_CRC_VALUES_VALID, align 4
  %40 = or i32 %38, %39
  %41 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %4, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %45 = call i32 @analogix_dp_send_psr_spd(%struct.analogix_dp_device* %44, %struct.dp_sdp* %4, i32 1)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %25
  %49 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %50 = load i32, i32* @POWER_ALL, align 4
  %51 = call i32 @analogix_dp_set_analog_power_down(%struct.analogix_dp_device* %49, i32 %50, i32 1)
  br label %52

52:                                               ; preds = %48, %25
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %23
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i64*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.dp_sdp*, i32, i32) #1

declare dso_local i32 @analogix_dp_send_psr_spd(%struct.analogix_dp_device*, %struct.dp_sdp*, i32) #1

declare dso_local i32 @analogix_dp_set_analog_power_down(%struct.analogix_dp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
