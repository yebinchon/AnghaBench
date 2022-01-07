; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_icl_load_luts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_icl_load_luts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, %struct.drm_property_blob* }
%struct.drm_property_blob = type { i32 }
%struct.intel_crtc = type { i32 }

@GAMMA_MODE_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @icl_load_luts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_load_luts(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.drm_property_blob*, align 8
  %4 = alloca %struct.intel_crtc*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %5 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %6 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  store %struct.drm_property_blob* %8, %struct.drm_property_blob** %3, align 8
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.intel_crtc* @to_intel_crtc(i32 %12)
  store %struct.intel_crtc* %13, %struct.intel_crtc** %4, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %21 = call i32 @glk_load_degamma_lut(%struct.intel_crtc_state* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GAMMA_MODE_MODE_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %36 [
    i32 128, label %28
    i32 129, label %31
  ]

28:                                               ; preds = %22
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %30 = call i32 @i9xx_load_luts(%struct.intel_crtc_state* %29)
  br label %43

31:                                               ; preds = %22
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %33 = call i32 @icl_program_gamma_superfine_segment(%struct.intel_crtc_state* %32)
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %35 = call i32 @icl_program_gamma_multi_segment(%struct.intel_crtc_state* %34)
  br label %43

36:                                               ; preds = %22
  %37 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %38 = load %struct.drm_property_blob*, %struct.drm_property_blob** %3, align 8
  %39 = call i32 @PAL_PREC_INDEX_VALUE(i32 0)
  %40 = call i32 @bdw_load_lut_10(%struct.intel_crtc* %37, %struct.drm_property_blob* %38, i32 %39)
  %41 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %42 = call i32 @ivb_load_lut_ext_max(%struct.intel_crtc* %41)
  br label %43

43:                                               ; preds = %36, %31, %28
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @glk_load_degamma_lut(%struct.intel_crtc_state*) #1

declare dso_local i32 @i9xx_load_luts(%struct.intel_crtc_state*) #1

declare dso_local i32 @icl_program_gamma_superfine_segment(%struct.intel_crtc_state*) #1

declare dso_local i32 @icl_program_gamma_multi_segment(%struct.intel_crtc_state*) #1

declare dso_local i32 @bdw_load_lut_10(%struct.intel_crtc*, %struct.drm_property_blob*, i32) #1

declare dso_local i32 @PAL_PREC_INDEX_VALUE(i32) #1

declare dso_local i32 @ivb_load_lut_ext_max(%struct.intel_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
