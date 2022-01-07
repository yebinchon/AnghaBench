; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_compiz_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_compiz_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_compiz = type { i32 }
%struct.komeda_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.komeda_data_flow_cfg = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.komeda_component_state = type { i32 }
%struct.komeda_compiz_state = type { i32, i32 }

@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_compiz*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*)* @komeda_compiz_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_compiz_validate(%struct.komeda_compiz* %0, %struct.komeda_crtc_state* %1, %struct.komeda_data_flow_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.komeda_compiz*, align 8
  %6 = alloca %struct.komeda_crtc_state*, align 8
  %7 = alloca %struct.komeda_data_flow_cfg*, align 8
  %8 = alloca %struct.komeda_component_state*, align 8
  %9 = alloca %struct.komeda_compiz_state*, align 8
  store %struct.komeda_compiz* %0, %struct.komeda_compiz** %5, align 8
  store %struct.komeda_crtc_state* %1, %struct.komeda_crtc_state** %6, align 8
  store %struct.komeda_data_flow_cfg* %2, %struct.komeda_data_flow_cfg** %7, align 8
  %10 = load %struct.komeda_compiz*, %struct.komeda_compiz** %5, align 8
  %11 = getelementptr inbounds %struct.komeda_compiz, %struct.komeda_compiz* %10, i32 0, i32 0
  %12 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %13 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %17 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %21 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32* %11, i32 %15, i32 %19, i32 %23)
  store %struct.komeda_component_state* %24, %struct.komeda_component_state** %8, align 8
  %25 = load %struct.komeda_component_state*, %struct.komeda_component_state** %8, align 8
  %26 = call i64 @IS_ERR(%struct.komeda_component_state* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.komeda_component_state*, %struct.komeda_component_state** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.komeda_component_state* %29)
  store i32 %30, i32* %4, align 4
  br label %76

31:                                               ; preds = %3
  %32 = load %struct.komeda_component_state*, %struct.komeda_component_state** %8, align 8
  %33 = call %struct.komeda_compiz_state* @to_compiz_st(%struct.komeda_component_state* %32)
  store %struct.komeda_compiz_state* %33, %struct.komeda_compiz_state** %9, align 8
  %34 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %35 = load %struct.komeda_compiz_state*, %struct.komeda_compiz_state** %9, align 8
  %36 = getelementptr inbounds %struct.komeda_compiz_state, %struct.komeda_compiz_state* %35, i32 0, i32 1
  %37 = load %struct.komeda_compiz_state*, %struct.komeda_compiz_state** %9, align 8
  %38 = getelementptr inbounds %struct.komeda_compiz_state, %struct.komeda_compiz_state* %37, i32 0, i32 0
  %39 = call i32 @pipeline_composition_size(%struct.komeda_crtc_state* %34, i32* %36, i32* %38)
  %40 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %41 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %40, i32 0, i32 7
  %42 = load %struct.komeda_compiz*, %struct.komeda_compiz** %5, align 8
  %43 = getelementptr inbounds %struct.komeda_compiz, %struct.komeda_compiz* %42, i32 0, i32 0
  %44 = call i32 @komeda_component_set_output(i32* %41, i32* %43, i32 0)
  %45 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %46 = icmp ne %struct.komeda_data_flow_cfg* %45, null
  br i1 %46, label %47, label %75

47:                                               ; preds = %31
  %48 = load %struct.komeda_compiz_state*, %struct.komeda_compiz_state** %9, align 8
  %49 = getelementptr inbounds %struct.komeda_compiz_state, %struct.komeda_compiz_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %52 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.komeda_compiz_state*, %struct.komeda_compiz_state** %9, align 8
  %54 = getelementptr inbounds %struct.komeda_compiz_state, %struct.komeda_compiz_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %57 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %59 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %62 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %64 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %67 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @DRM_MODE_BLEND_PIXEL_NONE, align 4
  %69 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %70 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %72 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %71, i32 0, i32 0
  store i32 255, i32* %72, align 8
  %73 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %74 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %47, %31
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %28
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.komeda_component_state*) #1

declare dso_local i32 @PTR_ERR(%struct.komeda_component_state*) #1

declare dso_local %struct.komeda_compiz_state* @to_compiz_st(%struct.komeda_component_state*) #1

declare dso_local i32 @pipeline_composition_size(%struct.komeda_crtc_state*, i32*, i32*) #1

declare dso_local i32 @komeda_component_set_output(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
