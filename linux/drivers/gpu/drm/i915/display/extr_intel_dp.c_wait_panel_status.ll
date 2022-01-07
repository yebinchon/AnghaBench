; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_wait_panel_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_wait_panel_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"mask %08x value %08x status %08x control %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Panel status timeout: status %08x control %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Wait complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*, i32, i32)* @wait_panel_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_panel_status(%struct.intel_dp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %11 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %7, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %16 = call i32 @intel_pps_verify_state(%struct.intel_dp* %15)
  %17 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %18 = call i32 @_pp_stat_reg(%struct.intel_dp* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %20 = call i32 @_pp_ctrl_reg(%struct.intel_dp* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @I915_READ(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @I915_READ(i32 %25)
  %27 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %24, i32 %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @intel_de_wait_for_register(%struct.drm_i915_private* %28, i32 %29, i32 %30, i32 %31, i32 5000)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @I915_READ(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @I915_READ(i32 %37)
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %34, %3
  %41 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @intel_pps_verify_state(%struct.intel_dp*) #1

declare dso_local i32 @_pp_stat_reg(%struct.intel_dp*) #1

declare dso_local i32 @_pp_ctrl_reg(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @intel_de_wait_for_register(%struct.drm_i915_private*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
