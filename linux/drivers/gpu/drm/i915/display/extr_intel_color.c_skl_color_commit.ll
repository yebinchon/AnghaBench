; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_skl_color_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_skl_color_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@SKL_BOTTOM_COLOR_GAMMA_ENABLE = common dso_local global i32 0, align 4
@SKL_BOTTOM_COLOR_CSC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @skl_color_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_color_commit(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %7 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %8 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.intel_crtc* @to_intel_crtc(i32 %10)
  store %struct.intel_crtc* %11, %struct.intel_crtc** %3, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %4, align 8
  %17 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @SKL_BOTTOM_COLOR_GAMMA_ENABLE, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %30 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @SKL_BOTTOM_COLOR_CSC_ENABLE, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @SKL_BOTTOM_COLOR(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @I915_WRITE(i32 %39, i32 %40)
  %42 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %43 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @GAMMA_MODE(i32 %44)
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @I915_WRITE(i32 %45, i32 %48)
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %51 = call i32 @INTEL_GEN(%struct.drm_i915_private* %50)
  %52 = icmp sge i32 %51, 11
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %55 = call i32 @icl_load_csc_matrix(%struct.intel_crtc_state* %54)
  br label %59

56:                                               ; preds = %37
  %57 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %58 = call i32 @ilk_load_csc_matrix(%struct.intel_crtc_state* %57)
  br label %59

59:                                               ; preds = %56, %53
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @SKL_BOTTOM_COLOR(i32) #1

declare dso_local i32 @GAMMA_MODE(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @icl_load_csc_matrix(%struct.intel_crtc_state*) #1

declare dso_local i32 @ilk_load_csc_matrix(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
