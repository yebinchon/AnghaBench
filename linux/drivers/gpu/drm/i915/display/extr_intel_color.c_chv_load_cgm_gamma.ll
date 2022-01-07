; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_chv_load_cgm_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_chv_load_cgm_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_property_blob = type { %struct.drm_color_lut* }
%struct.drm_color_lut = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.drm_property_blob*)* @chv_load_cgm_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_load_cgm_gamma(%struct.intel_crtc* %0, %struct.drm_property_blob* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_property_blob*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_color_lut*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.drm_property_blob* %1, %struct.drm_property_blob** %4, align 8
  %10 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %5, align 8
  %15 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %16 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %15, i32 0, i32 0
  %17 = load %struct.drm_color_lut*, %struct.drm_color_lut** %16, align 8
  store %struct.drm_color_lut* %17, %struct.drm_color_lut** %6, align 8
  %18 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %19 = call i32 @drm_color_lut_size(%struct.drm_property_blob* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %46, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @CGM_PIPE_GAMMA(i32 %28, i32 %29, i32 0)
  %31 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %31, i64 %33
  %35 = call i32 @chv_cgm_gamma_ldw(%struct.drm_color_lut* %34)
  %36 = call i32 @I915_WRITE(i32 %30, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @CGM_PIPE_GAMMA(i32 %37, i32 %38, i32 1)
  %40 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %40, i64 %42
  %44 = call i32 @chv_cgm_gamma_udw(%struct.drm_color_lut* %43)
  %45 = call i32 @I915_WRITE(i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %23

49:                                               ; preds = %23
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @drm_color_lut_size(%struct.drm_property_blob*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @CGM_PIPE_GAMMA(i32, i32, i32) #1

declare dso_local i32 @chv_cgm_gamma_ldw(%struct.drm_color_lut*) #1

declare dso_local i32 @chv_cgm_gamma_udw(%struct.drm_color_lut*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
