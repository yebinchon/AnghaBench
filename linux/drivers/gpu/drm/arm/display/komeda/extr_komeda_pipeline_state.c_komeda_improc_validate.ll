; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_improc_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_improc_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_improc = type { i32 }
%struct.komeda_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.komeda_data_flow_cfg = type { i32, i32, i32 }
%struct.komeda_component_state = type { i32 }
%struct.komeda_improc_state = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_improc*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*)* @komeda_improc_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_improc_validate(%struct.komeda_improc* %0, %struct.komeda_crtc_state* %1, %struct.komeda_data_flow_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.komeda_improc*, align 8
  %6 = alloca %struct.komeda_crtc_state*, align 8
  %7 = alloca %struct.komeda_data_flow_cfg*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.komeda_component_state*, align 8
  %10 = alloca %struct.komeda_improc_state*, align 8
  store %struct.komeda_improc* %0, %struct.komeda_improc** %5, align 8
  store %struct.komeda_crtc_state* %1, %struct.komeda_crtc_state** %6, align 8
  store %struct.komeda_data_flow_cfg* %2, %struct.komeda_data_flow_cfg** %7, align 8
  %11 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %12 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  store %struct.drm_crtc* %14, %struct.drm_crtc** %8, align 8
  %15 = load %struct.komeda_improc*, %struct.komeda_improc** %5, align 8
  %16 = getelementptr inbounds %struct.komeda_improc, %struct.komeda_improc* %15, i32 0, i32 0
  %17 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %18 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %23 = call %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32* %16, i32 %20, %struct.drm_crtc* %21, %struct.drm_crtc* %22)
  store %struct.komeda_component_state* %23, %struct.komeda_component_state** %9, align 8
  %24 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %25 = call i64 @IS_ERR(%struct.komeda_component_state* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %29 = call i32 @PTR_ERR(%struct.komeda_component_state* %28)
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %3
  %31 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %32 = call %struct.komeda_improc_state* @to_improc_st(%struct.komeda_component_state* %31)
  store %struct.komeda_improc_state* %32, %struct.komeda_improc_state** %10, align 8
  %33 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %34 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.komeda_improc_state*, %struct.komeda_improc_state** %10, align 8
  %37 = getelementptr inbounds %struct.komeda_improc_state, %struct.komeda_improc_state* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %39 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.komeda_improc_state*, %struct.komeda_improc_state** %10, align 8
  %42 = getelementptr inbounds %struct.komeda_improc_state, %struct.komeda_improc_state* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.komeda_improc_state*, %struct.komeda_improc_state** %10, align 8
  %44 = getelementptr inbounds %struct.komeda_improc_state, %struct.komeda_improc_state* %43, i32 0, i32 0
  %45 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %46 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %45, i32 0, i32 0
  %47 = call i32 @komeda_component_add_input(i32* %44, i32* %46, i32 0)
  %48 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %49 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %48, i32 0, i32 0
  %50 = load %struct.komeda_improc*, %struct.komeda_improc** %5, align 8
  %51 = getelementptr inbounds %struct.komeda_improc, %struct.komeda_improc* %50, i32 0, i32 0
  %52 = call i32 @komeda_component_set_output(i32* %49, i32* %51, i32 0)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %30, %27
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32*, i32, %struct.drm_crtc*, %struct.drm_crtc*) #1

declare dso_local i64 @IS_ERR(%struct.komeda_component_state*) #1

declare dso_local i32 @PTR_ERR(%struct.komeda_component_state*) #1

declare dso_local %struct.komeda_improc_state* @to_improc_st(%struct.komeda_component_state*) #1

declare dso_local i32 @komeda_component_add_input(i32*, i32*, i32) #1

declare dso_local i32 @komeda_component_set_output(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
