; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_pfit_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_pfit_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @ironlake_pfit_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_pfit_disable(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %6 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %7 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.intel_crtc* @to_intel_crtc(i32 %9)
  store %struct.intel_crtc* %10, %struct.intel_crtc** %3, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %4, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @PF_CTL(i32 %25)
  %27 = call i32 @I915_WRITE(i32 %26, i32 0)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @PF_WIN_POS(i32 %28)
  %30 = call i32 @I915_WRITE(i32 %29, i32 0)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @PF_WIN_SZ(i32 %31)
  %33 = call i32 @I915_WRITE(i32 %32, i32 0)
  br label %34

34:                                               ; preds = %24, %1
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PF_CTL(i32) #1

declare dso_local i32 @PF_WIN_POS(i32) #1

declare dso_local i32 @PF_WIN_SZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
