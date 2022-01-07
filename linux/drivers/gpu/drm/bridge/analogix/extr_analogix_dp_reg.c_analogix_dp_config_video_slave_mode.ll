; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_config_video_slave_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_config_video_slave_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ANALOGIX_DP_FUNC_EN_1 = common dso_local global i64 0, align 8
@RK_VID_CAP_FUNC_EN_N = common dso_local global i32 0, align 4
@RK_VID_FIFO_FUNC_EN_N = common dso_local global i32 0, align 4
@MASTER_VID_FUNC_EN_N = common dso_local global i32 0, align 4
@SLAVE_VID_FUNC_EN_N = common dso_local global i32 0, align 4
@ANALOGIX_DP_VIDEO_CTL_10 = common dso_local global i64 0, align 8
@INTERACE_SCAN_CFG = common dso_local global i32 0, align 4
@VSYNC_POLARITY_CFG = common dso_local global i32 0, align 4
@HSYNC_POLARITY_CFG = common dso_local global i32 0, align 4
@AUDIO_MODE_SPDIF_MODE = common dso_local global i32 0, align 4
@VIDEO_MODE_SLAVE_MODE = common dso_local global i32 0, align 4
@ANALOGIX_DP_SOC_GENERAL_CTL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogix_dp_config_video_slave_mode(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca %struct.analogix_dp_device*, align 8
  %3 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %2, align 8
  %4 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %5 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ANALOGIX_DP_FUNC_EN_1, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %11 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %16 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @is_rockchip(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load i32, i32* @RK_VID_CAP_FUNC_EN_N, align 4
  %24 = load i32, i32* @RK_VID_FIFO_FUNC_EN_N, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %14, %1
  %30 = load i32, i32* @MASTER_VID_FUNC_EN_N, align 4
  %31 = load i32, i32* @SLAVE_VID_FUNC_EN_N, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @MASTER_VID_FUNC_EN_N, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %29, %22
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %42 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ANALOGIX_DP_FUNC_EN_1, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %48 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_10, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @INTERACE_SCAN_CFG, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %58 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 2
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %66 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_10, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  %71 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %72 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_10, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @readl(i64 %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* @VSYNC_POLARITY_CFG, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %3, align 4
  %81 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %82 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 1
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %90 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_10, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  %95 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %96 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_10, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @readl(i64 %99)
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* @HSYNC_POLARITY_CFG, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %3, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %3, align 4
  %105 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %106 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 %108, 0
  %110 = load i32, i32* %3, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %114 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_10, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %112, i64 %117)
  %119 = load i32, i32* @AUDIO_MODE_SPDIF_MODE, align 4
  %120 = load i32, i32* @VIDEO_MODE_SLAVE_MODE, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %3, align 4
  %123 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %124 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @ANALOGIX_DP_SOC_GENERAL_CTL, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel(i32 %122, i64 %127)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @is_rockchip(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
