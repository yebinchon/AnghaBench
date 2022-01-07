; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bxt_init_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bxt_init_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_cdclk_state }
%struct.intel_cdclk_state = type { i64, i64, i32 }

@INVALID_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @bxt_init_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_init_cdclk(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_cdclk_state, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = call i32 @bxt_sanitize_cdclk(%struct.drm_i915_private* %4)
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %53

20:                                               ; preds = %12, %1
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast %struct.intel_cdclk_state* %3 to i8*
  %25 = bitcast %struct.intel_cdclk_state* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 24, i1 false)
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = call i64 @glk_calc_cdclk(i32 0)
  %31 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @glk_de_pll_vco(%struct.drm_i915_private* %32, i64 %34)
  %36 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  br label %45

37:                                               ; preds = %20
  %38 = call i64 @bxt_calc_cdclk(i32 0)
  %39 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %41 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @bxt_de_pll_vco(%struct.drm_i915_private* %40, i64 %42)
  %44 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 1
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %37, %29
  %46 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @bxt_calc_voltage_level(i64 %47)
  %49 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %51 = load i32, i32* @INVALID_PIPE, align 4
  %52 = call i32 @bxt_set_cdclk(%struct.drm_i915_private* %50, %struct.intel_cdclk_state* %3, i32 %51)
  br label %53

53:                                               ; preds = %45, %19
  ret void
}

declare dso_local i32 @bxt_sanitize_cdclk(%struct.drm_i915_private*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @glk_calc_cdclk(i32) #1

declare dso_local i64 @glk_de_pll_vco(%struct.drm_i915_private*, i64) #1

declare dso_local i64 @bxt_calc_cdclk(i32) #1

declare dso_local i64 @bxt_de_pll_vco(%struct.drm_i915_private*, i64) #1

declare dso_local i32 @bxt_calc_voltage_level(i64) #1

declare dso_local i32 @bxt_set_cdclk(%struct.drm_i915_private*, %struct.intel_cdclk_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
