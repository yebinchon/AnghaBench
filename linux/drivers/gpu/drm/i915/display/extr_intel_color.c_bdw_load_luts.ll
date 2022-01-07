; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_bdw_load_luts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_bdw_load_luts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_property_blob*, %struct.drm_property_blob*, i32 }
%struct.drm_property_blob = type { i32 }
%struct.intel_crtc = type { i32 }

@GAMMA_MODE_MODE_8BIT = common dso_local global i64 0, align 8
@GAMMA_MODE_MODE_SPLIT = common dso_local global i64 0, align 8
@PAL_PREC_SPLIT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @bdw_load_luts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdw_load_luts(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_property_blob*, align 8
  %5 = alloca %struct.drm_property_blob*, align 8
  %6 = alloca %struct.drm_property_blob*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %7 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %8 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.intel_crtc* @to_intel_crtc(i32 %10)
  store %struct.intel_crtc* %11, %struct.intel_crtc** %3, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.drm_property_blob*, %struct.drm_property_blob** %14, align 8
  store %struct.drm_property_blob* %15, %struct.drm_property_blob** %4, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.drm_property_blob*, %struct.drm_property_blob** %18, align 8
  store %struct.drm_property_blob* %19, %struct.drm_property_blob** %5, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GAMMA_MODE_MODE_8BIT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %27 = call i32 @i9xx_load_luts(%struct.intel_crtc_state* %26)
  br label %64

28:                                               ; preds = %1
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %30 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GAMMA_MODE_MODE_SPLIT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %36 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %37 = load i32, i32* @PAL_PREC_SPLIT_MODE, align 4
  %38 = call i32 @PAL_PREC_INDEX_VALUE(i32 0)
  %39 = or i32 %37, %38
  %40 = call i32 @bdw_load_lut_10(%struct.intel_crtc* %35, %struct.drm_property_blob* %36, i32 %39)
  %41 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %42 = call i32 @ivb_load_lut_ext_max(%struct.intel_crtc* %41)
  %43 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %44 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %45 = load i32, i32* @PAL_PREC_SPLIT_MODE, align 4
  %46 = call i32 @PAL_PREC_INDEX_VALUE(i32 512)
  %47 = or i32 %45, %46
  %48 = call i32 @bdw_load_lut_10(%struct.intel_crtc* %43, %struct.drm_property_blob* %44, i32 %47)
  br label %63

49:                                               ; preds = %28
  %50 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %51 = icmp ne %struct.drm_property_blob* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %55

53:                                               ; preds = %49
  %54 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi %struct.drm_property_blob* [ %50, %52 ], [ %54, %53 ]
  store %struct.drm_property_blob* %56, %struct.drm_property_blob** %6, align 8
  %57 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %58 = load %struct.drm_property_blob*, %struct.drm_property_blob** %6, align 8
  %59 = call i32 @PAL_PREC_INDEX_VALUE(i32 0)
  %60 = call i32 @bdw_load_lut_10(%struct.intel_crtc* %57, %struct.drm_property_blob* %58, i32 %59)
  %61 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %62 = call i32 @ivb_load_lut_ext_max(%struct.intel_crtc* %61)
  br label %63

63:                                               ; preds = %55, %34
  br label %64

64:                                               ; preds = %63, %25
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @i9xx_load_luts(%struct.intel_crtc_state*) #1

declare dso_local i32 @bdw_load_lut_10(%struct.intel_crtc*, %struct.drm_property_blob*, i32) #1

declare dso_local i32 @PAL_PREC_INDEX_VALUE(i32) #1

declare dso_local i32 @ivb_load_lut_ext_max(%struct.intel_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
