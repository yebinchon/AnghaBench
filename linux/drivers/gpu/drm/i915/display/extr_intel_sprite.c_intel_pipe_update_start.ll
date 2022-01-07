; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_pipe_update_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_pipe_update_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.intel_crtc = type { %struct.TYPE_7__, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@INTEL_OUTPUT_DSI = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@VBLANK_EVASION_TIME_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"PSR idle timed out 0x%x, atomic update may fail\0A\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Potential atomic update failure on pipe %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pipe_update_start(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.intel_crtc* @to_intel_crtc(i32 %17)
  store %struct.intel_crtc* %18, %struct.intel_crtc** %3, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.drm_i915_private* @to_i915(i32 %22)
  store %struct.drm_i915_private* %23, %struct.drm_i915_private** %4, align 8
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.drm_display_mode* %26, %struct.drm_display_mode** %5, align 8
  %27 = call i64 @msecs_to_jiffies_timeout(i32 1)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 1
  %30 = call i32* @drm_crtc_vblank_waitqueue(%struct.TYPE_8__* %29)
  store i32* %30, i32** %11, align 8
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %1
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %36 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %1
  %39 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %40 = load i32, i32* @INTEL_OUTPUT_DSI, align 4
  %41 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i1 [ false, %34 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* @wait, align 4
  %47 = call i32 @DEFINE_WAIT(i32 %46)
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @DIV_ROUND_UP(i32 %58, i32 2)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %43
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %63 = load i32, i32* @VBLANK_EVASION_TIME_US, align 4
  %64 = call i32 @intel_usecs_to_scanlines(%struct.drm_display_mode* %62, i32 %63)
  %65 = sub nsw i32 %61, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %60
  br label %162

74:                                               ; preds = %70
  %75 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %76 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %75, i32 0, i32 1
  %77 = call i32 @drm_crtc_vblank_get(%struct.TYPE_8__* %76)
  %78 = call i64 @WARN_ON(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %162

81:                                               ; preds = %74
  %82 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %83 = call i64 @intel_psr_wait_for_idle(%struct.intel_crtc_state* %82, i32* %13)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %81
  %89 = call i32 (...) @local_irq_disable()
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %92 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %96 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %99 = call i32 @trace_i915_pipe_update_start(%struct.intel_crtc* %98)
  br label %100

100:                                              ; preds = %123, %88
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %103 = call i32 @prepare_to_wait(i32* %101, i32* @wait, i32 %102)
  %104 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %105 = call i32 @intel_get_crtc_scanline(%struct.intel_crtc* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %100
  br label %128

114:                                              ; preds = %109
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %119 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @pipe_name(i32 %120)
  %122 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  br label %128

123:                                              ; preds = %114
  %124 = call i32 (...) @local_irq_enable()
  %125 = load i64, i64* %6, align 8
  %126 = call i64 @schedule_timeout(i64 %125)
  store i64 %126, i64* %6, align 8
  %127 = call i32 (...) @local_irq_disable()
  br label %100

128:                                              ; preds = %117, %113
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @finish_wait(i32* %129, i32* @wait)
  %131 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %132 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %131, i32 0, i32 1
  %133 = call i32 @drm_crtc_vblank_put(%struct.TYPE_8__* %132)
  br label %134

134:                                              ; preds = %143, %128
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp eq i32 %138, %139
  br label %141

141:                                              ; preds = %137, %134
  %142 = phi i1 [ false, %134 ], [ %140, %137 ]
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %145 = call i32 @intel_get_crtc_scanline(%struct.intel_crtc* %144)
  store i32 %145, i32* %7, align 4
  br label %134

146:                                              ; preds = %141
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %149 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  store i32 %147, i32* %150, align 4
  %151 = call i32 (...) @ktime_get()
  %152 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %153 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 4
  store i32 %151, i32* %154, align 4
  %155 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %156 = call i32 @intel_crtc_get_vblank_counter(%struct.intel_crtc* %155)
  %157 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %158 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 3
  store i32 %156, i32* %159, align 4
  %160 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %161 = call i32 @trace_i915_pipe_update_vblank_evaded(%struct.intel_crtc* %160)
  br label %164

162:                                              ; preds = %80, %73
  %163 = call i32 (...) @local_irq_disable()
  br label %164

164:                                              ; preds = %162, %146
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @msecs_to_jiffies_timeout(i32) #1

declare dso_local i32* @drm_crtc_vblank_waitqueue(%struct.TYPE_8__*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @intel_usecs_to_scanlines(%struct.drm_display_mode*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_crtc_vblank_get(%struct.TYPE_8__*) #1

declare dso_local i64 @intel_psr_wait_for_idle(%struct.intel_crtc_state*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @trace_i915_pipe_update_start(%struct.intel_crtc*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @intel_get_crtc_scanline(%struct.intel_crtc*) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.TYPE_8__*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @intel_crtc_get_vblank_counter(%struct.intel_crtc*) #1

declare dso_local i32 @trace_i915_pipe_update_vblank_evaded(%struct.intel_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
