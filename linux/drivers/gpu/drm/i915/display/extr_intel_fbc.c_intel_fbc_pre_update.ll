; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_pre_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_pre_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i32 }
%struct.drm_i915_private = type { %struct.intel_fbc }
%struct.intel_fbc = type { i32, i32, %struct.intel_crtc*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"update pending\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"more than one pipe active\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_fbc_pre_update(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1, %struct.intel_plane_state* %2) #0 {
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_fbc*, align 8
  %9 = alloca i8*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %6, align 8
  %10 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %11 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %7, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  store %struct.intel_fbc* %16, %struct.intel_fbc** %8, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %18 = call i32 @fbc_supported(%struct.drm_i915_private* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %57

21:                                               ; preds = %3
  %22 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %23 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %26 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %27 = call i32 @multiple_pipes_ok(%struct.intel_crtc* %25, %struct.intel_plane_state* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %49

30:                                               ; preds = %21
  %31 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %32 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %37 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %36, i32 0, i32 2
  %38 = load %struct.intel_crtc*, %struct.intel_crtc** %37, align 8
  %39 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %40 = icmp ne %struct.intel_crtc* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %30
  br label %53

42:                                               ; preds = %35
  %43 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %45 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %46 = call i32 @intel_fbc_update_state_cache(%struct.intel_crtc* %43, %struct.intel_crtc_state* %44, %struct.intel_plane_state* %45)
  %47 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %48 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %29
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @intel_fbc_deactivate(%struct.drm_i915_private* %50, i8* %51)
  br label %53

53:                                               ; preds = %49, %41
  %54 = load %struct.intel_fbc*, %struct.intel_fbc** %8, align 8
  %55 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  br label %57

57:                                               ; preds = %53, %20
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @fbc_supported(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @multiple_pipes_ok(%struct.intel_crtc*, %struct.intel_plane_state*) #1

declare dso_local i32 @intel_fbc_update_state_cache(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i32 @intel_fbc_deactivate(%struct.drm_i915_private*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
