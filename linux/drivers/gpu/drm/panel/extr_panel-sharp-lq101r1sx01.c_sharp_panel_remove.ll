; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32 }
%struct.sharp_panel = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to disable panel: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to detach from DSI host: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @sharp_panel_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_panel_remove(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.sharp_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %6 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %7 = call %struct.sharp_panel* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device* %6)
  store %struct.sharp_panel* %7, %struct.sharp_panel** %4, align 8
  %8 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %9 = icmp ne %struct.sharp_panel* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %12 = call i32 @mipi_dsi_detach(%struct.mipi_dsi_device* %11)
  store i32 0, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %15 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %14, i32 0, i32 0
  %16 = call i32 @sharp_panel_disable(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %21 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %26 = call i32 @mipi_dsi_detach(%struct.mipi_dsi_device* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %31 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %36 = call i32 @sharp_panel_del(%struct.sharp_panel* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.sharp_panel* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device*) #1

declare dso_local i32 @mipi_dsi_detach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @sharp_panel_disable(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @sharp_panel_del(%struct.sharp_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
