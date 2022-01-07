; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_compute_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_compute_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i64 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DPLL_INTEGRATED_REF_CLK_VLV = common dso_local global i32 0, align 4
@DPLL_REF_CLK_ENABLE_VLV = common dso_local global i32 0, align 4
@DPLL_VGA_MODE_DIS = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i64 0, align 8
@DPLL_INTEGRATED_CRI_CLK_VLV = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DSI = common dso_local global i32 0, align 4
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@DPLL_EXT_BUFFER_ENABLE_VLV = common dso_local global i32 0, align 4
@DPLL_MD_UDI_MULTIPLIER_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @vlv_compute_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_compute_dpll(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %5 = load i32, i32* @DPLL_INTEGRATED_REF_CLK_VLV, align 4
  %6 = load i32, i32* @DPLL_REF_CLK_ENABLE_VLV, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @DPLL_VGA_MODE_DIS, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PIPE_A, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @DPLL_INTEGRATED_CRI_CLK_VLV, align 4
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %19
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %27 = load i32, i32* @INTEL_OUTPUT_DSI, align 4
  %28 = call i32 @intel_crtc_has_type(%struct.intel_crtc_state* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %32 = load i32, i32* @DPLL_EXT_BUFFER_ENABLE_VLV, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %35 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %30, %25
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %41 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* @DPLL_MD_UDI_MULTIPLIER_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  ret void
}

declare dso_local i32 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
