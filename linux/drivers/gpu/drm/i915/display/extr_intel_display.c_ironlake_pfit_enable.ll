; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_pfit_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_pfit_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PF_ENABLE = common dso_local global i32 0, align 4
@PF_FILTER_MED_3x3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @ironlake_pfit_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_pfit_enable(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %6 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %7 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.intel_crtc* @to_intel_crtc(i32 %9)
  store %struct.intel_crtc* %10, %struct.intel_crtc** %3, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %4, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %1
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = call i64 @IS_HASWELL(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @PF_CTL(i32 %33)
  %35 = load i32, i32* @PF_ENABLE, align 4
  %36 = load i32, i32* @PF_FILTER_MED_3x3, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @PF_PIPE_SEL_IVB(i32 %38)
  %40 = or i32 %37, %39
  %41 = call i32 @I915_WRITE(i32 %34, i32 %40)
  br label %49

42:                                               ; preds = %28
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @PF_CTL(i32 %43)
  %45 = load i32, i32* @PF_ENABLE, align 4
  %46 = load i32, i32* @PF_FILTER_MED_3x3, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @I915_WRITE(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %32
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @PF_WIN_POS(i32 %50)
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %53 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @I915_WRITE(i32 %51, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @PF_WIN_SZ(i32 %57)
  %59 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %60 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @I915_WRITE(i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %49, %1
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PF_CTL(i32) #1

declare dso_local i32 @PF_PIPE_SEL_IVB(i32) #1

declare dso_local i32 @PF_WIN_POS(i32) #1

declare dso_local i32 @PF_WIN_SZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
