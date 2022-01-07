; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_set_drps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_set_drps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@mchdev_lock = common dso_local global i32 0, align 4
@MEMSWCTL = common dso_local global i32 0, align 4
@MEMCTL_CMD_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"gpu busy, RCS change rejected\0A\00", align 1
@MEMCTL_CMD_CHFREQ = common dso_local global i32 0, align 4
@MEMCTL_CMD_SHIFT = common dso_local global i32 0, align 4
@MEMCTL_FREQ_SHIFT = common dso_local global i32 0, align 4
@MEMCTL_SFCAVM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ironlake_set_drps(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_uncore*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  store %struct.intel_uncore* %9, %struct.intel_uncore** %6, align 8
  %10 = call i32 @lockdep_assert_held(i32* @mchdev_lock)
  %11 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %12 = load i32, i32* @MEMSWCTL, align 4
  %13 = call i32 @intel_uncore_read16(%struct.intel_uncore* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MEMCTL_CMD_STS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %44

20:                                               ; preds = %2
  %21 = load i32, i32* @MEMCTL_CMD_CHFREQ, align 4
  %22 = load i32, i32* @MEMCTL_CMD_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MEMCTL_FREQ_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = load i32, i32* @MEMCTL_SFCAVM, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %31 = load i32, i32* @MEMSWCTL, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @intel_uncore_write16(%struct.intel_uncore* %30, i32 %31, i32 %32)
  %34 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %35 = load i32, i32* @MEMSWCTL, align 4
  %36 = call i32 @intel_uncore_posting_read16(%struct.intel_uncore* %34, i32 %35)
  %37 = load i32, i32* @MEMCTL_CMD_STS, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %41 = load i32, i32* @MEMSWCTL, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @intel_uncore_write16(%struct.intel_uncore* %40, i32 %41, i32 %42)
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %20, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @intel_uncore_read16(%struct.intel_uncore*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @intel_uncore_write16(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @intel_uncore_posting_read16(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
