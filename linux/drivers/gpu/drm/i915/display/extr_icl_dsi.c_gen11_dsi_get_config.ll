; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_gen11_dsi_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_gen11_dsi_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_dsi = type { i32, i64 }

@INTEL_OUTPUT_DSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @gen11_dsi_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen11_dsi_get_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_dsi*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %8 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %14 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.intel_crtc* @to_intel_crtc(i32 %16)
  store %struct.intel_crtc* %17, %struct.intel_crtc** %6, align 8
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %18, i32 0, i32 0
  %20 = call %struct.intel_dsi* @enc_to_intel_dsi(%struct.TYPE_6__* %19)
  store %struct.intel_dsi* %20, %struct.intel_dsi** %7, align 8
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %23 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %22, i32 0, i32 3
  %24 = call i32 @cnl_calc_wrpll_link(%struct.drm_i915_private* %21, i32* %23)
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.intel_dsi*, %struct.intel_dsi** %7, align 8
  %28 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.intel_dsi*, %struct.intel_dsi** %7, align 8
  %35 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %2
  %39 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %40 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 2
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %38, %2
  %46 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %47 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %48 = call i32 @gen11_dsi_get_timings(%struct.intel_encoder* %46, %struct.intel_crtc_state* %47)
  %49 = load i32, i32* @INTEL_OUTPUT_DSI, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %52 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %56 = call i32 @bdw_get_pipemisc_bpp(%struct.intel_crtc* %55)
  %57 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %58 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_dsi* @enc_to_intel_dsi(%struct.TYPE_6__*) #1

declare dso_local i32 @cnl_calc_wrpll_link(%struct.drm_i915_private*, i32*) #1

declare dso_local i32 @gen11_dsi_get_timings(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @bdw_get_pipemisc_bpp(%struct.intel_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
