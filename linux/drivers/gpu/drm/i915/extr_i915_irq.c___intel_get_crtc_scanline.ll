; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c___intel_get_crtc_scanline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c___intel_get_crtc_scanline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@I915_MODE_FLAG_GET_SCANLINE_FROM_TIMESTAMP = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DSL_LINEMASK_GEN2 = common dso_local global i32 0, align 4
@DSL_LINEMASK_GEN3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*)* @__intel_get_crtc_scanline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__intel_get_crtc_scanline(%struct.intel_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_vblank_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %4, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %5, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %114

27:                                               ; preds = %1
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.drm_device*, %struct.drm_device** %30, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %32, align 8
  %34 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %35 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %34, i32 0, i32 2
  %36 = call i64 @drm_crtc_index(%struct.TYPE_2__* %35)
  %37 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %33, i64 %36
  store %struct.drm_vblank_crtc* %37, %struct.drm_vblank_crtc** %7, align 8
  %38 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %7, align 8
  %39 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %38, i32 0, i32 0
  store %struct.drm_display_mode* %39, %struct.drm_display_mode** %6, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @I915_MODE_FLAG_GET_SCANLINE_FROM_TIMESTAMP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %48 = call i32 @__intel_get_crtc_scanline_from_timestamp(%struct.intel_crtc* %47)
  store i32 %48, i32* %2, align 4
  br label %114

49:                                               ; preds = %27
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* %10, align 4
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %49
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %64 = call i64 @IS_GEN(%struct.drm_i915_private* %63, i32 2)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @PIPEDSL(i32 %67)
  %69 = call i32 @I915_READ_FW(i32 %68)
  %70 = load i32, i32* @DSL_LINEMASK_GEN2, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %9, align 4
  br label %78

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @PIPEDSL(i32 %73)
  %75 = call i32 @I915_READ_FW(i32 %74)
  %76 = load i32, i32* @DSL_LINEMASK_GEN3, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %72, %66
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %80 = call i64 @HAS_DDI(%struct.drm_i915_private* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %106, label %85

85:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %102, %85
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 100
  br i1 %88, label %89, label %105

89:                                               ; preds = %86
  %90 = call i32 @udelay(i32 1)
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @PIPEDSL(i32 %91)
  %93 = call i32 @I915_READ_FW(i32 %92)
  %94 = load i32, i32* @DSL_LINEMASK_GEN3, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %9, align 4
  br label %105

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %86

105:                                              ; preds = %99, %86
  br label %106

106:                                              ; preds = %105, %82, %78
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %109 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  %112 = load i32, i32* %10, align 4
  %113 = srem i32 %111, %112
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %106, %46, %26
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i64 @drm_crtc_index(%struct.TYPE_2__*) #1

declare dso_local i32 @__intel_get_crtc_scanline_from_timestamp(%struct.intel_crtc*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ_FW(i32) #1

declare dso_local i32 @PIPEDSL(i32) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
