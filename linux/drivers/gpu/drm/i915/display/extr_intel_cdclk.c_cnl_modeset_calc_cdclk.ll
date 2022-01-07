; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_cnl_modeset_calc_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_cnl_modeset_calc_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_atomic_state*)* @cnl_modeset_calc_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_modeset_calc_cdclk(%struct.intel_atomic_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  %8 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %9 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %4, align 8
  %13 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %14 = call i32 @intel_compute_min_cdclk(%struct.intel_atomic_state* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %83

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @cnl_calc_cdclk(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @cnl_cdclk_pll_vco(%struct.drm_i915_private* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %27 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %32 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @cnl_calc_voltage_level(i32 %35)
  %37 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %38 = call i32 @cnl_compute_min_voltage_level(%struct.intel_atomic_state* %37)
  %39 = call i32 @max(i32 %36, i32 %38)
  %40 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %41 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i32 %39, i32* %43, align 4
  %44 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %45 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %19
  %49 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %50 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cnl_calc_cdclk(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @cnl_cdclk_pll_vco(%struct.drm_i915_private* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %59 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %64 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @cnl_calc_voltage_level(i32 %67)
  %69 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %70 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store i32 %68, i32* %72, align 4
  br label %82

73:                                               ; preds = %19
  %74 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %75 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %78 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = bitcast %struct.TYPE_5__* %76 to i8*
  %81 = bitcast %struct.TYPE_5__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 12, i1 false)
  br label %82

82:                                               ; preds = %73, %48
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %17
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_compute_min_cdclk(%struct.intel_atomic_state*) #1

declare dso_local i32 @cnl_calc_cdclk(i32) #1

declare dso_local i32 @cnl_cdclk_pll_vco(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @cnl_calc_voltage_level(i32) #1

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
