; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_icl_program_gamma_superfine_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_icl_program_gamma_superfine_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_property_blob*, i32 }
%struct.drm_property_blob = type { %struct.drm_color_lut* }
%struct.drm_color_lut = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PAL_PREC_AUTO_INCREMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @icl_program_gamma_superfine_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_program_gamma_superfine_segment(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_property_blob*, align 8
  %6 = alloca %struct.drm_color_lut*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_color_lut*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.intel_crtc* @to_intel_crtc(i32 %13)
  store %struct.intel_crtc* %14, %struct.intel_crtc** %3, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %4, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.drm_property_blob*, %struct.drm_property_blob** %22, align 8
  store %struct.drm_property_blob* %23, %struct.drm_property_blob** %5, align 8
  %24 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %25 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %24, i32 0, i32 0
  %26 = load %struct.drm_color_lut*, %struct.drm_color_lut** %25, align 8
  store %struct.drm_color_lut* %26, %struct.drm_color_lut** %6, align 8
  %27 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %28 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @PREC_PAL_MULTI_SEG_INDEX(i32 %30)
  %32 = load i32, i32* @PAL_PREC_AUTO_INCREMENT, align 4
  %33 = call i32 @I915_WRITE(i32 %31, i32 %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %52, %1
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 9
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %38, i64 %40
  store %struct.drm_color_lut* %41, %struct.drm_color_lut** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @PREC_PAL_MULTI_SEG_DATA(i32 %42)
  %44 = load %struct.drm_color_lut*, %struct.drm_color_lut** %9, align 8
  %45 = call i32 @ilk_lut_12p4_ldw(%struct.drm_color_lut* %44)
  %46 = call i32 @I915_WRITE(i32 %43, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @PREC_PAL_MULTI_SEG_DATA(i32 %47)
  %49 = load %struct.drm_color_lut*, %struct.drm_color_lut** %9, align 8
  %50 = call i32 @ilk_lut_12p4_udw(%struct.drm_color_lut* %49)
  %51 = call i32 @I915_WRITE(i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %34

55:                                               ; preds = %34
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PREC_PAL_MULTI_SEG_INDEX(i32) #1

declare dso_local i32 @PREC_PAL_MULTI_SEG_DATA(i32) #1

declare dso_local i32 @ilk_lut_12p4_ldw(%struct.drm_color_lut*) #1

declare dso_local i32 @ilk_lut_12p4_udw(%struct.drm_color_lut*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
