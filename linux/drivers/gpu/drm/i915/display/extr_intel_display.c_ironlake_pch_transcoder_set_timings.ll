; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_pch_transcoder_set_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_pch_transcoder_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, i32)* @ironlake_pch_transcoder_set_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_pch_transcoder_set_timings(%struct.intel_crtc_state* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.intel_crtc* @to_intel_crtc(i32 %11)
  store %struct.intel_crtc* %12, %struct.intel_crtc** %5, align 8
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %14 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @PCH_TRANS_HTOTAL(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @HTOTAL(i32 %23)
  %25 = call i32 @I915_READ(i32 %24)
  %26 = call i32 @I915_WRITE(i32 %22, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @PCH_TRANS_HBLANK(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @HBLANK(i32 %29)
  %31 = call i32 @I915_READ(i32 %30)
  %32 = call i32 @I915_WRITE(i32 %28, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @PCH_TRANS_HSYNC(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @HSYNC(i32 %35)
  %37 = call i32 @I915_READ(i32 %36)
  %38 = call i32 @I915_WRITE(i32 %34, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @PCH_TRANS_VTOTAL(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @VTOTAL(i32 %41)
  %43 = call i32 @I915_READ(i32 %42)
  %44 = call i32 @I915_WRITE(i32 %40, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @PCH_TRANS_VBLANK(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @VBLANK(i32 %47)
  %49 = call i32 @I915_READ(i32 %48)
  %50 = call i32 @I915_WRITE(i32 %46, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @PCH_TRANS_VSYNC(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @VSYNC(i32 %53)
  %55 = call i32 @I915_READ(i32 %54)
  %56 = call i32 @I915_WRITE(i32 %52, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @PCH_TRANS_VSYNCSHIFT(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @VSYNCSHIFT(i32 %59)
  %61 = call i32 @I915_READ(i32 %60)
  %62 = call i32 @I915_WRITE(i32 %58, i32 %61)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PCH_TRANS_HTOTAL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @HTOTAL(i32) #1

declare dso_local i32 @PCH_TRANS_HBLANK(i32) #1

declare dso_local i32 @HBLANK(i32) #1

declare dso_local i32 @PCH_TRANS_HSYNC(i32) #1

declare dso_local i32 @HSYNC(i32) #1

declare dso_local i32 @PCH_TRANS_VTOTAL(i32) #1

declare dso_local i32 @VTOTAL(i32) #1

declare dso_local i32 @PCH_TRANS_VBLANK(i32) #1

declare dso_local i32 @VBLANK(i32) #1

declare dso_local i32 @PCH_TRANS_VSYNC(i32) #1

declare dso_local i32 @VSYNC(i32) #1

declare dso_local i32 @PCH_TRANS_VSYNCSHIFT(i32) #1

declare dso_local i32 @VSYNCSHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
