; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jdi_panel = type { %struct.mipi_dsi_device* }
%struct.mipi_dsi_device = type { i32, %struct.device }
%struct.device = type { i32 }

@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to set display off: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to enter sleep mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jdi_panel*)* @jdi_panel_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jdi_panel_off(%struct.jdi_panel* %0) #0 {
  %2 = alloca %struct.jdi_panel*, align 8
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.jdi_panel* %0, %struct.jdi_panel** %2, align 8
  %6 = load %struct.jdi_panel*, %struct.jdi_panel** %2, align 8
  %7 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %6, i32 0, i32 0
  %8 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %7, align 8
  store %struct.mipi_dsi_device* %8, %struct.mipi_dsi_device** %3, align 8
  %9 = load %struct.jdi_panel*, %struct.jdi_panel** %2, align 8
  %10 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %9, i32 0, i32 0
  %11 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %10, align 8
  %12 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %16 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %20 = call i32 @mipi_dsi_dcs_set_display_off(%struct.mipi_dsi_device* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %29 = call i32 @mipi_dsi_dcs_enter_sleep_mode(%struct.mipi_dsi_device* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = call i32 @msleep(i32 100)
  ret void
}

declare dso_local i32 @mipi_dsi_dcs_set_display_off(%struct.mipi_dsi_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(%struct.mipi_dsi_device*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
