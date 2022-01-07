; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_reset.c_igt_wedged_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_reset.c_igt_wedged_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ALL_ENGINES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_wedged_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_wedged_reset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.intel_gt*
  store %struct.intel_gt* %6, %struct.intel_gt** %3, align 8
  %7 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %8 = call i32 @igt_global_reset_lock(%struct.intel_gt* %7)
  %9 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %10 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @intel_runtime_pm_get(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %15 = call i32 @intel_gt_set_wedged(%struct.intel_gt* %14)
  %16 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %17 = call i64 @intel_gt_is_wedged(%struct.intel_gt* %16)
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @GEM_BUG_ON(i32 %20)
  %22 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %23 = load i32, i32* @ALL_ENGINES, align 4
  %24 = call i32 @intel_gt_reset(%struct.intel_gt* %22, i32 %23, i32* null)
  %25 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %26 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @intel_runtime_pm_put(i32* %28, i32 %29)
  %31 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %32 = call i32 @igt_global_reset_unlock(%struct.intel_gt* %31)
  %33 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %34 = call i64 @intel_gt_is_wedged(%struct.intel_gt* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  ret i32 %41
}

declare dso_local i32 @igt_global_reset_lock(%struct.intel_gt*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @intel_gt_set_wedged(%struct.intel_gt*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @intel_gt_is_wedged(%struct.intel_gt*) #1

declare dso_local i32 @intel_gt_reset(%struct.intel_gt*, i32, i32*) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

declare dso_local i32 @igt_global_reset_unlock(%struct.intel_gt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
