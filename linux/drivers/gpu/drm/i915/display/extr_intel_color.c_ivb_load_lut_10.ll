; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_ivb_load_lut_10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_ivb_load_lut_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_property_blob = type { %struct.drm_color_lut* }
%struct.drm_color_lut = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.drm_property_blob*, i32)* @ivb_load_lut_10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivb_load_lut_10(%struct.intel_crtc* %0, %struct.drm_property_blob* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.drm_property_blob*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_color_lut*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_color_lut*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.drm_property_blob* %1, %struct.drm_property_blob** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ivb_lut_10_size(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %22 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %21, i32 0, i32 0
  %23 = load %struct.drm_color_lut*, %struct.drm_color_lut** %22, align 8
  store %struct.drm_color_lut* %23, %struct.drm_color_lut** %9, align 8
  %24 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %25 = call i32 @drm_color_lut_size(%struct.drm_property_blob* %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %27 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %54, %3
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load %struct.drm_color_lut*, %struct.drm_color_lut** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sub nsw i32 %36, 1
  %38 = mul nsw i32 %35, %37
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sdiv i32 %38, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %34, i64 %42
  store %struct.drm_color_lut* %43, %struct.drm_color_lut** %13, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @PREC_PAL_INDEX(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = call i32 @I915_WRITE(i32 %45, i32 %46)
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @PREC_PAL_DATA(i32 %49)
  %51 = load %struct.drm_color_lut*, %struct.drm_color_lut** %13, align 8
  %52 = call i32 @ilk_lut_10(%struct.drm_color_lut* %51)
  %53 = call i32 @I915_WRITE(i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %33
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %29

57:                                               ; preds = %29
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @PREC_PAL_INDEX(i32 %58)
  %60 = call i32 @I915_WRITE(i32 %59, i32 0)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @ivb_lut_10_size(i32) #1

declare dso_local i32 @drm_color_lut_size(%struct.drm_property_blob*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PREC_PAL_INDEX(i32) #1

declare dso_local i32 @PREC_PAL_DATA(i32) #1

declare dso_local i32 @ilk_lut_10(%struct.drm_color_lut*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
