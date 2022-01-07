; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_i965_update_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_i965_update_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.intel_crtc = type { %struct.TYPE_17__, %struct.TYPE_13__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@i965_update_wm.sr_latency_ns = internal constant i32 12000, align 4
@I915_FIFO_LINE_SIZE = common dso_local global i32 0, align 4
@I965_FIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"self-refresh entries: %d, wm: %d\0A\00", align 1
@i965_cursor_wm_info = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"self-refresh watermark: display plane %d cursor %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Setting FIFO watermarks - A: 8, B: 8, C: 8, SR %d\0A\00", align 1
@DSPFW1 = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@CURSORB = common dso_local global i32 0, align 4
@PLANEB = common dso_local global i32 0, align 4
@PLANEA = common dso_local global i32 0, align 4
@DSPFW2 = common dso_local global i32 0, align 4
@CURSORA = common dso_local global i32 0, align 4
@PLANEC_OLD = common dso_local global i32 0, align 4
@DSPFW3 = common dso_local global i32 0, align 4
@CURSOR_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*)* @i965_update_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i965_update_wm(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %16 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %3, align 8
  store i32 1, i32* %5, align 4
  store i32 16, i32* %6, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call %struct.intel_crtc* @single_enabled_crtc(%struct.drm_i915_private* %20)
  store %struct.intel_crtc* %21, %struct.intel_crtc** %4, align 8
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %23 = icmp ne %struct.intel_crtc* %22, null
  br i1 %23, label %24, label %104

24:                                               ; preds = %1
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store %struct.drm_display_mode* %29, %struct.drm_display_mode** %8, align 8
  %30 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %31 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %36, align 8
  store %struct.drm_framebuffer* %37, %struct.drm_framebuffer** %9, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %45 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %50 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %49, i32 0, i32 0
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @intel_wm_method2(i32 %56, i32 %57, i32 %58, i32 %59, i32 120)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @I915_FIFO_LINE_SIZE, align 4
  %63 = call i32 @DIV_ROUND_UP(i32 %61, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* @I965_FIFO_SIZE, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %24
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, 511
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %79 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @intel_wm_method2(i32 %76, i32 %77, i32 %85, i32 4, i32 120)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @i965_cursor_wm_info, i32 0, i32 3), align 4
  %89 = call i32 @DIV_ROUND_UP(i32 %87, i32 %88)
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @i965_cursor_wm_info, i32 0, i32 0), align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @i965_cursor_wm_info, i32 0, i32 1), align 4
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @i965_cursor_wm_info, i32 0, i32 2), align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %70
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @i965_cursor_wm_info, i32 0, i32 2), align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %70
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102)
  store i32 1, i32* %7, align 4
  br label %107

104:                                              ; preds = %1
  store i32 0, i32* %7, align 4
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %106 = call i32 @intel_set_memory_cxsr(%struct.drm_i915_private* %105, i32 0)
  br label %107

107:                                              ; preds = %104, %100
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @DSPFW1, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @SR, align 4
  %113 = call i32 @FW_WM(i32 %111, i32 %112)
  %114 = load i32, i32* @CURSORB, align 4
  %115 = call i32 @FW_WM(i32 8, i32 %114)
  %116 = or i32 %113, %115
  %117 = load i32, i32* @PLANEB, align 4
  %118 = call i32 @FW_WM(i32 8, i32 %117)
  %119 = or i32 %116, %118
  %120 = load i32, i32* @PLANEA, align 4
  %121 = call i32 @FW_WM(i32 8, i32 %120)
  %122 = or i32 %119, %121
  %123 = call i32 @I915_WRITE(i32 %110, i32 %122)
  %124 = load i32, i32* @DSPFW2, align 4
  %125 = load i32, i32* @CURSORA, align 4
  %126 = call i32 @FW_WM(i32 8, i32 %125)
  %127 = load i32, i32* @PLANEC_OLD, align 4
  %128 = call i32 @FW_WM(i32 8, i32 %127)
  %129 = or i32 %126, %128
  %130 = call i32 @I915_WRITE(i32 %124, i32 %129)
  %131 = load i32, i32* @DSPFW3, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @CURSOR_SR, align 4
  %134 = call i32 @FW_WM(i32 %132, i32 %133)
  %135 = call i32 @I915_WRITE(i32 %131, i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %107
  %139 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %140 = call i32 @intel_set_memory_cxsr(%struct.drm_i915_private* %139, i32 1)
  br label %141

141:                                              ; preds = %138, %107
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @single_enabled_crtc(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_wm_method2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @intel_set_memory_cxsr(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @FW_WM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
