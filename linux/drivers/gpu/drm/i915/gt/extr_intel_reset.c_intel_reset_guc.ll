; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_intel_reset_guc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_intel_reset_guc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { i32, i32 }

@GEN11_GRDOM_GUC = common dso_local global i32 0, align 4
@GEN9_GRDOM_GUC = common dso_local global i32 0, align 4
@FORCEWAKE_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_reset_guc(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %5 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %6 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @INTEL_GEN(i32 %7)
  %9 = icmp sge i32 %8, 11
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @GEN11_GRDOM_GUC, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @GEN9_GRDOM_GUC, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %3, align 4
  %16 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %17 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @HAS_GT_UC(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @GEM_BUG_ON(i32 %22)
  %24 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %25 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FORCEWAKE_ALL, align 4
  %28 = call i32 @intel_uncore_forcewake_get(i32 %26, i32 %27)
  %29 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @gen6_hw_domain_reset(%struct.intel_gt* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %33 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FORCEWAKE_ALL, align 4
  %36 = call i32 @intel_uncore_forcewake_put(i32 %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @HAS_GT_UC(i32) #1

declare dso_local i32 @intel_uncore_forcewake_get(i32, i32) #1

declare dso_local i32 @gen6_hw_domain_reset(%struct.intel_gt*, i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
