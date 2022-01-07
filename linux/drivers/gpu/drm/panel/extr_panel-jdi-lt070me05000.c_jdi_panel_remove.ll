; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32 }
%struct.jdi_panel = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to disable panel: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to detach from DSI host: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @jdi_panel_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jdi_panel_remove(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca %struct.mipi_dsi_device*, align 8
  %3 = alloca %struct.jdi_panel*, align 8
  %4 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %2, align 8
  %5 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %6 = call %struct.jdi_panel* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device* %5)
  store %struct.jdi_panel* %6, %struct.jdi_panel** %3, align 8
  %7 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %8 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %7, i32 0, i32 0
  %9 = call i32 @jdi_panel_disable(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %14 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %19 = call i32 @mipi_dsi_detach(%struct.mipi_dsi_device* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %24 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.jdi_panel*, %struct.jdi_panel** %3, align 8
  %29 = call i32 @jdi_panel_del(%struct.jdi_panel* %28)
  ret i32 0
}

declare dso_local %struct.jdi_panel* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device*) #1

declare dso_local i32 @jdi_panel_disable(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mipi_dsi_detach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @jdi_panel_del(%struct.jdi_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
