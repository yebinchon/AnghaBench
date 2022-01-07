; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_get_pfit_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_get_pfit_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8* }
%struct.drm_i915_private = type { i32 }

@PF_ENABLE = common dso_local global i32 0, align 4
@PF_PIPE_SEL_MASK_IVB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @ironlake_get_pfit_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_get_pfit_config(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %8 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @PF_CTL(i32 %16)
  %18 = call i8* @I915_READ(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PF_ENABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %2
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @PF_WIN_POS(i32 %30)
  %32 = call i8* @I915_READ(i32 %31)
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %34 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i8* %32, i8** %35, align 8
  %36 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %37 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PF_WIN_SZ(i32 %38)
  %40 = call i8* @I915_READ(i32 %39)
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %45 = call i64 @IS_GEN(%struct.drm_i915_private* %44, i32 7)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %24
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PF_PIPE_SEL_MASK_IVB, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %52 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PF_PIPE_SEL_IVB(i32 %53)
  %55 = icmp ne i32 %50, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  br label %58

58:                                               ; preds = %47, %24
  br label %59

59:                                               ; preds = %58, %2
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i32 @PF_CTL(i32) #1

declare dso_local i32 @PF_WIN_POS(i32) #1

declare dso_local i32 @PF_WIN_SZ(i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PF_PIPE_SEL_IVB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
