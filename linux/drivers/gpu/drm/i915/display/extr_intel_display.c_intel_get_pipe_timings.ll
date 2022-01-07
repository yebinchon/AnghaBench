; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_get_pipe_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_get_pipe_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@PIPECONF_INTERLACE_MASK = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @intel_get_pipe_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_get_pipe_timings(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %9 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %6, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @HTOTAL(i32 %18)
  %20 = call i32 @I915_READ(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 65535
  %23 = add nsw i32 %22, 1
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %30, 1
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %33 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @transcoder_is_dsi(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @HBLANK(i32 %40)
  %42 = call i32 @I915_READ(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 65535
  %45 = add nsw i32 %44, 1
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 65535
  %53 = add nsw i32 %52, 1
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %55 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %39, %2
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @HSYNC(i32 %59)
  %61 = call i32 @I915_READ(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 65535
  %64 = add nsw i32 %63, 1
  %65 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %66 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 16
  %71 = and i32 %70, 65535
  %72 = add nsw i32 %71, 1
  %73 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %74 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @VTOTAL(i32 %77)
  %79 = call i32 @I915_READ(i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, 65535
  %82 = add nsw i32 %81, 1
  %83 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %84 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 6
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 16
  %89 = and i32 %88, 65535
  %90 = add nsw i32 %89, 1
  %91 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %92 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 7
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @transcoder_is_dsi(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %117, label %98

98:                                               ; preds = %58
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @VBLANK(i32 %99)
  %101 = call i32 @I915_READ(i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, 65535
  %104 = add nsw i32 %103, 1
  %105 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %106 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 8
  store i32 %104, i32* %108, align 4
  %109 = load i32, i32* %8, align 4
  %110 = ashr i32 %109, 16
  %111 = and i32 %110, 65535
  %112 = add nsw i32 %111, 1
  %113 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %114 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 9
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %98, %58
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @VSYNC(i32 %118)
  %120 = call i32 @I915_READ(i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, 65535
  %123 = add nsw i32 %122, 1
  %124 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %125 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 10
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* %8, align 4
  %129 = ashr i32 %128, 16
  %130 = and i32 %129, 65535
  %131 = add nsw i32 %130, 1
  %132 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %133 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 11
  store i32 %131, i32* %135, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @PIPECONF(i32 %136)
  %138 = call i32 @I915_READ(i32 %137)
  %139 = load i32, i32* @PIPECONF_INTERLACE_MASK, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %117
  %143 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %144 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %145 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 12
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %143
  store i32 %149, i32* %147, align 4
  %150 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %151 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %157 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 9
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %142, %117
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @HTOTAL(i32) #1

declare dso_local i32 @transcoder_is_dsi(i32) #1

declare dso_local i32 @HBLANK(i32) #1

declare dso_local i32 @HSYNC(i32) #1

declare dso_local i32 @VTOTAL(i32) #1

declare dso_local i32 @VBLANK(i32) #1

declare dso_local i32 @VSYNC(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
