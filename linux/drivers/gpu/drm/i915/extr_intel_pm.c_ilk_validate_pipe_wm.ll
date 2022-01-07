; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_validate_pipe_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_validate_pipe_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_pipe_wm = type { i32*, i32, i32 }
%struct.intel_wm_config = type { i32, i32, i32 }
%struct.ilk_wm_maximums = type { i32 }

@INTEL_DDB_PART_1_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"LP0 watermark invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_pipe_wm*)* @ilk_validate_pipe_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilk_validate_pipe_wm(%struct.drm_i915_private* %0, %struct.intel_pipe_wm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_pipe_wm*, align 8
  %6 = alloca %struct.intel_wm_config, align 4
  %7 = alloca %struct.ilk_wm_maximums, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_pipe_wm* %1, %struct.intel_pipe_wm** %5, align 8
  %8 = getelementptr inbounds %struct.intel_wm_config, %struct.intel_wm_config* %6, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.intel_wm_config, %struct.intel_wm_config* %6, i32 0, i32 1
  %10 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %5, align 8
  %11 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.intel_wm_config, %struct.intel_wm_config* %6, i32 0, i32 2
  %14 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %5, align 8
  %15 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = load i32, i32* @INTEL_DDB_PART_1_2, align 4
  %19 = call i32 @ilk_compute_wm_maximums(%struct.drm_i915_private* %17, i32 0, %struct.intel_wm_config* %6, i32 %18, %struct.ilk_wm_maximums* %7)
  %20 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %5, align 8
  %21 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = call i32 @ilk_validate_wm_level(i32 0, %struct.ilk_wm_maximums* %7, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ilk_compute_wm_maximums(%struct.drm_i915_private*, i32, %struct.intel_wm_config*, i32, %struct.ilk_wm_maximums*) #1

declare dso_local i32 @ilk_validate_wm_level(i32, %struct.ilk_wm_maximums*, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
