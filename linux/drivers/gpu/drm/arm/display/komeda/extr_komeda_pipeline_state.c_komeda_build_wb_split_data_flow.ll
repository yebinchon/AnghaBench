; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_build_wb_split_data_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_build_wb_split_data_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_layer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.komeda_pipeline* }
%struct.komeda_pipeline = type { i32, i32 }
%struct.drm_connector_state = type { %struct.drm_connector* }
%struct.drm_connector = type { i32 }
%struct.komeda_crtc_state = type { i32 }
%struct.komeda_data_flow_cfg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @komeda_build_wb_split_data_flow(%struct.komeda_layer* %0, %struct.drm_connector_state* %1, %struct.komeda_crtc_state* %2, %struct.komeda_data_flow_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.komeda_layer*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.komeda_crtc_state*, align 8
  %9 = alloca %struct.komeda_data_flow_cfg*, align 8
  %10 = alloca %struct.komeda_pipeline*, align 8
  %11 = alloca %struct.drm_connector*, align 8
  %12 = alloca %struct.komeda_data_flow_cfg, align 4
  %13 = alloca %struct.komeda_data_flow_cfg, align 4
  %14 = alloca i32, align 4
  store %struct.komeda_layer* %0, %struct.komeda_layer** %6, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %7, align 8
  store %struct.komeda_crtc_state* %2, %struct.komeda_crtc_state** %8, align 8
  store %struct.komeda_data_flow_cfg* %3, %struct.komeda_data_flow_cfg** %9, align 8
  %15 = load %struct.komeda_layer*, %struct.komeda_layer** %6, align 8
  %16 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %17, align 8
  store %struct.komeda_pipeline* %18, %struct.komeda_pipeline** %10, align 8
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %20 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %19, i32 0, i32 0
  %21 = load %struct.drm_connector*, %struct.drm_connector** %20, align 8
  store %struct.drm_connector* %21, %struct.drm_connector** %11, align 8
  %22 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %10, align 8
  %23 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %26 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %27 = call i32 @komeda_splitter_validate(i32 %24, %struct.drm_connector_state* %25, %struct.komeda_data_flow_cfg* %26, %struct.komeda_data_flow_cfg* %12, %struct.komeda_data_flow_cfg* %13)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %5, align 4
  br label %65

32:                                               ; preds = %4
  %33 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %34 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %8, align 8
  %35 = call i32 @komeda_scaler_validate(%struct.drm_connector* %33, %struct.komeda_crtc_state* %34, %struct.komeda_data_flow_cfg* %12)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %5, align 4
  br label %65

40:                                               ; preds = %32
  %41 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %42 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %8, align 8
  %43 = call i32 @komeda_scaler_validate(%struct.drm_connector* %41, %struct.komeda_crtc_state* %42, %struct.komeda_data_flow_cfg* %13)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %5, align 4
  br label %65

48:                                               ; preds = %40
  %49 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %10, align 8
  %50 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %53 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %8, align 8
  %54 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %55 = call i32 @komeda_merger_validate(i32 %51, %struct.drm_connector_state* %52, %struct.komeda_crtc_state* %53, %struct.komeda_data_flow_cfg* %12, %struct.komeda_data_flow_cfg* %13, %struct.komeda_data_flow_cfg* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %5, align 4
  br label %65

60:                                               ; preds = %48
  %61 = load %struct.komeda_layer*, %struct.komeda_layer** %6, align 8
  %62 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %63 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %64 = call i32 @komeda_wb_layer_validate(%struct.komeda_layer* %61, %struct.drm_connector_state* %62, %struct.komeda_data_flow_cfg* %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %60, %58, %46, %38, %30
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @komeda_splitter_validate(i32, %struct.drm_connector_state*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_scaler_validate(%struct.drm_connector*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_merger_validate(i32, %struct.drm_connector_state*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_wb_layer_validate(%struct.komeda_layer*, %struct.drm_connector_state*, %struct.komeda_data_flow_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
