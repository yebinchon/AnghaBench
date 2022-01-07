; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bxt_modeset_calc_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bxt_modeset_calc_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_atomic_state*)* @bxt_modeset_calc_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxt_modeset_calc_cdclk(%struct.intel_atomic_state* %0) #0 {
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
  br label %105

19:                                               ; preds = %1
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @glk_calc_cdclk(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @glk_de_pll_vco(%struct.drm_i915_private* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %35

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @bxt_calc_cdclk(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @bxt_de_pll_vco(%struct.drm_i915_private* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %38 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %43 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i8* @bxt_calc_voltage_level(i32 %46)
  %48 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %49 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i8* %47, i8** %51, align 8
  %52 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %53 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %95, label %56

56:                                               ; preds = %35
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %58 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %62 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @glk_calc_cdclk(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @glk_de_pll_vco(%struct.drm_i915_private* %66, i32 %67)
  store i32 %68, i32* %7, align 4
  br label %78

69:                                               ; preds = %56
  %70 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %71 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bxt_calc_cdclk(i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @bxt_de_pll_vco(%struct.drm_i915_private* %75, i32 %76)
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %69, %60
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %81 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %86 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i8* @bxt_calc_voltage_level(i32 %89)
  %91 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %92 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  store i8* %90, i8** %94, align 8
  br label %104

95:                                               ; preds = %35
  %96 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %97 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %100 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = bitcast %struct.TYPE_5__* %98 to i8*
  %103 = bitcast %struct.TYPE_5__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 16, i1 false)
  br label %104

104:                                              ; preds = %95, %78
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %17
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_compute_min_cdclk(%struct.intel_atomic_state*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @glk_calc_cdclk(i32) #1

declare dso_local i32 @glk_de_pll_vco(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @bxt_calc_cdclk(i32) #1

declare dso_local i32 @bxt_de_pll_vco(%struct.drm_i915_private*, i32) #1

declare dso_local i8* @bxt_calc_voltage_level(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
