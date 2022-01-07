; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_lvds-encoder.c_lvds_encoder_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_lvds-encoder.c_lvds_encoder_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.drm_panel = type { i32 }
%struct.lvds_encoder = type { %struct.TYPE_2__, %struct.drm_panel*, %struct.drm_panel* }
%struct.TYPE_2__ = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"powerdown GPIO failure: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"port 1 not found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"no endpoint for port 1\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"no remote endpoint for port 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"panel not found, deferring probe\0A\00", align 1
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lvds_encoder_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lvds_encoder_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.drm_panel*, align 8
  %9 = alloca %struct.lvds_encoder*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.lvds_encoder* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  store %struct.lvds_encoder* %15, %struct.lvds_encoder** %9, align 8
  %16 = load %struct.lvds_encoder*, %struct.lvds_encoder** %9, align 8
  %17 = icmp ne %struct.lvds_encoder* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %129

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %24 = call %struct.drm_panel* @devm_gpiod_get_optional(%struct.device* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.lvds_encoder*, %struct.lvds_encoder** %9, align 8
  %26 = getelementptr inbounds %struct.lvds_encoder, %struct.lvds_encoder* %25, i32 0, i32 2
  store %struct.drm_panel* %24, %struct.drm_panel** %26, align 8
  %27 = load %struct.lvds_encoder*, %struct.lvds_encoder** %9, align 8
  %28 = getelementptr inbounds %struct.lvds_encoder, %struct.lvds_encoder* %27, i32 0, i32 2
  %29 = load %struct.drm_panel*, %struct.drm_panel** %28, align 8
  %30 = call i64 @IS_ERR(%struct.drm_panel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %21
  %33 = load %struct.lvds_encoder*, %struct.lvds_encoder** %9, align 8
  %34 = getelementptr inbounds %struct.lvds_encoder, %struct.lvds_encoder* %33, i32 0, i32 2
  %35 = load %struct.drm_panel*, %struct.drm_panel** %34, align 8
  %36 = call i32 @PTR_ERR(%struct.drm_panel* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @EPROBE_DEFER, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %2, align 4
  br label %129

47:                                               ; preds = %21
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.device_node* @of_graph_get_port_by_id(i32 %50, i32 1)
  store %struct.device_node* %51, %struct.device_node** %5, align 8
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  %53 = icmp ne %struct.device_node* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 @dev_dbg(%struct.device* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @ENXIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %129

59:                                               ; preds = %47
  %60 = load %struct.device_node*, %struct.device_node** %5, align 8
  %61 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store %struct.device_node* %61, %struct.device_node** %6, align 8
  %62 = load %struct.device_node*, %struct.device_node** %5, align 8
  %63 = call i32 @of_node_put(%struct.device_node* %62)
  %64 = load %struct.device_node*, %struct.device_node** %6, align 8
  %65 = icmp ne %struct.device_node* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 @dev_dbg(%struct.device* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* @ENXIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %129

71:                                               ; preds = %59
  %72 = load %struct.device_node*, %struct.device_node** %6, align 8
  %73 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %72)
  store %struct.device_node* %73, %struct.device_node** %7, align 8
  %74 = load %struct.device_node*, %struct.device_node** %6, align 8
  %75 = call i32 @of_node_put(%struct.device_node* %74)
  %76 = load %struct.device_node*, %struct.device_node** %7, align 8
  %77 = icmp ne %struct.device_node* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @dev_dbg(%struct.device* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i32, i32* @ENXIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %129

83:                                               ; preds = %71
  %84 = load %struct.device_node*, %struct.device_node** %7, align 8
  %85 = call %struct.drm_panel* @of_drm_find_panel(%struct.device_node* %84)
  store %struct.drm_panel* %85, %struct.drm_panel** %8, align 8
  %86 = load %struct.device_node*, %struct.device_node** %7, align 8
  %87 = call i32 @of_node_put(%struct.device_node* %86)
  %88 = load %struct.drm_panel*, %struct.drm_panel** %8, align 8
  %89 = call i64 @IS_ERR(%struct.drm_panel* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = call i32 @dev_dbg(%struct.device* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %94 = load %struct.drm_panel*, %struct.drm_panel** %8, align 8
  %95 = call i32 @PTR_ERR(%struct.drm_panel* %94)
  store i32 %95, i32* %2, align 4
  br label %129

96:                                               ; preds = %83
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.drm_panel*, %struct.drm_panel** %8, align 8
  %99 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %100 = call %struct.drm_panel* @devm_drm_panel_bridge_add(%struct.device* %97, %struct.drm_panel* %98, i32 %99)
  %101 = load %struct.lvds_encoder*, %struct.lvds_encoder** %9, align 8
  %102 = getelementptr inbounds %struct.lvds_encoder, %struct.lvds_encoder* %101, i32 0, i32 1
  store %struct.drm_panel* %100, %struct.drm_panel** %102, align 8
  %103 = load %struct.lvds_encoder*, %struct.lvds_encoder** %9, align 8
  %104 = getelementptr inbounds %struct.lvds_encoder, %struct.lvds_encoder* %103, i32 0, i32 1
  %105 = load %struct.drm_panel*, %struct.drm_panel** %104, align 8
  %106 = call i64 @IS_ERR(%struct.drm_panel* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %96
  %109 = load %struct.lvds_encoder*, %struct.lvds_encoder** %9, align 8
  %110 = getelementptr inbounds %struct.lvds_encoder, %struct.lvds_encoder* %109, i32 0, i32 1
  %111 = load %struct.drm_panel*, %struct.drm_panel** %110, align 8
  %112 = call i32 @PTR_ERR(%struct.drm_panel* %111)
  store i32 %112, i32* %2, align 4
  br label %129

113:                                              ; preds = %96
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = getelementptr inbounds %struct.device, %struct.device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.lvds_encoder*, %struct.lvds_encoder** %9, align 8
  %118 = getelementptr inbounds %struct.lvds_encoder, %struct.lvds_encoder* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 8
  %120 = load %struct.lvds_encoder*, %struct.lvds_encoder** %9, align 8
  %121 = getelementptr inbounds %struct.lvds_encoder, %struct.lvds_encoder* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32* @funcs, i32** %122, align 8
  %123 = load %struct.lvds_encoder*, %struct.lvds_encoder** %9, align 8
  %124 = getelementptr inbounds %struct.lvds_encoder, %struct.lvds_encoder* %123, i32 0, i32 0
  %125 = call i32 @drm_bridge_add(%struct.TYPE_2__* %124)
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = load %struct.lvds_encoder*, %struct.lvds_encoder** %9, align 8
  %128 = call i32 @platform_set_drvdata(%struct.platform_device* %126, %struct.lvds_encoder* %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %113, %108, %91, %78, %66, %54, %45, %18
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.lvds_encoder* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.drm_panel* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_panel*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_panel*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.device_node* @of_graph_get_port_by_id(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #1

declare dso_local %struct.drm_panel* @of_drm_find_panel(%struct.device_node*) #1

declare dso_local %struct.drm_panel* @devm_drm_panel_bridge_add(%struct.device*, %struct.drm_panel*, i32) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lvds_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
