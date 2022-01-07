; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raspberrypi-touchscreen.c_rpi_touchscreen_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raspberrypi-touchscreen.c_rpi_touchscreen_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rpi_touchscreen = type { %struct.TYPE_2__, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32*, %struct.device* }
%struct.device_node = type { i32 }
%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_device_info = type { i32*, i32, i32 }

@RPI_DSI_DRIVER_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Atmel I2C read failed: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unknown Atmel firmware revision: 0x%02x\0A\00", align 1
@REG_POWERON = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"DSI device registration failed: %ld\0A\00", align 1
@rpi_touchscreen_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rpi_touchscreen_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_touchscreen_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.rpi_touchscreen*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.mipi_dsi_host*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mipi_dsi_device_info, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.mipi_dsi_device_info, %struct.mipi_dsi_device_info* %13, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_device_info, %struct.mipi_dsi_device_info* %13, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.mipi_dsi_device_info, %struct.mipi_dsi_device_info* %13, i32 0, i32 2
  %19 = load i32, i32* @RPI_DSI_DRIVER_NAME, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.rpi_touchscreen* @devm_kzalloc(%struct.device* %20, i32 32, i32 %21)
  store %struct.rpi_touchscreen* %22, %struct.rpi_touchscreen** %7, align 8
  %23 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %7, align 8
  %24 = icmp ne %struct.rpi_touchscreen* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %138

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %7, align 8
  %31 = call i32 @i2c_set_clientdata(%struct.i2c_client* %29, %struct.rpi_touchscreen* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %7, align 8
  %34 = getelementptr inbounds %struct.rpi_touchscreen, %struct.rpi_touchscreen* %33, i32 0, i32 2
  store %struct.i2c_client* %32, %struct.i2c_client** %34, align 8
  %35 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %7, align 8
  %36 = load i32, i32* @REG_ID, align 4
  %37 = call i32 @rpi_touchscreen_i2c_read(%struct.rpi_touchscreen* %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %138

46:                                               ; preds = %28
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %49 [
    i32 222, label %48
    i32 195, label %48
  ]

48:                                               ; preds = %46, %46
  br label %55

49:                                               ; preds = %46
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %138

55:                                               ; preds = %48
  %56 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %7, align 8
  %57 = load i32, i32* @REG_POWERON, align 4
  %58 = call i32 @rpi_touchscreen_i2c_write(%struct.rpi_touchscreen* %56, i32 %57, i32 0)
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.device_node* @of_graph_get_next_endpoint(i32 %61, i32* null)
  store %struct.device_node* %62, %struct.device_node** %8, align 8
  %63 = load %struct.device_node*, %struct.device_node** %8, align 8
  %64 = icmp ne %struct.device_node* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %138

68:                                               ; preds = %55
  %69 = load %struct.device_node*, %struct.device_node** %8, align 8
  %70 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %69)
  store %struct.device_node* %70, %struct.device_node** %9, align 8
  %71 = load %struct.device_node*, %struct.device_node** %9, align 8
  %72 = icmp ne %struct.device_node* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %133

74:                                               ; preds = %68
  %75 = load %struct.device_node*, %struct.device_node** %9, align 8
  %76 = call %struct.mipi_dsi_host* @of_find_mipi_dsi_host_by_node(%struct.device_node* %75)
  store %struct.mipi_dsi_host* %76, %struct.mipi_dsi_host** %10, align 8
  %77 = load %struct.device_node*, %struct.device_node** %9, align 8
  %78 = call i32 @of_node_put(%struct.device_node* %77)
  %79 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %10, align 8
  %80 = icmp ne %struct.mipi_dsi_host* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %74
  %82 = load %struct.device_node*, %struct.device_node** %8, align 8
  %83 = call i32 @of_node_put(%struct.device_node* %82)
  %84 = load i32, i32* @EPROBE_DEFER, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %138

86:                                               ; preds = %74
  %87 = load %struct.device_node*, %struct.device_node** %8, align 8
  %88 = call i32* @of_graph_get_remote_port(%struct.device_node* %87)
  %89 = getelementptr inbounds %struct.mipi_dsi_device_info, %struct.mipi_dsi_device_info* %13, i32 0, i32 0
  store i32* %88, i32** %89, align 8
  %90 = getelementptr inbounds %struct.mipi_dsi_device_info, %struct.mipi_dsi_device_info* %13, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %133

94:                                               ; preds = %86
  %95 = load %struct.device_node*, %struct.device_node** %8, align 8
  %96 = call i32 @of_node_put(%struct.device_node* %95)
  %97 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %10, align 8
  %98 = call i32 @mipi_dsi_device_register_full(%struct.mipi_dsi_host* %97, %struct.mipi_dsi_device_info* %13)
  %99 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %7, align 8
  %100 = getelementptr inbounds %struct.rpi_touchscreen, %struct.rpi_touchscreen* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %7, align 8
  %102 = getelementptr inbounds %struct.rpi_touchscreen, %struct.rpi_touchscreen* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @IS_ERR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %94
  %107 = load %struct.device*, %struct.device** %6, align 8
  %108 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %7, align 8
  %109 = getelementptr inbounds %struct.rpi_touchscreen, %struct.rpi_touchscreen* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @PTR_ERR(i32 %110)
  %112 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %7, align 8
  %114 = getelementptr inbounds %struct.rpi_touchscreen, %struct.rpi_touchscreen* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @PTR_ERR(i32 %115)
  store i32 %116, i32* %3, align 4
  br label %138

117:                                              ; preds = %94
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %7, align 8
  %120 = getelementptr inbounds %struct.rpi_touchscreen, %struct.rpi_touchscreen* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store %struct.device* %118, %struct.device** %121, align 8
  %122 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %7, align 8
  %123 = getelementptr inbounds %struct.rpi_touchscreen, %struct.rpi_touchscreen* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i32* @rpi_touchscreen_funcs, i32** %124, align 8
  %125 = load %struct.rpi_touchscreen*, %struct.rpi_touchscreen** %7, align 8
  %126 = getelementptr inbounds %struct.rpi_touchscreen, %struct.rpi_touchscreen* %125, i32 0, i32 0
  %127 = call i32 @drm_panel_add(%struct.TYPE_2__* %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %117
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %3, align 4
  br label %138

132:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %138

133:                                              ; preds = %93, %73
  %134 = load %struct.device_node*, %struct.device_node** %8, align 8
  %135 = call i32 @of_node_put(%struct.device_node* %134)
  %136 = load i32, i32* @ENODEV, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %133, %132, %130, %106, %81, %65, %49, %40, %25
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.rpi_touchscreen* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rpi_touchscreen*) #1

declare dso_local i32 @rpi_touchscreen_i2c_read(%struct.rpi_touchscreen*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @rpi_touchscreen_i2c_write(%struct.rpi_touchscreen*, i32, i32) #1

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(i32, i32*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #1

declare dso_local %struct.mipi_dsi_host* @of_find_mipi_dsi_host_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32* @of_graph_get_remote_port(%struct.device_node*) #1

declare dso_local i32 @mipi_dsi_device_register_full(%struct.mipi_dsi_host*, %struct.mipi_dsi_device_info*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
