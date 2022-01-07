; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i915_get_vblank_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i915_get_vblank_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { i32, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@PIPE_FRAME_HIGH_MASK = common dso_local global i32 0, align 4
@PIPE_FRAME_HIGH_SHIFT = common dso_local global i32 0, align 4
@PIPE_PIXEL_MASK = common dso_local global i32 0, align 4
@PIPE_FRAME_LOW_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_get_vblank_counter(%struct.drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_vblank_crtc*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.drm_i915_private* @to_i915(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %4, align 8
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %24, align 8
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %27 = call i64 @drm_crtc_index(%struct.drm_crtc* %26)
  %28 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %25, i64 %27
  store %struct.drm_vblank_crtc* %28, %struct.drm_vblank_crtc** %5, align 8
  %29 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %30 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %29, i32 0, i32 1
  store %struct.drm_display_mode* %30, %struct.drm_display_mode** %6, align 8
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %32 = call %struct.TYPE_6__* @to_intel_crtc(%struct.drm_crtc* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %36 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %117

40:                                               ; preds = %1
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %16, align 4
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %15, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @DIV_ROUND_UP(i32 %57, i32 2)
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %56, %40
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %14, align 4
  %62 = mul nsw i32 %61, %60
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %15, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32, i32* %14, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @PIPEFRAME(i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @PIPEFRAMEPIXEL(i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %73 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %17, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  br label %77

77:                                               ; preds = %88, %59
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @I915_READ_FW(i32 %78)
  %80 = load i32, i32* @PIPE_FRAME_HIGH_MASK, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @I915_READ_FW(i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @I915_READ_FW(i32 %84)
  %86 = load i32, i32* @PIPE_FRAME_HIGH_MASK, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %77, label %92

92:                                               ; preds = %88
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %94 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %17, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load i32, i32* @PIPE_FRAME_HIGH_SHIFT, align 4
  %99 = load i32, i32* %10, align 4
  %100 = ashr i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @PIPE_PIXEL_MASK, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* @PIPE_FRAME_LOW_SHIFT, align 4
  %105 = load i32, i32* %12, align 4
  %106 = ashr i32 %105, %104
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %10, align 4
  %108 = shl i32 %107, 8
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp sge i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = add nsw i32 %110, %114
  %116 = and i32 %115, 16777215
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %92, %39
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local %struct.TYPE_6__* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @PIPEFRAME(i32) #1

declare dso_local i32 @PIPEFRAMEPIXEL(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @I915_READ_FW(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
