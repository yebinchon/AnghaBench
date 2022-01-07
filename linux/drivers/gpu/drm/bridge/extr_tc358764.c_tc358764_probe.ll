; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.tc358764 = type { %struct.TYPE_3__, %struct.device* }
%struct.TYPE_3__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_AUTO_VERT = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@tc358764_bridge_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to attach dsi\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @tc358764_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc358764_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tc358764*, align 8
  %6 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %7 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %7, i32 0, i32 3
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.tc358764* @devm_kzalloc(%struct.device* %9, i32 24, i32 %10)
  store %struct.tc358764* %11, %struct.tc358764** %5, align 8
  %12 = load %struct.tc358764*, %struct.tc358764** %5, align 8
  %13 = icmp ne %struct.tc358764* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %76

17:                                               ; preds = %1
  %18 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %19 = load %struct.tc358764*, %struct.tc358764** %5, align 8
  %20 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %18, %struct.tc358764* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.tc358764*, %struct.tc358764** %5, align 8
  %23 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %22, i32 0, i32 1
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %25 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %24, i32 0, i32 0
  store i32 4, i32* %25, align 4
  %26 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %27 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %28 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %30 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MIPI_DSI_MODE_VIDEO_AUTO_VERT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.tc358764*, %struct.tc358764** %5, align 8
  %39 = call i32 @tc358764_parse_dt(%struct.tc358764* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %17
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %76

44:                                               ; preds = %17
  %45 = load %struct.tc358764*, %struct.tc358764** %5, align 8
  %46 = call i32 @tc358764_configure_regulators(%struct.tc358764* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %76

51:                                               ; preds = %44
  %52 = load %struct.tc358764*, %struct.tc358764** %5, align 8
  %53 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32* @tc358764_bridge_funcs, i32** %54, align 8
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tc358764*, %struct.tc358764** %5, align 8
  %59 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.tc358764*, %struct.tc358764** %5, align 8
  %62 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %61, i32 0, i32 0
  %63 = call i32 @drm_bridge_add(%struct.TYPE_3__* %62)
  %64 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %65 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %51
  %69 = load %struct.tc358764*, %struct.tc358764** %5, align 8
  %70 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %69, i32 0, i32 0
  %71 = call i32 @drm_bridge_remove(%struct.TYPE_3__* %70)
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %68, %51
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %49, %42, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.tc358764* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.tc358764*) #1

declare dso_local i32 @tc358764_parse_dt(%struct.tc358764*) #1

declare dso_local i32 @tc358764_configure_regulators(%struct.tc358764*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_3__*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @drm_bridge_remove(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
