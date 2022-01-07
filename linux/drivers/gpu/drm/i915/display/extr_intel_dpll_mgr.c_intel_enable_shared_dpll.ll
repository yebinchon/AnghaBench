; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_enable_shared_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_enable_shared_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.intel_shared_dpll*, %struct.TYPE_7__ }
%struct.intel_shared_dpll = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*)* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"enable %s (active %x, on? %d) for crtc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"enabling %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_enable_shared_dpll(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_shared_dpll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.intel_crtc* @to_intel_crtc(i32 %11)
  store %struct.intel_crtc* %12, %struct.intel_crtc** %3, align 8
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %4, align 8
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 0
  %20 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %19, align 8
  store %struct.intel_shared_dpll* %20, %struct.intel_shared_dpll** %5, align 8
  %21 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %21, i32 0, i32 0
  %23 = call i32 @drm_crtc_mask(%struct.TYPE_12__* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %25 = icmp eq %struct.intel_shared_dpll* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %120

30:                                               ; preds = %1
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %35 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %38 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %30
  %49 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %50 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %51, %52
  %54 = call i64 @WARN_ON(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48, %30
  br label %116

57:                                               ; preds = %48
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %60 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %64 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %63, i32 0, i32 2
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %69 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %72 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %75 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70, i32 %73, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %57
  %83 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %84 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i64 @WARN_ON(i32 %88)
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %91 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %92 = call i32 @assert_shared_dpll_enabled(%struct.drm_i915_private* %90, %struct.intel_shared_dpll* %91)
  br label %116

93:                                               ; preds = %57
  %94 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %95 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @WARN_ON(i32 %96)
  %98 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %99 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %98, i32 0, i32 2
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %105 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %104, i32 0, i32 2
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*)*, i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*)** %109, align 8
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %112 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %113 = call i32 %110(%struct.drm_i915_private* %111, %struct.intel_shared_dpll* %112)
  %114 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %115 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %93, %82, %56
  %117 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %118 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  br label %120

120:                                              ; preds = %116, %29
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @drm_crtc_mask(%struct.TYPE_12__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @assert_shared_dpll_enabled(%struct.drm_i915_private*, %struct.intel_shared_dpll*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
