; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sharp_panel = type { %struct.mipi_dsi_device*, %struct.mipi_dsi_device* }
%struct.device_node = type { i32 }

@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"link2\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @sharp_panel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_panel_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca %struct.sharp_panel*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  store %struct.mipi_dsi_device* null, %struct.mipi_dsi_device** %4, align 8
  %8 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %9 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %8, i32 0, i32 0
  store i32 4, i32* %9, align 4
  %10 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %11 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %14 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %15 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.device_node* @of_parse_phandle(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %20, %struct.device_node** %6, align 8
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call %struct.mipi_dsi_device* @of_find_mipi_dsi_device_by_node(%struct.device_node* %24)
  store %struct.mipi_dsi_device* %25, %struct.mipi_dsi_device** %4, align 8
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  %28 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %29 = icmp ne %struct.mipi_dsi_device* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EPROBE_DEFER, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %84

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %36 = icmp ne %struct.mipi_dsi_device* %35, null
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %39 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %38, i32 0, i32 1
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.sharp_panel* @devm_kzalloc(%struct.TYPE_3__* %39, i32 16, i32 %40)
  store %struct.sharp_panel* %41, %struct.sharp_panel** %5, align 8
  %42 = load %struct.sharp_panel*, %struct.sharp_panel** %5, align 8
  %43 = icmp ne %struct.sharp_panel* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %46 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %45, i32 0, i32 1
  %47 = call i32 @put_device(%struct.TYPE_3__* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %84

50:                                               ; preds = %37
  %51 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %52 = load %struct.sharp_panel*, %struct.sharp_panel** %5, align 8
  %53 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %51, %struct.sharp_panel* %52)
  %54 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %55 = load %struct.sharp_panel*, %struct.sharp_panel** %5, align 8
  %56 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %55, i32 0, i32 1
  store %struct.mipi_dsi_device* %54, %struct.mipi_dsi_device** %56, align 8
  %57 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %58 = load %struct.sharp_panel*, %struct.sharp_panel** %5, align 8
  %59 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %58, i32 0, i32 0
  store %struct.mipi_dsi_device* %57, %struct.mipi_dsi_device** %59, align 8
  %60 = load %struct.sharp_panel*, %struct.sharp_panel** %5, align 8
  %61 = call i32 @sharp_panel_add(%struct.sharp_panel* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %66 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %65, i32 0, i32 1
  %67 = call i32 @put_device(%struct.TYPE_3__* %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %84

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %34
  %71 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %72 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %77 = icmp ne %struct.mipi_dsi_device* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.sharp_panel*, %struct.sharp_panel** %5, align 8
  %80 = call i32 @sharp_panel_del(%struct.sharp_panel* %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %84

83:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %81, %64, %44, %30
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.mipi_dsi_device* @of_find_mipi_dsi_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.sharp_panel* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_3__*) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.sharp_panel*) #1

declare dso_local i32 @sharp_panel_add(%struct.sharp_panel*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @sharp_panel_del(%struct.sharp_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
