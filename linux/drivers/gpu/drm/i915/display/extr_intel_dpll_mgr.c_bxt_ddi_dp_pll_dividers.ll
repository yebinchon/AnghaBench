; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_bxt_ddi_dp_pll_dividers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_bxt_ddi_dp_pll_dividers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxt_clk_div = type { i32, i32, i32, i32 }
%struct.intel_crtc_state = type { i32 }

@bxt_dp_clk_val = common dso_local global %struct.bxt_clk_div* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.bxt_clk_div*)* @bxt_ddi_dp_pll_dividers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_ddi_dp_pll_dividers(%struct.intel_crtc_state* %0, %struct.bxt_clk_div* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.bxt_clk_div*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.bxt_clk_div* %1, %struct.bxt_clk_div** %4, align 8
  %7 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %8 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** %4, align 8
  %11 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** @bxt_dp_clk_val, align 8
  %12 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %11, i64 0
  %13 = bitcast %struct.bxt_clk_div* %10 to i8*
  %14 = bitcast %struct.bxt_clk_div* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 16, i1 false)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %38, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** @bxt_dp_clk_val, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.bxt_clk_div* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** @bxt_dp_clk_val, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %21, i64 %23
  %25 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** %4, align 8
  %31 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** @bxt_dp_clk_val, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %31, i64 %33
  %35 = bitcast %struct.bxt_clk_div* %30 to i8*
  %36 = bitcast %struct.bxt_clk_div* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 16, i1 false)
  br label %41

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %15

41:                                               ; preds = %29, %15
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 10
  %44 = sdiv i32 %43, 2
  %45 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** %4, align 8
  %46 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** %4, align 8
  %50 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = load %struct.bxt_clk_div*, %struct.bxt_clk_div** %4, align 8
  %54 = getelementptr inbounds %struct.bxt_clk_div, %struct.bxt_clk_div* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bxt_clk_div*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
