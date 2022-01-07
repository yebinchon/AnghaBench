; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_icl_program_gamma_multi_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_icl_program_gamma_multi_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_property_blob*, i32 }
%struct.drm_property_blob = type { %struct.drm_color_lut* }
%struct.drm_color_lut = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PAL_PREC_AUTO_INCREMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @icl_program_gamma_multi_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_program_gamma_multi_segment(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_property_blob*, align 8
  %6 = alloca %struct.drm_color_lut*, align 8
  %7 = alloca %struct.drm_color_lut*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.intel_crtc* @to_intel_crtc(i32 %13)
  store %struct.intel_crtc* %14, %struct.intel_crtc** %3, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %4, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.drm_property_blob*, %struct.drm_property_blob** %22, align 8
  store %struct.drm_property_blob* %23, %struct.drm_property_blob** %5, align 8
  %24 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %25 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %24, i32 0, i32 0
  %26 = load %struct.drm_color_lut*, %struct.drm_color_lut** %25, align 8
  store %struct.drm_color_lut* %26, %struct.drm_color_lut** %6, align 8
  %27 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %28 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @PREC_PAL_INDEX(i32 %30)
  %32 = load i32, i32* @PAL_PREC_AUTO_INCREMENT, align 4
  %33 = call i32 @I915_WRITE(i32 %31, i32 %32)
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %53, %1
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 257
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %38, i64 %41
  store %struct.drm_color_lut* %42, %struct.drm_color_lut** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @PREC_PAL_DATA(i32 %43)
  %45 = load %struct.drm_color_lut*, %struct.drm_color_lut** %7, align 8
  %46 = call i32 @ilk_lut_12p4_ldw(%struct.drm_color_lut* %45)
  %47 = call i32 @I915_WRITE(i32 %44, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @PREC_PAL_DATA(i32 %48)
  %50 = load %struct.drm_color_lut*, %struct.drm_color_lut** %7, align 8
  %51 = call i32 @ilk_lut_12p4_udw(%struct.drm_color_lut* %50)
  %52 = call i32 @I915_WRITE(i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %34

56:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %77, %56
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 256
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %62, 8
  %64 = mul nsw i32 %63, 128
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %61, i64 %65
  store %struct.drm_color_lut* %66, %struct.drm_color_lut** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @PREC_PAL_DATA(i32 %67)
  %69 = load %struct.drm_color_lut*, %struct.drm_color_lut** %7, align 8
  %70 = call i32 @ilk_lut_12p4_ldw(%struct.drm_color_lut* %69)
  %71 = call i32 @I915_WRITE(i32 %68, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @PREC_PAL_DATA(i32 %72)
  %74 = load %struct.drm_color_lut*, %struct.drm_color_lut** %7, align 8
  %75 = call i32 @ilk_lut_12p4_udw(%struct.drm_color_lut* %74)
  %76 = call i32 @I915_WRITE(i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %60
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %57

80:                                               ; preds = %57
  %81 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %82 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %81, i64 262144
  store %struct.drm_color_lut* %82, %struct.drm_color_lut** %7, align 8
  %83 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %84 = load %struct.drm_color_lut*, %struct.drm_color_lut** %7, align 8
  %85 = call i32 @icl_load_gcmax(%struct.intel_crtc_state* %83, %struct.drm_color_lut* %84)
  %86 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %87 = call i32 @ivb_load_lut_ext_max(%struct.intel_crtc* %86)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PREC_PAL_INDEX(i32) #1

declare dso_local i32 @PREC_PAL_DATA(i32) #1

declare dso_local i32 @ilk_lut_12p4_ldw(%struct.drm_color_lut*) #1

declare dso_local i32 @ilk_lut_12p4_udw(%struct.drm_color_lut*) #1

declare dso_local i32 @icl_load_gcmax(%struct.intel_crtc_state*, %struct.drm_color_lut*) #1

declare dso_local i32 @ivb_load_lut_ext_max(%struct.intel_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
