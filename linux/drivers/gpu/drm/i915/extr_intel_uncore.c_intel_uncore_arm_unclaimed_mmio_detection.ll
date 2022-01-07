; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_arm_unclaimed_mmio_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_arm_unclaimed_mmio_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.intel_uncore = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@i915_modparams = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [128 x i8] c"Unclaimed register detected, enabling oneshot unclaimed register reporting. Please use i915.mmio_debug=N for more information.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_uncore_arm_unclaimed_mmio_detection(%struct.intel_uncore* %0) #0 {
  %2 = alloca %struct.intel_uncore*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %5 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %10 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %21 = call i32 @check_for_unclaimed_mmio(%struct.intel_uncore* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i915_modparams, i32 0, i32 0), align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i915_modparams, i32 0, i32 0), align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i915_modparams, i32 0, i32 0), align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %33 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %19
  br label %39

39:                                               ; preds = %38, %18
  %40 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %41 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @check_for_unclaimed_mmio(%struct.intel_uncore*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
