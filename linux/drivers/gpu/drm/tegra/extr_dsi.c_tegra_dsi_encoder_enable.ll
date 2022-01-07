; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.tegra_output = type { i64 }
%struct.tegra_dc = type { i32 }
%struct.tegra_dsi = type { i32 }
%struct.tegra_dsi_state = type { i32, i32, i32, i32 }

@DC_DISP_DISP_WIN_OPTIONS = common dso_local global i32 0, align 4
@DSI_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @tegra_dsi_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dsi_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.tegra_output*, align 8
  %5 = alloca %struct.tegra_dc*, align 8
  %6 = alloca %struct.tegra_dsi*, align 8
  %7 = alloca %struct.tegra_dsi_state*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.drm_display_mode* %14, %struct.drm_display_mode** %3, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = call %struct.tegra_output* @encoder_to_output(%struct.drm_encoder* %15)
  store %struct.tegra_output* %16, %struct.tegra_output** %4, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %18 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call %struct.tegra_dc* @to_tegra_dc(%struct.TYPE_4__* %19)
  store %struct.tegra_dc* %20, %struct.tegra_dc** %5, align 8
  %21 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %22 = call %struct.tegra_dsi* @to_dsi(%struct.tegra_output* %21)
  store %struct.tegra_dsi* %22, %struct.tegra_dsi** %6, align 8
  %23 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %24 = call i32 @tegra_dsi_prepare(%struct.tegra_dsi* %23)
  %25 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %26 = call %struct.tegra_dsi_state* @tegra_dsi_get_state(%struct.tegra_dsi* %25)
  store %struct.tegra_dsi_state* %26, %struct.tegra_dsi_state** %7, align 8
  %27 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %28 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %7, align 8
  %29 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %7, align 8
  %32 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @tegra_dsi_set_timeout(%struct.tegra_dsi* %27, i32 %30, i32 %33)
  %35 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %36 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %7, align 8
  %37 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 8
  %40 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %7, align 8
  %41 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %40, i32 0, i32 1
  %42 = call i32 @tegra_dsi_set_phy_timing(%struct.tegra_dsi* %35, i32 %39, i32* %41)
  %43 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %44 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %1
  %48 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %49 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @drm_panel_prepare(i64 %50)
  br label %52

52:                                               ; preds = %47, %1
  %53 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %54 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %55 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %58 = call i32 @tegra_dsi_configure(%struct.tegra_dsi* %53, i32 %56, %struct.drm_display_mode* %57)
  %59 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %60 = load i32, i32* @DC_DISP_DISP_WIN_OPTIONS, align 4
  %61 = call i32 @tegra_dc_readl(%struct.tegra_dc* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @DSI_ENABLE, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @DC_DISP_DISP_WIN_OPTIONS, align 4
  %68 = call i32 @tegra_dc_writel(%struct.tegra_dc* %65, i32 %66, i32 %67)
  %69 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %70 = call i32 @tegra_dc_commit(%struct.tegra_dc* %69)
  %71 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %72 = call i32 @tegra_dsi_enable(%struct.tegra_dsi* %71)
  %73 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %74 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %52
  %78 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %79 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @drm_panel_enable(i64 %80)
  br label %82

82:                                               ; preds = %77, %52
  ret void
}

declare dso_local %struct.tegra_output* @encoder_to_output(%struct.drm_encoder*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(%struct.TYPE_4__*) #1

declare dso_local %struct.tegra_dsi* @to_dsi(%struct.tegra_output*) #1

declare dso_local i32 @tegra_dsi_prepare(%struct.tegra_dsi*) #1

declare dso_local %struct.tegra_dsi_state* @tegra_dsi_get_state(%struct.tegra_dsi*) #1

declare dso_local i32 @tegra_dsi_set_timeout(%struct.tegra_dsi*, i32, i32) #1

declare dso_local i32 @tegra_dsi_set_phy_timing(%struct.tegra_dsi*, i32, i32*) #1

declare dso_local i32 @drm_panel_prepare(i64) #1

declare dso_local i32 @tegra_dsi_configure(%struct.tegra_dsi*, i32, %struct.drm_display_mode*) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i32) #1

declare dso_local i32 @tegra_dc_writel(%struct.tegra_dc*, i32, i32) #1

declare dso_local i32 @tegra_dc_commit(%struct.tegra_dc*) #1

declare dso_local i32 @tegra_dsi_enable(%struct.tegra_dsi*) #1

declare dso_local i32 @drm_panel_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
