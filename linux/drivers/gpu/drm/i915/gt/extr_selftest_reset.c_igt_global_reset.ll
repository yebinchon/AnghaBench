; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_reset.c_igt_global_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_reset.c_igt_global_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ALL_ENGINES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No GPU reset recorded!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_global_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_global_reset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.intel_gt*
  store %struct.intel_gt* %8, %struct.intel_gt** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %10 = call i32 @igt_global_reset_lock(%struct.intel_gt* %9)
  %11 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %12 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @intel_runtime_pm_get(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %17 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @i915_reset_count(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %22 = load i32, i32* @ALL_ENGINES, align 4
  %23 = call i32 @intel_gt_reset(%struct.intel_gt* %21, i32 %22, i32* null)
  %24 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %25 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @i915_reset_count(i32* %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %1
  %36 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %37 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @intel_runtime_pm_put(i32* %39, i32 %40)
  %42 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %43 = call i32 @igt_global_reset_unlock(%struct.intel_gt* %42)
  %44 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %45 = call i64 @intel_gt_is_wedged(%struct.intel_gt* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %35
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @igt_global_reset_lock(%struct.intel_gt*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @i915_reset_count(i32*) #1

declare dso_local i32 @intel_gt_reset(%struct.intel_gt*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

declare dso_local i32 @igt_global_reset_unlock(%struct.intel_gt*) #1

declare dso_local i64 @intel_gt_is_wedged(%struct.intel_gt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
