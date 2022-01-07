; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_component_get_avail_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_component_get_avail_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_scaler = type { i32 }
%struct.komeda_component = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.komeda_pipeline_state = type { i32 }

@KOMEDA_PIPELINE_SCALERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.komeda_scaler* (%struct.komeda_component*, %struct.drm_atomic_state*)* @komeda_component_get_avail_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.komeda_scaler* @komeda_component_get_avail_scaler(%struct.komeda_component* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.komeda_scaler*, align 8
  %4 = alloca %struct.komeda_component*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca %struct.komeda_pipeline_state*, align 8
  %7 = alloca i32, align 4
  store %struct.komeda_component* %0, %struct.komeda_component** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %8 = load %struct.komeda_component*, %struct.komeda_component** %4, align 8
  %9 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %12 = call %struct.komeda_pipeline_state* @komeda_pipeline_get_state(i32 %10, %struct.drm_atomic_state* %11)
  store %struct.komeda_pipeline_state* %12, %struct.komeda_pipeline_state** %6, align 8
  %13 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %6, align 8
  %14 = icmp ne %struct.komeda_pipeline_state* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.komeda_scaler* null, %struct.komeda_scaler** %3, align 8
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %6, align 8
  %18 = getelementptr inbounds %struct.komeda_pipeline_state, %struct.komeda_pipeline_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @KOMEDA_PIPELINE_SCALERS, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @KOMEDA_PIPELINE_SCALERS, align 4
  %23 = xor i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.komeda_component*, %struct.komeda_component** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.komeda_component* @komeda_component_pickup_output(%struct.komeda_component* %24, i32 %25)
  store %struct.komeda_component* %26, %struct.komeda_component** %4, align 8
  %27 = load %struct.komeda_component*, %struct.komeda_component** %4, align 8
  %28 = call %struct.komeda_scaler* @to_scaler(%struct.komeda_component* %27)
  store %struct.komeda_scaler* %28, %struct.komeda_scaler** %3, align 8
  br label %29

29:                                               ; preds = %16, %15
  %30 = load %struct.komeda_scaler*, %struct.komeda_scaler** %3, align 8
  ret %struct.komeda_scaler* %30
}

declare dso_local %struct.komeda_pipeline_state* @komeda_pipeline_get_state(i32, %struct.drm_atomic_state*) #1

declare dso_local %struct.komeda_component* @komeda_component_pickup_output(%struct.komeda_component*, i32) #1

declare dso_local %struct.komeda_scaler* @to_scaler(%struct.komeda_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
