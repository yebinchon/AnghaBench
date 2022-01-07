; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_output.c_atmel_hlcdc_attach_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_output.c_atmel_hlcdc_attach_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.atmel_hlcdc_rgb_output = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.device_node = type { i32 }
%struct.drm_panel = type { i32 }
%struct.drm_bridge = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"endpoint %d: invalid bus width\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@atmel_hlcdc_panel_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_NONE = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_Unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @atmel_hlcdc_attach_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hlcdc_attach_endpoint(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_hlcdc_rgb_output*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.drm_panel*, align 8
  %9 = alloca %struct.drm_bridge*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.device_node* @of_graph_get_endpoint_by_regs(i32 %15, i32 0, i32 %16)
  store %struct.device_node* %17, %struct.device_node** %7, align 8
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %119

23:                                               ; preds = %2
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @drm_of_find_panel_or_bridge(i32 %28, i32 0, i32 %29, %struct.drm_panel** %8, %struct.drm_bridge** %9)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.device_node*, %struct.device_node** %7, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %3, align 4
  br label %119

37:                                               ; preds = %23
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.atmel_hlcdc_rgb_output* @devm_kzalloc(%struct.TYPE_7__* %40, i32 16, i32 %41)
  store %struct.atmel_hlcdc_rgb_output* %42, %struct.atmel_hlcdc_rgb_output** %6, align 8
  %43 = load %struct.atmel_hlcdc_rgb_output*, %struct.atmel_hlcdc_rgb_output** %6, align 8
  %44 = icmp ne %struct.atmel_hlcdc_rgb_output* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = load %struct.device_node*, %struct.device_node** %7, align 8
  %47 = call i32 @of_node_put(%struct.device_node* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %119

50:                                               ; preds = %37
  %51 = load %struct.device_node*, %struct.device_node** %7, align 8
  %52 = call i64 @atmel_hlcdc_of_bus_fmt(%struct.device_node* %51)
  %53 = load %struct.atmel_hlcdc_rgb_output*, %struct.atmel_hlcdc_rgb_output** %6, align 8
  %54 = getelementptr inbounds %struct.atmel_hlcdc_rgb_output, %struct.atmel_hlcdc_rgb_output* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.device_node*, %struct.device_node** %7, align 8
  %56 = call i32 @of_node_put(%struct.device_node* %55)
  %57 = load %struct.atmel_hlcdc_rgb_output*, %struct.atmel_hlcdc_rgb_output** %6, align 8
  %58 = getelementptr inbounds %struct.atmel_hlcdc_rgb_output, %struct.atmel_hlcdc_rgb_output* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @dev_err(%struct.TYPE_7__* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %119

69:                                               ; preds = %50
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = load %struct.atmel_hlcdc_rgb_output*, %struct.atmel_hlcdc_rgb_output** %6, align 8
  %72 = getelementptr inbounds %struct.atmel_hlcdc_rgb_output, %struct.atmel_hlcdc_rgb_output* %71, i32 0, i32 1
  %73 = load i32, i32* @DRM_MODE_ENCODER_NONE, align 4
  %74 = call i32 @drm_encoder_init(%struct.drm_device* %70, %struct.TYPE_6__* %72, i32* @atmel_hlcdc_panel_encoder_funcs, i32 %73, i32* null)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %3, align 4
  br label %119

79:                                               ; preds = %69
  %80 = load %struct.atmel_hlcdc_rgb_output*, %struct.atmel_hlcdc_rgb_output** %6, align 8
  %81 = getelementptr inbounds %struct.atmel_hlcdc_rgb_output, %struct.atmel_hlcdc_rgb_output* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.drm_panel*, %struct.drm_panel** %8, align 8
  %84 = icmp ne %struct.drm_panel* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %79
  %86 = load %struct.drm_panel*, %struct.drm_panel** %8, align 8
  %87 = load i32, i32* @DRM_MODE_CONNECTOR_Unknown, align 4
  %88 = call %struct.drm_bridge* @drm_panel_bridge_add(%struct.drm_panel* %86, i32 %87)
  store %struct.drm_bridge* %88, %struct.drm_bridge** %9, align 8
  %89 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %90 = call i64 @IS_ERR(%struct.drm_bridge* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %94 = call i32 @PTR_ERR(%struct.drm_bridge* %93)
  store i32 %94, i32* %3, align 4
  br label %119

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %79
  %97 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %98 = icmp ne %struct.drm_bridge* %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %96
  %100 = load %struct.atmel_hlcdc_rgb_output*, %struct.atmel_hlcdc_rgb_output** %6, align 8
  %101 = getelementptr inbounds %struct.atmel_hlcdc_rgb_output, %struct.atmel_hlcdc_rgb_output* %100, i32 0, i32 1
  %102 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %103 = call i32 @drm_bridge_attach(%struct.TYPE_6__* %101, %struct.drm_bridge* %102, i32* null)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %119

107:                                              ; preds = %99
  %108 = load %struct.drm_panel*, %struct.drm_panel** %8, align 8
  %109 = icmp ne %struct.drm_panel* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %112 = call i32 @drm_panel_bridge_remove(%struct.drm_bridge* %111)
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %96
  %115 = load %struct.atmel_hlcdc_rgb_output*, %struct.atmel_hlcdc_rgb_output** %6, align 8
  %116 = getelementptr inbounds %struct.atmel_hlcdc_rgb_output, %struct.atmel_hlcdc_rgb_output* %115, i32 0, i32 1
  %117 = call i32 @drm_encoder_cleanup(%struct.TYPE_6__* %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %106, %92, %77, %61, %45, %33, %20
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.device_node* @of_graph_get_endpoint_by_regs(i32, i32, i32) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, %struct.drm_panel**, %struct.drm_bridge**) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.atmel_hlcdc_rgb_output* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @atmel_hlcdc_of_bus_fmt(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.TYPE_6__*, i32*, i32, i32*) #1

declare dso_local %struct.drm_bridge* @drm_panel_bridge_add(%struct.drm_panel*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_bridge*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_bridge*) #1

declare dso_local i32 @drm_bridge_attach(%struct.TYPE_6__*, %struct.drm_bridge*, i32*) #1

declare dso_local i32 @drm_panel_bridge_remove(%struct.drm_bridge*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
