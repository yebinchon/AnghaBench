; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_icl_modeset_calc_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_icl_modeset_calc_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_atomic_state*)* @icl_modeset_calc_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_modeset_calc_cdclk(%struct.intel_atomic_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  %9 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %10 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %4, align 8
  %14 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %15 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %20 = call i32 @intel_compute_min_cdclk(%struct.intel_atomic_state* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %93

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @icl_calc_cdclk(i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @icl_calc_cdclk_pll_vco(%struct.drm_i915_private* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %34 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %39 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 4
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @icl_calc_voltage_level(%struct.drm_i915_private* %42, i32 %43)
  %45 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %46 = call i32 @cnl_compute_min_voltage_level(%struct.intel_atomic_state* %45)
  %47 = call i32 @max(i32 %44, i32 %46)
  %48 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %49 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i32 %47, i32* %51, align 4
  %52 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %53 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %83, label %56

56:                                               ; preds = %25
  %57 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %58 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @icl_calc_cdclk(i32 %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @icl_calc_cdclk_pll_vco(%struct.drm_i915_private* %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %68 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %73 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i32 %71, i32* %75, align 4
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @icl_calc_voltage_level(%struct.drm_i915_private* %76, i32 %77)
  %79 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %80 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  store i32 %78, i32* %82, align 4
  br label %92

83:                                               ; preds = %25
  %84 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %85 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %88 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = bitcast %struct.TYPE_5__* %86 to i8*
  %91 = bitcast %struct.TYPE_5__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 16, i1 false)
  br label %92

92:                                               ; preds = %83, %56
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %23
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_compute_min_cdclk(%struct.intel_atomic_state*) #1

declare dso_local i32 @icl_calc_cdclk(i32, i32) #1

declare dso_local i32 @icl_calc_cdclk_pll_vco(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @icl_calc_voltage_level(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @cnl_compute_min_voltage_level(%struct.intel_atomic_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
