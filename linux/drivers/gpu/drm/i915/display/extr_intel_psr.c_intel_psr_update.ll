; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.intel_crtc_state = type { i64, i64 }
%struct.drm_i915_private = type { %struct.i915_psr }
%struct.i915_psr = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_psr_update(%struct.intel_dp* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.i915_psr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %9 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %10 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %5, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  store %struct.i915_psr* %12, %struct.i915_psr** %6, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %14 = call i32 @CAN_PSR(%struct.drm_i915_private* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.i915_psr*, %struct.i915_psr** %6, align 8
  %18 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.intel_dp* @READ_ONCE(i32 %19)
  %21 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %22 = icmp ne %struct.intel_dp* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %2
  br label %119

24:                                               ; preds = %16
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %26, i32 0, i32 2
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %30 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.i915_psr*, %struct.i915_psr** %6, align 8
  %35 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @psr_global_enabled(i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %33, %24
  %40 = phi i1 [ false, %24 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %44 = call i32 @intel_psr2_enabled(%struct.drm_i915_private* %42, %struct.intel_crtc_state* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.i915_psr*, %struct.i915_psr** %6, align 8
  %47 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %98

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.i915_psr*, %struct.i915_psr** %6, align 8
  %53 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %50
  %57 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %58 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.i915_psr*, %struct.i915_psr** %6, align 8
  %63 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %68 = call i32 @psr_force_hw_tracking_exit(%struct.drm_i915_private* %67)
  br label %97

69:                                               ; preds = %61, %56
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %71 = call i32 @INTEL_GEN(%struct.drm_i915_private* %70)
  %72 = icmp slt i32 %71, 9
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %74 = load %struct.i915_psr*, %struct.i915_psr** %6, align 8
  %75 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %80 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %78
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %86 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %84
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %92 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %92, i32 0, i32 3
  %94 = call i32 @schedule_work(i32* %93)
  br label %95

95:                                               ; preds = %90, %84, %78
  br label %96

96:                                               ; preds = %95, %73, %69
  br label %97

97:                                               ; preds = %96, %66
  br label %114

98:                                               ; preds = %50, %39
  %99 = load %struct.i915_psr*, %struct.i915_psr** %6, align 8
  %100 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %105 = call i32 @intel_psr_disable_locked(%struct.intel_dp* %104)
  br label %106

106:                                              ; preds = %103, %98
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %111 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %112 = call i32 @intel_psr_enable_locked(%struct.drm_i915_private* %110, %struct.intel_crtc_state* %111)
  br label %113

113:                                              ; preds = %109, %106
  br label %114

114:                                              ; preds = %113, %97
  %115 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %116 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.i915_psr, %struct.i915_psr* %116, i32 0, i32 2
  %118 = call i32 @mutex_unlock(i32* %117)
  br label %119

119:                                              ; preds = %114, %23
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @CAN_PSR(%struct.drm_i915_private*) #1

declare dso_local %struct.intel_dp* @READ_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @psr_global_enabled(i32) #1

declare dso_local i32 @intel_psr2_enabled(%struct.drm_i915_private*, %struct.intel_crtc_state*) #1

declare dso_local i32 @psr_force_hw_tracking_exit(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @intel_psr_disable_locked(%struct.intel_dp*) #1

declare dso_local i32 @intel_psr_enable_locked(%struct.drm_i915_private*, %struct.intel_crtc_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
