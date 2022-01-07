; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_build_wb_data_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_build_wb_data_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_layer = type { i32 }
%struct.drm_connector_state = type { %struct.drm_connector* }
%struct.drm_connector = type { i32 }
%struct.komeda_crtc_state = type { i32 }
%struct.komeda_data_flow_cfg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @komeda_build_wb_data_flow(%struct.komeda_layer* %0, %struct.drm_connector_state* %1, %struct.komeda_crtc_state* %2, %struct.komeda_data_flow_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.komeda_layer*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.komeda_crtc_state*, align 8
  %9 = alloca %struct.komeda_data_flow_cfg*, align 8
  %10 = alloca %struct.drm_connector*, align 8
  %11 = alloca i32, align 4
  store %struct.komeda_layer* %0, %struct.komeda_layer** %6, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %7, align 8
  store %struct.komeda_crtc_state* %2, %struct.komeda_crtc_state** %8, align 8
  store %struct.komeda_data_flow_cfg* %3, %struct.komeda_data_flow_cfg** %9, align 8
  %12 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %13 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %12, i32 0, i32 0
  %14 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  store %struct.drm_connector* %14, %struct.drm_connector** %10, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %16 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %8, align 8
  %17 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %18 = call i32 @komeda_scaler_validate(%struct.drm_connector* %15, %struct.komeda_crtc_state* %16, %struct.komeda_data_flow_cfg* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %28

23:                                               ; preds = %4
  %24 = load %struct.komeda_layer*, %struct.komeda_layer** %6, align 8
  %25 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %26 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %27 = call i32 @komeda_wb_layer_validate(%struct.komeda_layer* %24, %struct.drm_connector_state* %25, %struct.komeda_data_flow_cfg* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %21
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @komeda_scaler_validate(%struct.drm_connector*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_wb_layer_validate(%struct.komeda_layer*, %struct.drm_connector_state*, %struct.komeda_data_flow_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
