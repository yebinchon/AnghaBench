; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.tegra_output = type { i32 }
%struct.tegra_dc = type { i32 }
%struct.tegra_hdmi = type { i32, i64, i32 }

@DC_DISP_DISP_WIN_OPTIONS = common dso_local global i32 0, align 4
@HDMI_ENABLE = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_INT_ENABLE = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @tegra_hdmi_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_hdmi_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.tegra_output*, align 8
  %4 = alloca %struct.tegra_dc*, align 8
  %5 = alloca %struct.tegra_hdmi*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = call %struct.tegra_output* @encoder_to_output(%struct.drm_encoder* %7)
  store %struct.tegra_output* %8, %struct.tegra_output** %3, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.tegra_dc* @to_tegra_dc(i32 %11)
  store %struct.tegra_dc* %12, %struct.tegra_dc** %4, align 8
  %13 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %14 = call %struct.tegra_hdmi* @to_hdmi(%struct.tegra_output* %13)
  store %struct.tegra_hdmi* %14, %struct.tegra_hdmi** %5, align 8
  %15 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %16 = icmp ne %struct.tegra_dc* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %19 = load i32, i32* @DC_DISP_DISP_WIN_OPTIONS, align 4
  %20 = call i32 @tegra_dc_readl(%struct.tegra_dc* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @HDMI_ENABLE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @DC_DISP_DISP_WIN_OPTIONS, align 4
  %28 = call i32 @tegra_dc_writel(%struct.tegra_dc* %25, i32 %26, i32 %27)
  %29 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %30 = call i32 @tegra_dc_commit(%struct.tegra_dc* %29)
  br label %31

31:                                               ; preds = %17, %1
  %32 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %31
  %37 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %43 = call i32 @tegra_hdmi_disable_stereo_infoframe(%struct.tegra_hdmi* %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %46 = call i32 @tegra_hdmi_disable_audio_infoframe(%struct.tegra_hdmi* %45)
  %47 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %48 = call i32 @tegra_hdmi_disable_avi_infoframe(%struct.tegra_hdmi* %47)
  %49 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %50 = call i32 @tegra_hdmi_disable_audio(%struct.tegra_hdmi* %49)
  br label %51

51:                                               ; preds = %44, %31
  %52 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %53 = load i32, i32* @HDMI_NV_PDISP_INT_ENABLE, align 4
  %54 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %52, i32 0, i32 %53)
  %55 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %56 = load i32, i32* @HDMI_NV_PDISP_INT_MASK, align 4
  %57 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %55, i32 0, i32 %56)
  %58 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %59 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pm_runtime_put(i32 %60)
  ret void
}

declare dso_local %struct.tegra_output* @encoder_to_output(%struct.drm_encoder*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(i32) #1

declare dso_local %struct.tegra_hdmi* @to_hdmi(%struct.tegra_output*) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i32) #1

declare dso_local i32 @tegra_dc_writel(%struct.tegra_dc*, i32, i32) #1

declare dso_local i32 @tegra_dc_commit(%struct.tegra_dc*) #1

declare dso_local i32 @tegra_hdmi_disable_stereo_infoframe(%struct.tegra_hdmi*) #1

declare dso_local i32 @tegra_hdmi_disable_audio_infoframe(%struct.tegra_hdmi*) #1

declare dso_local i32 @tegra_hdmi_disable_avi_infoframe(%struct.tegra_hdmi*) #1

declare dso_local i32 @tegra_hdmi_disable_audio(%struct.tegra_hdmi*) #1

declare dso_local i32 @tegra_hdmi_writel(%struct.tegra_hdmi*, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
