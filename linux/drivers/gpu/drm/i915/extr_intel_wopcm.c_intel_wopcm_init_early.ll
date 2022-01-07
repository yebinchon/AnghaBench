; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wopcm.c_intel_wopcm_init_early.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wopcm.c_intel_wopcm_init_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_wopcm = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GEN11_WOPCM_SIZE = common dso_local global i32 0, align 4
@GEN9_WOPCM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"WOPCM: %uK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_wopcm_init_early(%struct.intel_wopcm* %0) #0 {
  %2 = alloca %struct.intel_wopcm*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_wopcm* %0, %struct.intel_wopcm** %2, align 8
  %4 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %5 = call %struct.drm_i915_private* @wopcm_to_i915(%struct.intel_wopcm* %4)
  store %struct.drm_i915_private* %5, %struct.drm_i915_private** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = call i32 @HAS_GT_UC(%struct.drm_i915_private* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = call i32 @INTEL_GEN(%struct.drm_i915_private* %11)
  %13 = icmp sge i32 %12, 11
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @GEN11_WOPCM_SIZE, align 4
  %16 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %17 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @GEN9_WOPCM_SIZE, align 4
  %20 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %21 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %28 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 1024
  %31 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %22, %9
  ret void
}

declare dso_local %struct.drm_i915_private* @wopcm_to_i915(%struct.intel_wopcm*) #1

declare dso_local i32 @HAS_GT_UC(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
