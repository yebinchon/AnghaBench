; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_ibx_get_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_ibx_get_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { %struct.intel_shared_dpll*, i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { %struct.intel_shared_dpll* }

@.str = private unnamed_addr constant [37 x i8] c"[CRTC:%d:%s] using pre-allocated %s\0A\00", align 1
@DPLL_ID_PCH_PLL_A = common dso_local global i32 0, align 4
@DPLL_ID_PCH_PLL_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*)* @ibx_get_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibx_get_dpll(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1, %struct.intel_encoder* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_atomic_state*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca %struct.intel_crtc_state*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.intel_shared_dpll*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %5, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %6, align 8
  store %struct.intel_encoder* %2, %struct.intel_encoder** %7, align 8
  %12 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %14 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %12, %struct.intel_crtc* %13)
  store %struct.intel_crtc_state* %14, %struct.intel_crtc_state** %8, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %16 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %9, align 8
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %21 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %3
  %24 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %25 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %30, i64 %32
  store %struct.intel_shared_dpll* %33, %struct.intel_shared_dpll** %10, align 8
  %34 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %35 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %40 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %10, align 8
  %44 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42, i32 %47)
  br label %57

49:                                               ; preds = %3
  %50 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %51 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %53 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %52, i32 0, i32 1
  %54 = load i32, i32* @DPLL_ID_PCH_PLL_A, align 4
  %55 = load i32, i32* @DPLL_ID_PCH_PLL_B, align 4
  %56 = call %struct.intel_shared_dpll* @intel_find_shared_dpll(%struct.intel_atomic_state* %50, %struct.intel_crtc* %51, i32* %53, i32 %54, i32 %55)
  store %struct.intel_shared_dpll* %56, %struct.intel_shared_dpll** %10, align 8
  br label %57

57:                                               ; preds = %49, %23
  %58 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %10, align 8
  %59 = icmp ne %struct.intel_shared_dpll* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %71

61:                                               ; preds = %57
  %62 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %63 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %64 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %10, align 8
  %65 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %66 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %65, i32 0, i32 1
  %67 = call i32 @intel_reference_shared_dpll(%struct.intel_atomic_state* %62, %struct.intel_crtc* %63, %struct.intel_shared_dpll* %64, i32* %66)
  %68 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %10, align 8
  %69 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %70 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %69, i32 0, i32 0
  store %struct.intel_shared_dpll* %68, %struct.intel_shared_dpll** %70, align 8
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %61, %60
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local %struct.intel_shared_dpll* @intel_find_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, i32*, i32, i32) #1

declare dso_local i32 @intel_reference_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_shared_dpll*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
