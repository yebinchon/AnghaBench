; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.tegra_output = type { i64 }
%struct.tegra_dc = type { i32 }
%struct.tegra_dsi = type { i32 }

@DC_DISP_DISP_WIN_OPTIONS = common dso_local global i32 0, align 4
@DSI_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to idle DSI: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @tegra_dsi_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dsi_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.tegra_output*, align 8
  %4 = alloca %struct.tegra_dc*, align 8
  %5 = alloca %struct.tegra_dsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = call %struct.tegra_output* @encoder_to_output(%struct.drm_encoder* %8)
  store %struct.tegra_output* %9, %struct.tegra_output** %3, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.tegra_dc* @to_tegra_dc(i32 %12)
  store %struct.tegra_dc* %13, %struct.tegra_dc** %4, align 8
  %14 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %15 = call %struct.tegra_dsi* @to_dsi(%struct.tegra_output* %14)
  store %struct.tegra_dsi* %15, %struct.tegra_dsi** %5, align 8
  %16 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @drm_panel_disable(i64 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %27 = call i32 @tegra_dsi_video_disable(%struct.tegra_dsi* %26)
  %28 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %29 = icmp ne %struct.tegra_dc* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %32 = load i32, i32* @DC_DISP_DISP_WIN_OPTIONS, align 4
  %33 = call i32 @tegra_dc_readl(%struct.tegra_dc* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @DSI_ENABLE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @DC_DISP_DISP_WIN_OPTIONS, align 4
  %41 = call i32 @tegra_dc_writel(%struct.tegra_dc* %38, i32 %39, i32 %40)
  %42 = load %struct.tegra_dc*, %struct.tegra_dc** %4, align 8
  %43 = call i32 @tegra_dc_commit(%struct.tegra_dc* %42)
  br label %44

44:                                               ; preds = %30, %25
  %45 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %46 = call i32 @tegra_dsi_wait_idle(%struct.tegra_dsi* %45, i32 100)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %51 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %57 = call i32 @tegra_dsi_soft_reset(%struct.tegra_dsi* %56)
  %58 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %59 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %64 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @drm_panel_unprepare(i64 %65)
  br label %67

67:                                               ; preds = %62, %55
  %68 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %69 = call i32 @tegra_dsi_disable(%struct.tegra_dsi* %68)
  %70 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %71 = call i32 @tegra_dsi_unprepare(%struct.tegra_dsi* %70)
  ret void
}

declare dso_local %struct.tegra_output* @encoder_to_output(%struct.drm_encoder*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(i32) #1

declare dso_local %struct.tegra_dsi* @to_dsi(%struct.tegra_output*) #1

declare dso_local i32 @drm_panel_disable(i64) #1

declare dso_local i32 @tegra_dsi_video_disable(%struct.tegra_dsi*) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i32) #1

declare dso_local i32 @tegra_dc_writel(%struct.tegra_dc*, i32, i32) #1

declare dso_local i32 @tegra_dc_commit(%struct.tegra_dc*) #1

declare dso_local i32 @tegra_dsi_wait_idle(%struct.tegra_dsi*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @tegra_dsi_soft_reset(%struct.tegra_dsi*) #1

declare dso_local i32 @drm_panel_unprepare(i64) #1

declare dso_local i32 @tegra_dsi_disable(%struct.tegra_dsi*) #1

declare dso_local i32 @tegra_dsi_unprepare(%struct.tegra_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
