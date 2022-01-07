; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_pch_transcoder_set_m_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_pch_transcoder_set_m_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_link_m_n = type { i32, i32, i32, i32, i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.intel_link_m_n*)* @intel_pch_transcoder_set_m_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pch_transcoder_set_m_n(%struct.intel_crtc_state* %0, %struct.intel_link_m_n* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_link_m_n*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.intel_link_m_n* %1, %struct.intel_link_m_n** %4, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.intel_crtc* @to_intel_crtc(i32 %11)
  store %struct.intel_crtc* %12, %struct.intel_crtc** %5, align 8
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %14 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %19 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @PCH_TRANS_DATA_M1(i32 %21)
  %23 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %24 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @TU_SIZE(i32 %25)
  %27 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %28 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %26, %29
  %31 = call i32 @I915_WRITE(i32 %22, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @PCH_TRANS_DATA_N1(i32 %32)
  %34 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %35 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @I915_WRITE(i32 %33, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @PCH_TRANS_LINK_M1(i32 %38)
  %40 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %41 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @I915_WRITE(i32 %39, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @PCH_TRANS_LINK_N1(i32 %44)
  %46 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %4, align 8
  %47 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @I915_WRITE(i32 %45, i32 %48)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PCH_TRANS_DATA_M1(i32) #1

declare dso_local i32 @TU_SIZE(i32) #1

declare dso_local i32 @PCH_TRANS_DATA_N1(i32) #1

declare dso_local i32 @PCH_TRANS_LINK_M1(i32) #1

declare dso_local i32 @PCH_TRANS_LINK_N1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
