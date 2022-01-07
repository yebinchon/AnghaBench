; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_disable_shared_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_disable_shared_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.intel_shared_dpll*, %struct.TYPE_6__ }
%struct.intel_shared_dpll = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*)* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"disable %s (active %x, on? %d) for crtc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"disabling %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_disable_shared_dpll(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_shared_dpll*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %7 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %8 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.intel_crtc* @to_intel_crtc(i32 %10)
  store %struct.intel_crtc* %11, %struct.intel_crtc** %3, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %4, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %18 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %17, i32 0, i32 0
  %19 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %18, align 8
  store %struct.intel_shared_dpll* %19, %struct.intel_shared_dpll** %5, align 8
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 0
  %22 = call i32 @drm_crtc_mask(%struct.TYPE_10__* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %24 = call i32 @INTEL_GEN(%struct.drm_i915_private* %23)
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %108

27:                                               ; preds = %1
  %28 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %29 = icmp eq %struct.intel_shared_dpll* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %108

31:                                               ; preds = %27
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %36 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %104

46:                                               ; preds = %31
  %47 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %48 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %53 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %56 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %59 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i32 %57, i32 %62)
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %65 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %66 = call i32 @assert_shared_dpll_enabled(%struct.drm_i915_private* %64, %struct.intel_shared_dpll* %65)
  %67 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %68 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @WARN_ON(i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %77 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %81 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %46
  br label %104

85:                                               ; preds = %46
  %86 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %87 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %93 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %92, i32 0, i32 2
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*)*, i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*)** %97, align 8
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %100 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %101 = call i32 %98(%struct.drm_i915_private* %99, %struct.intel_shared_dpll* %100)
  %102 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %103 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %85, %84, %45
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %106 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  br label %108

108:                                              ; preds = %104, %30, %26
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @drm_crtc_mask(%struct.TYPE_10__*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @assert_shared_dpll_enabled(%struct.drm_i915_private*, %struct.intel_shared_dpll*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
