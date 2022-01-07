; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_pipeline_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_pipeline_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_pipeline_state = type { i32 }
%struct.komeda_pipeline = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_private_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.komeda_pipeline_state* (%struct.komeda_pipeline*, %struct.drm_atomic_state*)* @komeda_pipeline_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.komeda_pipeline_state* @komeda_pipeline_get_state(%struct.komeda_pipeline* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.komeda_pipeline_state*, align 8
  %4 = alloca %struct.komeda_pipeline*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca %struct.drm_private_state*, align 8
  store %struct.komeda_pipeline* %0, %struct.komeda_pipeline** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %7 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %8 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %9 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %8, i32 0, i32 0
  %10 = call %struct.drm_private_state* @drm_atomic_get_private_obj_state(%struct.drm_atomic_state* %7, i32* %9)
  store %struct.drm_private_state* %10, %struct.drm_private_state** %6, align 8
  %11 = load %struct.drm_private_state*, %struct.drm_private_state** %6, align 8
  %12 = call i64 @IS_ERR(%struct.drm_private_state* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.drm_private_state*, %struct.drm_private_state** %6, align 8
  %16 = call %struct.komeda_pipeline_state* @ERR_CAST(%struct.drm_private_state* %15)
  store %struct.komeda_pipeline_state* %16, %struct.komeda_pipeline_state** %3, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.drm_private_state*, %struct.drm_private_state** %6, align 8
  %19 = call %struct.komeda_pipeline_state* @priv_to_pipe_st(%struct.drm_private_state* %18)
  store %struct.komeda_pipeline_state* %19, %struct.komeda_pipeline_state** %3, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %3, align 8
  ret %struct.komeda_pipeline_state* %21
}

declare dso_local %struct.drm_private_state* @drm_atomic_get_private_obj_state(%struct.drm_atomic_state*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_private_state*) #1

declare dso_local %struct.komeda_pipeline_state* @ERR_CAST(%struct.drm_private_state*) #1

declare dso_local %struct.komeda_pipeline_state* @priv_to_pipe_st(%struct.drm_private_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
