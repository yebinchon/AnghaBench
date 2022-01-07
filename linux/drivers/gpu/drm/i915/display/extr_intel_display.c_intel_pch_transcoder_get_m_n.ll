; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_pch_transcoder_get_m_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_pch_transcoder_get_m_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_link_m_n = type { i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@TU_SIZE_MASK = common dso_local global i32 0, align 4
@TU_SIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_link_m_n*)* @intel_pch_transcoder_get_m_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pch_transcoder_get_m_n(%struct.intel_crtc* %0, %struct.intel_link_m_n* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_link_m_n*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_link_m_n* %1, %struct.intel_link_m_n** %4, align 8
  %8 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @PCH_TRANS_LINK_M1(i32 %17)
  %19 = call i32 @I915_READ(i32 %18)
  %20 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %21 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @PCH_TRANS_LINK_N1(i32 %22)
  %24 = call i32 @I915_READ(i32 %23)
  %25 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %26 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @PCH_TRANS_DATA_M1(i32 %27)
  %29 = call i32 @I915_READ(i32 %28)
  %30 = load i32, i32* @TU_SIZE_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %34 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @PCH_TRANS_DATA_N1(i32 %35)
  %37 = call i32 @I915_READ(i32 %36)
  %38 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %39 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @PCH_TRANS_DATA_M1(i32 %40)
  %42 = call i32 @I915_READ(i32 %41)
  %43 = load i32, i32* @TU_SIZE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @TU_SIZE_SHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = add nsw i32 %46, 1
  %48 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %49 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PCH_TRANS_LINK_M1(i32) #1

declare dso_local i32 @PCH_TRANS_LINK_N1(i32) #1

declare dso_local i32 @PCH_TRANS_DATA_M1(i32) #1

declare dso_local i32 @PCH_TRANS_DATA_N1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
