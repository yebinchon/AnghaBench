; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_calc_dp_combo_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_calc_dp_combo_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_combo_pll_params = type { i32, %struct.skl_wrpll_params }
%struct.skl_wrpll_params = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@icl_dp_combo_pll_24MHz_values = common dso_local global %struct.icl_combo_pll_params* null, align 8
@icl_dp_combo_pll_19_2MHz_values = common dso_local global %struct.icl_combo_pll_params* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.skl_wrpll_params*)* @icl_calc_dp_combo_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_calc_dp_combo_pll(%struct.intel_crtc_state* %0, %struct.skl_wrpll_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.skl_wrpll_params*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.icl_combo_pll_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.skl_wrpll_params* %1, %struct.skl_wrpll_params** %5, align 8
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %6, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 24000
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load %struct.icl_combo_pll_params*, %struct.icl_combo_pll_params** @icl_dp_combo_pll_24MHz_values, align 8
  br label %27

25:                                               ; preds = %2
  %26 = load %struct.icl_combo_pll_params*, %struct.icl_combo_pll_params** @icl_dp_combo_pll_19_2MHz_values, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi %struct.icl_combo_pll_params* [ %24, %23 ], [ %26, %25 ]
  store %struct.icl_combo_pll_params* %28, %struct.icl_combo_pll_params** %7, align 8
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %30 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %56, %27
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.icl_combo_pll_params*, %struct.icl_combo_pll_params** @icl_dp_combo_pll_24MHz_values, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.icl_combo_pll_params* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.icl_combo_pll_params*, %struct.icl_combo_pll_params** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.icl_combo_pll_params, %struct.icl_combo_pll_params* %39, i64 %41
  %43 = getelementptr inbounds %struct.icl_combo_pll_params, %struct.icl_combo_pll_params* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %38, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %5, align 8
  %48 = load %struct.icl_combo_pll_params*, %struct.icl_combo_pll_params** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.icl_combo_pll_params, %struct.icl_combo_pll_params* %48, i64 %50
  %52 = getelementptr inbounds %struct.icl_combo_pll_params, %struct.icl_combo_pll_params* %51, i32 0, i32 1
  %53 = bitcast %struct.skl_wrpll_params* %47 to i8*
  %54 = bitcast %struct.skl_wrpll_params* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  store i32 1, i32* %3, align 4
  br label %62

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %32

59:                                               ; preds = %32
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @MISSING_CASE(i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %46
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.icl_combo_pll_params*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
