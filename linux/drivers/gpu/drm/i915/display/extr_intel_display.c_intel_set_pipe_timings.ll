; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_set_pipe_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_set_pipe_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@INTEL_OUTPUT_SDVO = common dso_local global i32 0, align 4
@TRANSCODER_EDP = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@PIPE_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @intel_set_pipe_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_set_pipe_timings(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %12 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.intel_crtc* @to_intel_crtc(i32 %14)
  store %struct.intel_crtc* %15, %struct.intel_crtc** %3, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_i915_private* @to_i915(i32 %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %4, align 8
  %21 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.drm_display_mode* %29, %struct.drm_display_mode** %7, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %1
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %48 = load i32, i32* @INTEL_OUTPUT_SDVO, align 4
  %49 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sdiv i32 %55, 2
  store i32 %56, i32* %10, align 4
  br label %66

57:                                               ; preds = %42
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 2
  %65 = sub nsw i32 %60, %64
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %57, %51
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %69, %66
  br label %76

76:                                               ; preds = %75, %1
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %78 = call i32 @INTEL_GEN(%struct.drm_i915_private* %77)
  %79 = icmp sgt i32 %78, 3
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @VSYNCSHIFT(i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @I915_WRITE(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %76
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @HTOTAL(i32 %86)
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %89 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = shl i32 %95, 16
  %97 = or i32 %91, %96
  %98 = call i32 @I915_WRITE(i32 %87, i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @HBLANK(i32 %99)
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %106 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 1
  %109 = shl i32 %108, 16
  %110 = or i32 %104, %109
  %111 = call i32 @I915_WRITE(i32 %100, i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @HSYNC(i32 %112)
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %115 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %119 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, 1
  %122 = shl i32 %121, 16
  %123 = or i32 %117, %122
  %124 = call i32 @I915_WRITE(i32 %113, i32 %123)
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @VTOTAL(i32 %125)
  %127 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %128 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, 1
  %131 = load i32, i32* %8, align 4
  %132 = sub nsw i32 %131, 1
  %133 = shl i32 %132, 16
  %134 = or i32 %130, %133
  %135 = call i32 @I915_WRITE(i32 %126, i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @VBLANK(i32 %136)
  %138 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %139 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %138, i32 0, i32 10
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, 1
  %142 = load i32, i32* %9, align 4
  %143 = sub nsw i32 %142, 1
  %144 = shl i32 %143, 16
  %145 = or i32 %141, %144
  %146 = call i32 @I915_WRITE(i32 %137, i32 %145)
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @VSYNC(i32 %147)
  %149 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %150 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %149, i32 0, i32 11
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 1
  %153 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %154 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %153, i32 0, i32 12
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, 1
  %157 = shl i32 %156, 16
  %158 = or i32 %152, %157
  %159 = call i32 @I915_WRITE(i32 %148, i32 %158)
  %160 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %161 = call i64 @IS_HASWELL(%struct.drm_i915_private* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %182

163:                                              ; preds = %85
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @TRANSCODER_EDP, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %163
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @PIPE_B, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @PIPE_C, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %171, %167
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @VTOTAL(i32 %176)
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @VTOTAL(i32 %178)
  %180 = call i32 @I915_READ(i32 %179)
  %181 = call i32 @I915_WRITE(i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %175, %171, %163, %85
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @VSYNCSHIFT(i32) #1

declare dso_local i32 @HTOTAL(i32) #1

declare dso_local i32 @HBLANK(i32) #1

declare dso_local i32 @HSYNC(i32) #1

declare dso_local i32 @VTOTAL(i32) #1

declare dso_local i32 @VBLANK(i32) #1

declare dso_local i32 @VSYNC(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
