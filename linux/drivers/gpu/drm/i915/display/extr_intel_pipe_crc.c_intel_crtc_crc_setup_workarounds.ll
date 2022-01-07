; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_intel_crtc_crc_setup_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_intel_crtc_crc_setup_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.drm_atomic_state = type { %struct.drm_modeset_acquire_ctx* }
%struct.drm_modeset_acquire_ctx = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i64 0, align 8
@TRANSCODER_EDP = common dso_local global i64 0, align 8
@EDEADLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Toggling workaround to %i returns %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, i32)* @intel_crtc_crc_setup_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_crtc_crc_setup_workarounds(%struct.intel_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_atomic_state*, align 8
  %8 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %9 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %5, align 8
  %15 = call i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %8, i32 0)
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = call %struct.drm_atomic_state* @drm_atomic_state_alloc(i32* %17)
  store %struct.drm_atomic_state* %18, %struct.drm_atomic_state** %7, align 8
  %19 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %7, align 8
  %20 = icmp ne %struct.drm_atomic_state* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %87

24:                                               ; preds = %2
  %25 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %7, align 8
  %26 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %25, i32 0, i32 0
  store %struct.drm_modeset_acquire_ctx* %8, %struct.drm_modeset_acquire_ctx** %26, align 8
  br label %27

27:                                               ; preds = %80, %24
  %28 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %7, align 8
  %29 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %30 = call %struct.intel_crtc_state* @intel_atomic_get_crtc_state(%struct.drm_atomic_state* %28, %struct.intel_crtc* %29)
  store %struct.intel_crtc_state* %30, %struct.intel_crtc_state** %6, align 8
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %32 = call i64 @IS_ERR(%struct.intel_crtc_state* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %36 = call i32 @PTR_ERR(%struct.intel_crtc_state* %35)
  store i32 %36, i32* %9, align 4
  br label %75

37:                                               ; preds = %27
  %38 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %39 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %46 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %48 = call i64 @IS_HASWELL(%struct.drm_i915_private* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %37
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %52 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %58 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PIPE_A, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %64 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TRANSCODER_EDP, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %70 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %62, %56, %50, %37
  %73 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %7, align 8
  %74 = call i32 @drm_atomic_commit(%struct.drm_atomic_state* %73)
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %34
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @EDEADLK, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %7, align 8
  %82 = call i32 @drm_atomic_state_clear(%struct.drm_atomic_state* %81)
  %83 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %8)
  br label %27

84:                                               ; preds = %75
  %85 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %7, align 8
  %86 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %85)
  br label %87

87:                                               ; preds = %84, %21
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @WARN(i32 %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  %92 = call i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %8)
  %93 = call i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %8)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #1

declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(i32*) #1

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_crtc_state(%struct.drm_atomic_state*, %struct.intel_crtc*) #1

declare dso_local i64 @IS_ERR(%struct.intel_crtc_state*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_crtc_state*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_atomic_commit(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_clear(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
