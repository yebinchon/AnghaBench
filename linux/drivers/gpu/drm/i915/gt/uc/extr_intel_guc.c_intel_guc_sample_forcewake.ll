; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_sample_forcewake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_sample_forcewake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }

@INTEL_GUC_ACTION_SAMPLE_FORCEWAKE = common dso_local global i32 0, align 4
@GUC_FORCEWAKE_RENDER = common dso_local global i32 0, align 4
@GUC_FORCEWAKE_MEDIA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_guc_sample_forcewake(%struct.intel_guc* %0) #0 {
  %2 = alloca %struct.intel_guc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %2, align 8
  %5 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %6 = call %struct.TYPE_2__* @guc_to_gt(%struct.intel_guc* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load i32, i32* @INTEL_GUC_ACTION_SAMPLE_FORCEWAKE, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = call i32 @HAS_RC6(%struct.drm_i915_private* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = call i64 @NEEDS_WaRsDisableCoarsePowerGating(%struct.drm_i915_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %1
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %19, align 4
  br label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @GUC_FORCEWAKE_RENDER, align 4
  %22 = load i32, i32* @GUC_FORCEWAKE_MEDIA, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %18
  %26 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = call i32 @intel_guc_send(%struct.intel_guc* %26, i32* %27, i32 %29)
  ret i32 %30
}

declare dso_local %struct.TYPE_2__* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @HAS_RC6(%struct.drm_i915_private*) #1

declare dso_local i64 @NEEDS_WaRsDisableCoarsePowerGating(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_guc_send(%struct.intel_guc*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
