; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mipi_dsi = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, %struct.dw_mipi_dsi_phy_ops* }
%struct.dw_mipi_dsi_phy_ops = type { i32 (i8*, %struct.drm_display_mode*, i32, i32, i32, i32*)*, i32 (i8*)* }
%struct.drm_display_mode = type opaque
%struct.drm_display_mode.0 = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Phy get_lane_mbps() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Phy init() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mipi_dsi*, %struct.drm_display_mode.0*)* @dw_mipi_dsi_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mipi_dsi_mode_set(%struct.dw_mipi_dsi* %0, %struct.drm_display_mode.0* %1) #0 {
  %3 = alloca %struct.dw_mipi_dsi*, align 8
  %4 = alloca %struct.drm_display_mode.0*, align 8
  %5 = alloca %struct.dw_mipi_dsi_phy_ops*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dw_mipi_dsi* %0, %struct.dw_mipi_dsi** %3, align 8
  store %struct.drm_display_mode.0* %1, %struct.drm_display_mode.0** %4, align 8
  %9 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %10 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %9, i32 0, i32 5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.dw_mipi_dsi_phy_ops*, %struct.dw_mipi_dsi_phy_ops** %12, align 8
  store %struct.dw_mipi_dsi_phy_ops* %13, %struct.dw_mipi_dsi_phy_ops** %5, align 8
  %14 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %15 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %14, i32 0, i32 5
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %20 = call i32 @dw_mipi_dsi_get_lanes(%struct.dw_mipi_dsi* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %22 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_prepare_enable(i32 %23)
  %25 = load %struct.dw_mipi_dsi_phy_ops*, %struct.dw_mipi_dsi_phy_ops** %5, align 8
  %26 = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, %struct.dw_mipi_dsi_phy_ops* %25, i32 0, i32 0
  %27 = load i32 (i8*, %struct.drm_display_mode*, i32, i32, i32, i32*)*, i32 (i8*, %struct.drm_display_mode*, i32, i32, i32, i32*)** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.drm_display_mode.0*, %struct.drm_display_mode.0** %4, align 8
  %30 = bitcast %struct.drm_display_mode.0* %29 to %struct.drm_display_mode*
  %31 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %32 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %36 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %39 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %38, i32 0, i32 1
  %40 = call i32 %27(i8* %28, %struct.drm_display_mode* %30, i32 %33, i32 %34, i32 %37, i32* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %2
  %46 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %47 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pm_runtime_get_sync(i32 %48)
  %50 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %51 = call i32 @dw_mipi_dsi_init(%struct.dw_mipi_dsi* %50)
  %52 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %53 = load %struct.drm_display_mode.0*, %struct.drm_display_mode.0** %4, align 8
  %54 = call i32 @dw_mipi_dsi_dpi_config(%struct.dw_mipi_dsi* %52, %struct.drm_display_mode.0* %53)
  %55 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %56 = call i32 @dw_mipi_dsi_packet_handler_config(%struct.dw_mipi_dsi* %55)
  %57 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %58 = call i32 @dw_mipi_dsi_video_mode_config(%struct.dw_mipi_dsi* %57)
  %59 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %60 = load %struct.drm_display_mode.0*, %struct.drm_display_mode.0** %4, align 8
  %61 = call i32 @dw_mipi_dsi_video_packet_config(%struct.dw_mipi_dsi* %59, %struct.drm_display_mode.0* %60)
  %62 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %63 = call i32 @dw_mipi_dsi_command_mode_config(%struct.dw_mipi_dsi* %62)
  %64 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %65 = load %struct.drm_display_mode.0*, %struct.drm_display_mode.0** %4, align 8
  %66 = call i32 @dw_mipi_dsi_line_timer_config(%struct.dw_mipi_dsi* %64, %struct.drm_display_mode.0* %65)
  %67 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %68 = load %struct.drm_display_mode.0*, %struct.drm_display_mode.0** %4, align 8
  %69 = call i32 @dw_mipi_dsi_vertical_timing_config(%struct.dw_mipi_dsi* %67, %struct.drm_display_mode.0* %68)
  %70 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %71 = call i32 @dw_mipi_dsi_dphy_init(%struct.dw_mipi_dsi* %70)
  %72 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %73 = call i32 @dw_mipi_dsi_dphy_timing_config(%struct.dw_mipi_dsi* %72)
  %74 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %75 = call i32 @dw_mipi_dsi_dphy_interface_config(%struct.dw_mipi_dsi* %74)
  %76 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %77 = call i32 @dw_mipi_dsi_clear_err(%struct.dw_mipi_dsi* %76)
  %78 = load %struct.dw_mipi_dsi_phy_ops*, %struct.dw_mipi_dsi_phy_ops** %5, align 8
  %79 = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, %struct.dw_mipi_dsi_phy_ops* %78, i32 0, i32 1
  %80 = load i32 (i8*)*, i32 (i8*)** %79, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 %80(i8* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %45
  %86 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %45
  %88 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %89 = call i32 @dw_mipi_dsi_dphy_enable(%struct.dw_mipi_dsi* %88)
  %90 = load %struct.drm_display_mode.0*, %struct.drm_display_mode.0** %4, align 8
  %91 = call i32 @dw_mipi_dsi_wait_for_two_frames(%struct.drm_display_mode.0* %90)
  %92 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %93 = call i32 @dw_mipi_dsi_set_mode(%struct.dw_mipi_dsi* %92, i32 0)
  ret void
}

declare dso_local i32 @dw_mipi_dsi_get_lanes(%struct.dw_mipi_dsi*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dw_mipi_dsi_init(%struct.dw_mipi_dsi*) #1

declare dso_local i32 @dw_mipi_dsi_dpi_config(%struct.dw_mipi_dsi*, %struct.drm_display_mode.0*) #1

declare dso_local i32 @dw_mipi_dsi_packet_handler_config(%struct.dw_mipi_dsi*) #1

declare dso_local i32 @dw_mipi_dsi_video_mode_config(%struct.dw_mipi_dsi*) #1

declare dso_local i32 @dw_mipi_dsi_video_packet_config(%struct.dw_mipi_dsi*, %struct.drm_display_mode.0*) #1

declare dso_local i32 @dw_mipi_dsi_command_mode_config(%struct.dw_mipi_dsi*) #1

declare dso_local i32 @dw_mipi_dsi_line_timer_config(%struct.dw_mipi_dsi*, %struct.drm_display_mode.0*) #1

declare dso_local i32 @dw_mipi_dsi_vertical_timing_config(%struct.dw_mipi_dsi*, %struct.drm_display_mode.0*) #1

declare dso_local i32 @dw_mipi_dsi_dphy_init(%struct.dw_mipi_dsi*) #1

declare dso_local i32 @dw_mipi_dsi_dphy_timing_config(%struct.dw_mipi_dsi*) #1

declare dso_local i32 @dw_mipi_dsi_dphy_interface_config(%struct.dw_mipi_dsi*) #1

declare dso_local i32 @dw_mipi_dsi_clear_err(%struct.dw_mipi_dsi*) #1

declare dso_local i32 @dw_mipi_dsi_dphy_enable(%struct.dw_mipi_dsi*) #1

declare dso_local i32 @dw_mipi_dsi_wait_for_two_frames(%struct.drm_display_mode.0*) #1

declare dso_local i32 @dw_mipi_dsi_set_mode(%struct.dw_mipi_dsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
