; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_enable_rx_to_enhanced_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_enable_rx_to_enhanced_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32 }

@DP_LANE_COUNT_SET = common dso_local global i32 0, align 4
@DP_LANE_COUNT_ENHANCED_FRAME_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*, i32)* @analogix_dp_enable_rx_to_enhanced_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_enable_rx_to_enhanced_mode(%struct.analogix_dp_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.analogix_dp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %9 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %8, i32 0, i32 0
  %10 = load i32, i32* @DP_LANE_COUNT_SET, align 4
  %11 = call i32 @drm_dp_dpcd_readb(i32* %9, i32 %10, i32* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %21 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %20, i32 0, i32 0
  %22 = load i32, i32* @DP_LANE_COUNT_SET, align 4
  %23 = load i32, i32* @DP_LANE_COUNT_ENHANCED_FRAME_EN, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DPCD_LANE_COUNT_SET(i32 %24)
  %26 = or i32 %23, %25
  %27 = call i32 @drm_dp_dpcd_writeb(i32* %21, i32 %22, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %35

28:                                               ; preds = %16
  %29 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %30 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %29, i32 0, i32 0
  %31 = load i32, i32* @DP_LANE_COUNT_SET, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @DPCD_LANE_COUNT_SET(i32 %32)
  %34 = call i32 @drm_dp_dpcd_writeb(i32* %30, i32 %31, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %28, %19
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  br label %41

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

declare dso_local i32 @DPCD_LANE_COUNT_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
