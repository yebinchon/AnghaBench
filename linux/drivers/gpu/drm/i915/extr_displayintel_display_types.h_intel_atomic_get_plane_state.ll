; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_displayintel_display_types.h_intel_atomic_get_plane_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_displayintel_display_types.h_intel_atomic_get_plane_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { i32 }
%struct.intel_atomic_state = type { i32 }
%struct.intel_plane = type { i32 }
%struct.drm_plane_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_plane_state* (%struct.intel_atomic_state*, %struct.intel_plane*)* @intel_atomic_get_plane_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_plane_state* @intel_atomic_get_plane_state(%struct.intel_atomic_state* %0, %struct.intel_plane* %1) #0 {
  %3 = alloca %struct.intel_plane_state*, align 8
  %4 = alloca %struct.intel_atomic_state*, align 8
  %5 = alloca %struct.intel_plane*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %4, align 8
  store %struct.intel_plane* %1, %struct.intel_plane** %5, align 8
  %7 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %8 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %7, i32 0, i32 0
  %9 = load %struct.intel_plane*, %struct.intel_plane** %5, align 8
  %10 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %9, i32 0, i32 0
  %11 = call %struct.drm_plane_state* @drm_atomic_get_plane_state(i32* %8, i32* %10)
  store %struct.drm_plane_state* %11, %struct.drm_plane_state** %6, align 8
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %13 = call i64 @IS_ERR(%struct.drm_plane_state* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %17 = call %struct.intel_plane_state* @ERR_CAST(%struct.drm_plane_state* %16)
  store %struct.intel_plane_state* %17, %struct.intel_plane_state** %3, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %20 = call %struct.intel_plane_state* @to_intel_plane_state(%struct.drm_plane_state* %19)
  store %struct.intel_plane_state* %20, %struct.intel_plane_state** %3, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  ret %struct.intel_plane_state* %22
}

declare dso_local %struct.drm_plane_state* @drm_atomic_get_plane_state(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane_state*) #1

declare dso_local %struct.intel_plane_state* @ERR_CAST(%struct.drm_plane_state*) #1

declare dso_local %struct.intel_plane_state* @to_intel_plane_state(%struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
