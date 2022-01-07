; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls043t1le01.c_sharp_nt_panel_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls043t1le01.c_sharp_nt_panel_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sharp_nt_panel = type { %struct.mipi_dsi_device* }
%struct.mipi_dsi_device = type { i32 }

@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sharp_nt_panel*)* @sharp_nt_panel_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_nt_panel_on(%struct.sharp_nt_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sharp_nt_panel*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.sharp_nt_panel* %0, %struct.sharp_nt_panel** %3, align 8
  %6 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %7 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %6, i32 0, i32 0
  %8 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %7, align 8
  store %struct.mipi_dsi_device* %8, %struct.mipi_dsi_device** %4, align 8
  %9 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %10 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %11 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %15 = call i32 @mipi_dsi_dcs_set_display_on(%struct.mipi_dsi_device* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @mipi_dsi_dcs_set_display_on(%struct.mipi_dsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
