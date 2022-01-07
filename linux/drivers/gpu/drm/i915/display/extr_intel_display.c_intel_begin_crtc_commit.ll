; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_begin_crtc_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_begin_crtc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* }
%struct.intel_crtc_state = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_atomic_state*, %struct.intel_crtc*)* @intel_begin_crtc_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_begin_crtc_commit(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1) #0 {
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %4, align 8
  %9 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %10 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  %14 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %16 = call %struct.intel_crtc_state* @intel_atomic_get_old_crtc_state(%struct.intel_atomic_state* %14, %struct.intel_crtc* %15)
  store %struct.intel_crtc_state* %16, %struct.intel_crtc_state** %6, align 8
  %17 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %19 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %17, %struct.intel_crtc* %18)
  store %struct.intel_crtc_state* %19, %struct.intel_crtc_state** %7, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %21 = call i32 @needs_modeset(%struct.intel_crtc_state* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %23 = call i32 @intel_pipe_update_start(%struct.intel_crtc_state* %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %70

27:                                               ; preds = %2
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %35 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %27
  %39 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %40 = call i32 @intel_color_commit(%struct.intel_crtc_state* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %43 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %49 = call i32 @intel_update_pipe_config(%struct.intel_crtc_state* %47, %struct.intel_crtc_state* %48)
  br label %58

50:                                               ; preds = %41
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %52 = call i32 @INTEL_GEN(%struct.drm_i915_private* %51)
  %53 = icmp sge i32 %52, 9
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %56 = call i32 @skl_detach_scalers(%struct.intel_crtc_state* %55)
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %46
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %60 = call i32 @INTEL_GEN(%struct.drm_i915_private* %59)
  %61 = icmp sge i32 %60, 9
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %64 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %58
  %67 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %68 = call i32 @bdw_set_pipemisc(%struct.intel_crtc_state* %67)
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69, %26
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %72 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)*, i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)** %73, align 8
  %75 = icmp ne i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %78 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)*, i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)** %79, align 8
  %81 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %82 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %83 = call i32 %80(%struct.intel_atomic_state* %81, %struct.intel_crtc_state* %82)
  br label %84

84:                                               ; preds = %76, %70
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_old_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local i32 @needs_modeset(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_pipe_update_start(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_commit(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_update_pipe_config(%struct.intel_crtc_state*, %struct.intel_crtc_state*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_detach_scalers(%struct.intel_crtc_state*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @bdw_set_pipemisc(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
