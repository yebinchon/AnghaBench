; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_wb_layer_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_wb_layer_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_layer = type { i32 }
%struct.drm_connector_state = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.komeda_data_flow_cfg = type { i32, i32, i32, i32, i32 }
%struct.komeda_fb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.komeda_component_state = type { i32 }
%struct.komeda_layer_state = type { i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_layer*, %struct.drm_connector_state*, %struct.komeda_data_flow_cfg*)* @komeda_wb_layer_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_wb_layer_validate(%struct.komeda_layer* %0, %struct.drm_connector_state* %1, %struct.komeda_data_flow_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.komeda_layer*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.komeda_data_flow_cfg*, align 8
  %8 = alloca %struct.komeda_fb*, align 8
  %9 = alloca %struct.komeda_component_state*, align 8
  %10 = alloca %struct.komeda_layer_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.komeda_layer* %0, %struct.komeda_layer** %5, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %6, align 8
  store %struct.komeda_data_flow_cfg* %2, %struct.komeda_data_flow_cfg** %7, align 8
  %13 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %14 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.komeda_fb* @to_kfb(i32 %17)
  store %struct.komeda_fb* %18, %struct.komeda_fb** %8, align 8
  %19 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %20 = load %struct.komeda_fb*, %struct.komeda_fb** %8, align 8
  %21 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %22 = call i32 @komeda_layer_check_cfg(%struct.komeda_layer* %19, %struct.komeda_fb* %20, %struct.komeda_data_flow_cfg* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %4, align 4
  br label %98

27:                                               ; preds = %3
  %28 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %29 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %28, i32 0, i32 0
  %30 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %31 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %34 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %37 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32* %29, i32 %32, i32 %35, i32 %38)
  store %struct.komeda_component_state* %39, %struct.komeda_component_state** %9, align 8
  %40 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %41 = call i64 @IS_ERR(%struct.komeda_component_state* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %45 = call i32 @PTR_ERR(%struct.komeda_component_state* %44)
  store i32 %45, i32* %4, align 4
  br label %98

46:                                               ; preds = %27
  %47 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %48 = call %struct.komeda_layer_state* @to_layer_st(%struct.komeda_component_state* %47)
  store %struct.komeda_layer_state* %48, %struct.komeda_layer_state** %10, align 8
  %49 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %50 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %10, align 8
  %53 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %55 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %10, align 8
  %58 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %84, %46
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.komeda_fb*, %struct.komeda_fb** %8, align 8
  %62 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %60, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %59
  %69 = load %struct.komeda_fb*, %struct.komeda_fb** %8, align 8
  %70 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %71 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %74 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @komeda_fb_get_pixel_addr(%struct.komeda_fb* %69, i32 %72, i32 %75, i32 %76)
  %78 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %10, align 8
  %79 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  br label %84

84:                                               ; preds = %68
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %59

87:                                               ; preds = %59
  %88 = load %struct.komeda_layer_state*, %struct.komeda_layer_state** %10, align 8
  %89 = getelementptr inbounds %struct.komeda_layer_state, %struct.komeda_layer_state* %88, i32 0, i32 0
  %90 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %91 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %90, i32 0, i32 0
  %92 = call i32 @komeda_component_add_input(i32* %89, i32* %91, i32 0)
  %93 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %94 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %93, i32 0, i32 0
  %95 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %96 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %95, i32 0, i32 0
  %97 = call i32 @komeda_component_set_output(i32* %94, i32* %96, i32 0)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %87, %43, %25
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.komeda_fb* @to_kfb(i32) #1

declare dso_local i32 @komeda_layer_check_cfg(%struct.komeda_layer*, %struct.komeda_fb*, %struct.komeda_data_flow_cfg*) #1

declare dso_local %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.komeda_component_state*) #1

declare dso_local i32 @PTR_ERR(%struct.komeda_component_state*) #1

declare dso_local %struct.komeda_layer_state* @to_layer_st(%struct.komeda_component_state*) #1

declare dso_local i32 @komeda_fb_get_pixel_addr(%struct.komeda_fb*, i32, i32, i32) #1

declare dso_local i32 @komeda_component_add_input(i32*, i32*, i32) #1

declare dso_local i32 @komeda_component_set_output(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
