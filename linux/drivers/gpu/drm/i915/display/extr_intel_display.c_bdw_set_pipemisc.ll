; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_bdw_set_pipemisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_bdw_set_pipemisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i64, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PIPEMISC_DITHER_6_BPC = common dso_local global i32 0, align 4
@PIPEMISC_DITHER_8_BPC = common dso_local global i32 0, align 4
@PIPEMISC_DITHER_10_BPC = common dso_local global i32 0, align 4
@PIPEMISC_DITHER_12_BPC = common dso_local global i32 0, align 4
@PIPEMISC_DITHER_ENABLE = common dso_local global i32 0, align 4
@PIPEMISC_DITHER_TYPE_SP = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_YCBCR420 = common dso_local global i64 0, align 8
@INTEL_OUTPUT_FORMAT_YCBCR444 = common dso_local global i64 0, align 8
@PIPEMISC_OUTPUT_COLORSPACE_YUV = common dso_local global i32 0, align 4
@PIPEMISC_YUV420_ENABLE = common dso_local global i32 0, align 4
@PIPEMISC_YUV420_MODE_FULL_BLEND = common dso_local global i32 0, align 4
@PLANE_CURSOR = common dso_local global i32 0, align 4
@PIPEMISC_HDR_MODE_PRECISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @bdw_set_pipemisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdw_set_pipemisc(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %6 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %7 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.intel_crtc* @to_intel_crtc(i32 %9)
  store %struct.intel_crtc* %10, %struct.intel_crtc** %3, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %4, align 8
  store i32 0, i32* %5, align 4
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %35 [
    i32 18, label %19
    i32 24, label %23
    i32 30, label %27
    i32 36, label %31
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @PIPEMISC_DITHER_6_BPC, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load i32, i32* @PIPEMISC_DITHER_8_BPC, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %40

27:                                               ; preds = %1
  %28 = load i32, i32* @PIPEMISC_DITHER_10_BPC, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %40

31:                                               ; preds = %1
  %32 = load i32, i32* @PIPEMISC_DITHER_12_BPC, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %40

35:                                               ; preds = %1
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %37 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @MISSING_CASE(i32 %38)
  br label %40

40:                                               ; preds = %35, %31, %27, %23, %19
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* @PIPEMISC_DITHER_ENABLE, align 4
  %47 = load i32, i32* @PIPEMISC_DITHER_TYPE_SP, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %53 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @INTEL_OUTPUT_FORMAT_YCBCR420, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %59 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @INTEL_OUTPUT_FORMAT_YCBCR444, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57, %51
  %64 = load i32, i32* @PIPEMISC_OUTPUT_COLORSPACE_YUV, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %69 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @INTEL_OUTPUT_FORMAT_YCBCR420, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* @PIPEMISC_YUV420_ENABLE, align 4
  %75 = load i32, i32* @PIPEMISC_YUV420_MODE_FULL_BLEND, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %73, %67
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %81 = call i32 @INTEL_GEN(%struct.drm_i915_private* %80)
  %82 = icmp sge i32 %81, 11
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %85 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (...) @icl_hdr_plane_mask()
  %88 = load i32, i32* @PLANE_CURSOR, align 4
  %89 = call i32 @BIT(i32 %88)
  %90 = or i32 %87, %89
  %91 = xor i32 %90, -1
  %92 = and i32 %86, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %83
  %95 = load i32, i32* @PIPEMISC_HDR_MODE_PRECISION, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %83, %79
  %99 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %100 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PIPEMISC(i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @I915_WRITE(i32 %102, i32 %103)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @icl_hdr_plane_mask(...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PIPEMISC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
