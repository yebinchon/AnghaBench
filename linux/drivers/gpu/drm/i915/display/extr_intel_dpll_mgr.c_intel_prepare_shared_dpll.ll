; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_prepare_shared_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_prepare_shared_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.intel_shared_dpll*, %struct.TYPE_10__ }
%struct.intel_shared_dpll = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*)* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"setting up %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_prepare_shared_dpll(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_shared_dpll*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %6 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %7 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.intel_crtc* @to_intel_crtc(i32 %9)
  store %struct.intel_crtc* %10, %struct.intel_crtc** %3, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %4, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 0
  %18 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %17, align 8
  store %struct.intel_shared_dpll* %18, %struct.intel_shared_dpll** %5, align 8
  %19 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %20 = icmp eq %struct.intel_shared_dpll* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %69

25:                                               ; preds = %1
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %30 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %38 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %65, label %41

41:                                               ; preds = %25
  %42 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %43 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %49 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %53 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %54 = call i32 @assert_shared_dpll_disabled(%struct.drm_i915_private* %52, %struct.intel_shared_dpll* %53)
  %55 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %56 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*)*, i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*)** %60, align 8
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %63 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %64 = call i32 %61(%struct.drm_i915_private* %62, %struct.intel_shared_dpll* %63)
  br label %65

65:                                               ; preds = %41, %25
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %67 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  br label %69

69:                                               ; preds = %65, %24
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @assert_shared_dpll_disabled(%struct.drm_i915_private*, %struct.intel_shared_dpll*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
