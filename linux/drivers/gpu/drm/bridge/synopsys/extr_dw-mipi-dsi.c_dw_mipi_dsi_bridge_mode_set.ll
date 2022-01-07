; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_bridge_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_bridge_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.dw_mipi_dsi = type { %struct.dw_mipi_dsi* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @dw_mipi_dsi_bridge_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mipi_dsi_bridge_mode_set(%struct.drm_bridge* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.dw_mipi_dsi*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %8 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %9 = call %struct.dw_mipi_dsi* @bridge_to_dsi(%struct.drm_bridge* %8)
  store %struct.dw_mipi_dsi* %9, %struct.dw_mipi_dsi** %7, align 8
  %10 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %7, align 8
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %12 = call i32 @dw_mipi_dsi_mode_set(%struct.dw_mipi_dsi* %10, %struct.drm_display_mode* %11)
  %13 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %7, align 8
  %14 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %13, i32 0, i32 0
  %15 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %14, align 8
  %16 = icmp ne %struct.dw_mipi_dsi* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %7, align 8
  %19 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %18, i32 0, i32 0
  %20 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %19, align 8
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %22 = call i32 @dw_mipi_dsi_mode_set(%struct.dw_mipi_dsi* %20, %struct.drm_display_mode* %21)
  br label %23

23:                                               ; preds = %17, %3
  ret void
}

declare dso_local %struct.dw_mipi_dsi* @bridge_to_dsi(%struct.drm_bridge*) #1

declare dso_local i32 @dw_mipi_dsi_mode_set(%struct.dw_mipi_dsi*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
