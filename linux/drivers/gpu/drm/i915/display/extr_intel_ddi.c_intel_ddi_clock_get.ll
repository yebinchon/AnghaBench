; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_clock_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_ddi_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_clock_get(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %6 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %7 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_i915_private* @to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %5, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %12 = call i32 @INTEL_GEN(%struct.drm_i915_private* %11)
  %13 = icmp sge i32 %12, 11
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %17 = call i32 @icl_ddi_clock_get(%struct.intel_encoder* %15, %struct.intel_crtc_state* %16)
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %20 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %25 = call i32 @cnl_ddi_clock_get(%struct.intel_encoder* %23, %struct.intel_crtc_state* %24)
  br label %53

26:                                               ; preds = %18
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %28 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %33 = call i32 @bxt_ddi_clock_get(%struct.intel_encoder* %31, %struct.intel_crtc_state* %32)
  br label %52

34:                                               ; preds = %26
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %36 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %41 = call i32 @skl_ddi_clock_get(%struct.intel_encoder* %39, %struct.intel_crtc_state* %40)
  br label %51

42:                                               ; preds = %34
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %44 = call i32 @INTEL_GEN(%struct.drm_i915_private* %43)
  %45 = icmp sle i32 %44, 8
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %49 = call i32 @hsw_ddi_clock_get(%struct.intel_encoder* %47, %struct.intel_crtc_state* %48)
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %52, %22
  br label %54

54:                                               ; preds = %53, %14
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @icl_ddi_clock_get(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_ddi_clock_get(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_ddi_clock_get(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_ddi_clock_get(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @hsw_ddi_clock_get(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
