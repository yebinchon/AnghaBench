; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_disable_psr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_disable_psr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, i32 }
%struct.dp_sdp = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@POWER_ALL = common dso_local global i32 0, align 4
@DP_SET_POWER = common dso_local global i32 0, align 4
@DP_SET_POWER_D0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to set DP Power0 %d\0A\00", align 1
@DP_PSR_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to read psr status %d\0A\00", align 1
@DP_PSR_SINK_INACTIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"sink inactive, skip disable psr\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to train the link %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_disable_psr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_disable_psr(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca %struct.dp_sdp, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %7 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %8 = load i32, i32* @POWER_ALL, align 4
  %9 = call i32 @analogix_dp_set_analog_power_down(%struct.analogix_dp_device* %7, i32 %8, i32 0)
  %10 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %11 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %10, i32 0, i32 1
  %12 = load i32, i32* @DP_SET_POWER, align 4
  %13 = load i32, i32* @DP_SET_POWER_D0, align 4
  %14 = call i32 @drm_dp_dpcd_writeb(i32* %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %19 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %78

24:                                               ; preds = %1
  %25 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %26 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %25, i32 0, i32 1
  %27 = load i32, i32* @DP_PSR_STATUS, align 4
  %28 = call i32 @drm_dp_dpcd_readb(i32* %26, i32 %27, i64* %6)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %33 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %78

38:                                               ; preds = %24
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @DP_PSR_SINK_INACTIVE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %44 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %78

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %50 = call i32 @analogix_dp_train_link(%struct.analogix_dp_device* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %55 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %78

60:                                               ; preds = %48
  %61 = call i32 @memset(%struct.dp_sdp* %4, i32 0, i32 32)
  %62 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %4, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %4, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 7, i32* %65, align 8
  %66 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %4, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 2, i32* %67, align 4
  %68 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %4, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 8, i32* %69, align 8
  %70 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %4, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %4, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %77 = call i32 @analogix_dp_send_psr_spd(%struct.analogix_dp_device* %76, %struct.dp_sdp* %4, i32 1)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %60, %53, %42, %31, %17
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @analogix_dp_set_analog_power_down(%struct.analogix_dp_device*, i32, i32) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i64*) #1

declare dso_local i32 @analogix_dp_train_link(%struct.analogix_dp_device*) #1

declare dso_local i32 @memset(%struct.dp_sdp*, i32, i32) #1

declare dso_local i32 @analogix_dp_send_psr_spd(%struct.analogix_dp_device*, %struct.dp_sdp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
