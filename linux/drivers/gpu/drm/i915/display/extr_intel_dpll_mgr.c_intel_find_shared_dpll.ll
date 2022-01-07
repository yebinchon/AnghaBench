; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_find_shared_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_find_shared_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_shared_dpll = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_dpll_hw_state = type { i32 }
%struct.drm_i915_private = type { %struct.intel_shared_dpll* }
%struct.intel_shared_dpll_state = type { i64, i32 }

@.str = private unnamed_addr constant [64 x i8] c"[CRTC:%d:%s] sharing existing %s (crtc mask 0x%08x, active %x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"[CRTC:%d:%s] allocated %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_shared_dpll* (%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_dpll_hw_state*, i32, i32)* @intel_find_shared_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_shared_dpll* @intel_find_shared_dpll(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1, %struct.intel_dpll_hw_state* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.intel_shared_dpll*, align 8
  %7 = alloca %struct.intel_atomic_state*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca %struct.intel_dpll_hw_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_i915_private*, align 8
  %13 = alloca %struct.intel_shared_dpll*, align 8
  %14 = alloca %struct.intel_shared_dpll*, align 8
  %15 = alloca %struct.intel_shared_dpll_state*, align 8
  %16 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %7, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %8, align 8
  store %struct.intel_dpll_hw_state* %2, %struct.intel_dpll_hw_state** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %18 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.drm_i915_private* @to_i915(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %12, align 8
  store %struct.intel_shared_dpll* null, %struct.intel_shared_dpll** %14, align 8
  %22 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %7, align 8
  %23 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %22, i32 0, i32 0
  %24 = call %struct.intel_shared_dpll_state* @intel_atomic_get_shared_dpll_state(i32* %23)
  store %struct.intel_shared_dpll_state* %24, %struct.intel_shared_dpll_state** %15, align 8
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %16, align 4
  br label %26

26:                                               ; preds = %86, %5
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %89

30:                                               ; preds = %26
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  %33 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %32, align 8
  %34 = load i32, i32* %16, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %33, i64 %35
  store %struct.intel_shared_dpll* %36, %struct.intel_shared_dpll** %13, align 8
  %37 = load %struct.intel_shared_dpll_state*, %struct.intel_shared_dpll_state** %15, align 8
  %38 = load i32, i32* %16, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %37, i64 %39
  %41 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %14, align 8
  %46 = icmp ne %struct.intel_shared_dpll* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %13, align 8
  store %struct.intel_shared_dpll* %48, %struct.intel_shared_dpll** %14, align 8
  br label %49

49:                                               ; preds = %47, %44
  br label %86

50:                                               ; preds = %30
  %51 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %9, align 8
  %52 = load %struct.intel_shared_dpll_state*, %struct.intel_shared_dpll_state** %15, align 8
  %53 = load i32, i32* %16, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %52, i64 %54
  %56 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %55, i32 0, i32 1
  %57 = call i64 @memcmp(%struct.intel_dpll_hw_state* %51, i32* %56, i32 4)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %50
  %60 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %61 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %66 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %13, align 8
  %70 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.intel_shared_dpll_state*, %struct.intel_shared_dpll_state** %15, align 8
  %75 = load i32, i32* %16, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %74, i64 %76
  %78 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %13, align 8
  %81 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i8*, i32, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %68, i32 %73, i64 %79, i32 %82)
  %84 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %13, align 8
  store %struct.intel_shared_dpll* %84, %struct.intel_shared_dpll** %6, align 8
  br label %110

85:                                               ; preds = %50
  br label %86

86:                                               ; preds = %85, %49
  %87 = load i32, i32* %16, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %26

89:                                               ; preds = %26
  %90 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %14, align 8
  %91 = icmp ne %struct.intel_shared_dpll* %90, null
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %94 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %99 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %14, align 8
  %103 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i32, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %101, i32 %106)
  %108 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %14, align 8
  store %struct.intel_shared_dpll* %108, %struct.intel_shared_dpll** %6, align 8
  br label %110

109:                                              ; preds = %89
  store %struct.intel_shared_dpll* null, %struct.intel_shared_dpll** %6, align 8
  br label %110

110:                                              ; preds = %109, %92, %59
  %111 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %6, align 8
  ret %struct.intel_shared_dpll* %111
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_shared_dpll_state* @intel_atomic_get_shared_dpll_state(i32*) #1

declare dso_local i64 @memcmp(%struct.intel_dpll_hw_state*, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
