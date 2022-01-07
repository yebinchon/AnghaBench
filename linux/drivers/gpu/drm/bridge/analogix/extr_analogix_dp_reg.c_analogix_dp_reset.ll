; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RK_VID_CAP_FUNC_EN_N = common dso_local global i32 0, align 4
@RK_VID_FIFO_FUNC_EN_N = common dso_local global i32 0, align 4
@SW_FUNC_EN_N = common dso_local global i32 0, align 4
@MASTER_VID_FUNC_EN_N = common dso_local global i32 0, align 4
@SLAVE_VID_FUNC_EN_N = common dso_local global i32 0, align 4
@AUD_FIFO_FUNC_EN_N = common dso_local global i32 0, align 4
@AUD_FUNC_EN_N = common dso_local global i32 0, align 4
@HDCP_FUNC_EN_N = common dso_local global i32 0, align 4
@ANALOGIX_DP_FUNC_EN_1 = common dso_local global i64 0, align 8
@SSC_FUNC_EN_N = common dso_local global i32 0, align 4
@AUX_FUNC_EN_N = common dso_local global i32 0, align 4
@SERDES_FIFO_FUNC_EN_N = common dso_local global i32 0, align 4
@LS_CLK_DOMAIN_FUNC_EN_N = common dso_local global i32 0, align 4
@ANALOGIX_DP_FUNC_EN_2 = common dso_local global i64 0, align 8
@ANALOGIX_DP_SYS_CTL_1 = common dso_local global i64 0, align 8
@ANALOGIX_DP_SYS_CTL_2 = common dso_local global i64 0, align 8
@ANALOGIX_DP_SYS_CTL_3 = common dso_local global i64 0, align 8
@ANALOGIX_DP_SYS_CTL_4 = common dso_local global i64 0, align 8
@ANALOGIX_DP_PKT_SEND_CTL = common dso_local global i64 0, align 8
@ANALOGIX_DP_HDCP_CTL = common dso_local global i64 0, align 8
@ANALOGIX_DP_HPD_DEGLITCH_L = common dso_local global i64 0, align 8
@ANALOGIX_DP_HPD_DEGLITCH_H = common dso_local global i64 0, align 8
@ANALOGIX_DP_LINK_DEBUG_CTL = common dso_local global i64 0, align 8
@ANALOGIX_DP_PHY_TEST = common dso_local global i64 0, align 8
@ANALOGIX_DP_VIDEO_FIFO_THRD = common dso_local global i64 0, align 8
@ANALOGIX_DP_AUDIO_MARGIN = common dso_local global i64 0, align 8
@ANALOGIX_DP_M_VID_GEN_FILTER_TH = common dso_local global i64 0, align 8
@ANALOGIX_DP_M_AUD_GEN_FILTER_TH = common dso_local global i64 0, align 8
@ANALOGIX_DP_SOC_GENERAL_CTL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogix_dp_reset(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca %struct.analogix_dp_device*, align 8
  %3 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %2, align 8
  %4 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %5 = call i32 @analogix_dp_stop_video(%struct.analogix_dp_device* %4)
  %6 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %7 = call i32 @analogix_dp_enable_video_mute(%struct.analogix_dp_device* %6, i32 0)
  %8 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %9 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %14 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @is_rockchip(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i32, i32* @RK_VID_CAP_FUNC_EN_N, align 4
  %22 = load i32, i32* @RK_VID_FIFO_FUNC_EN_N, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SW_FUNC_EN_N, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %12, %1
  %27 = load i32, i32* @MASTER_VID_FUNC_EN_N, align 4
  %28 = load i32, i32* @SLAVE_VID_FUNC_EN_N, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AUD_FIFO_FUNC_EN_N, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @AUD_FUNC_EN_N, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @HDCP_FUNC_EN_N, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SW_FUNC_EN_N, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %26, %20
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %41 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ANALOGIX_DP_FUNC_EN_1, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load i32, i32* @SSC_FUNC_EN_N, align 4
  %47 = load i32, i32* @AUX_FUNC_EN_N, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SERDES_FIFO_FUNC_EN_N, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @LS_CLK_DOMAIN_FUNC_EN_N, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %55 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ANALOGIX_DP_FUNC_EN_2, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = call i32 @usleep_range(i32 20, i32 30)
  %61 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %62 = call i32 @analogix_dp_lane_swap(%struct.analogix_dp_device* %61, i32 0)
  %63 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %64 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ANALOGIX_DP_SYS_CTL_1, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 0, i64 %67)
  %69 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %70 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ANALOGIX_DP_SYS_CTL_2, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 64, i64 %73)
  %75 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %76 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ANALOGIX_DP_SYS_CTL_3, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 0, i64 %79)
  %81 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %82 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ANALOGIX_DP_SYS_CTL_4, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 0, i64 %85)
  %87 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %88 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ANALOGIX_DP_PKT_SEND_CTL, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 0, i64 %91)
  %93 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %94 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ANALOGIX_DP_HDCP_CTL, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 0, i64 %97)
  %99 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %100 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ANALOGIX_DP_HPD_DEGLITCH_L, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 94, i64 %103)
  %105 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %106 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ANALOGIX_DP_HPD_DEGLITCH_H, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 26, i64 %109)
  %111 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %112 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ANALOGIX_DP_LINK_DEBUG_CTL, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 16, i64 %115)
  %117 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %118 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ANALOGIX_DP_PHY_TEST, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 0, i64 %121)
  %123 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %124 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @ANALOGIX_DP_VIDEO_FIFO_THRD, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel(i32 0, i64 %127)
  %129 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %130 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ANALOGIX_DP_AUDIO_MARGIN, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel(i32 32, i64 %133)
  %135 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %136 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ANALOGIX_DP_M_VID_GEN_FILTER_TH, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel(i32 4, i64 %139)
  %141 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %142 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @ANALOGIX_DP_M_AUD_GEN_FILTER_TH, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @writel(i32 2, i64 %145)
  %147 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %148 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ANALOGIX_DP_SOC_GENERAL_CTL, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @writel(i32 257, i64 %151)
  ret void
}

declare dso_local i32 @analogix_dp_stop_video(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_enable_video_mute(%struct.analogix_dp_device*, i32) #1

declare dso_local i64 @is_rockchip(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @analogix_dp_lane_swap(%struct.analogix_dp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
