; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_i965_load_lut_10p6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_i965_load_lut_10p6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_property_blob = type { %struct.drm_color_lut* }
%struct.drm_color_lut = type { i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.drm_property_blob*)* @i965_load_lut_10p6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i965_load_lut_10p6(%struct.intel_crtc* %0, %struct.drm_property_blob* %1) #0 {
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

23:                                               ; preds = %51, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %31, 0
  %33 = call i32 @PALETTE(i32 %29, i32 %32)
  %34 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %34, i64 %36
  %38 = call i32 @i965_lut_10p6_ldw(%struct.drm_color_lut* %37)
  %39 = call i32 @I915_WRITE(i32 %33, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 2, %41
  %43 = add nsw i32 %42, 1
  %44 = call i32 @PALETTE(i32 %40, i32 %43)
  %45 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %45, i64 %47
  %49 = call i32 @i965_lut_10p6_udw(%struct.drm_color_lut* %48)
  %50 = call i32 @I915_WRITE(i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %28
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %23

54:                                               ; preds = %23
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @PIPEGCMAX(i32 %55, i32 0)
  %57 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %57, i64 %59
  %61 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @I915_WRITE(i32 %56, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @PIPEGCMAX(i32 %64, i32 1)
  %66 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %66, i64 %68
  %70 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @I915_WRITE(i32 %65, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @PIPEGCMAX(i32 %73, i32 2)
  %75 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %75, i64 %77
  %79 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @I915_WRITE(i32 %74, i32 %80)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @drm_color_lut_size(%struct.drm_property_blob*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PALETTE(i32, i32) #1

declare dso_local i32 @i965_lut_10p6_ldw(%struct.drm_color_lut*) #1

declare dso_local i32 @i965_lut_10p6_udw(%struct.drm_color_lut*) #1

declare dso_local i32 @PIPEGCMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
