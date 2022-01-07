; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_pm_irq.c_gen6_gt_pm_reset_iir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_pm_irq.c_gen6_gt_pm_reset_iir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { i32, i32, %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }

@GEN6_PMIIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen6_gt_pm_reset_iir(%struct.intel_gt* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_uncore*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %8 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %7, i32 0, i32 2
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  store %struct.intel_uncore* %9, %struct.intel_uncore** %5, align 8
  %10 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %11 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @INTEL_GEN(i32 %12)
  %14 = icmp sge i32 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @GEN8_GT_IIR(i32 2)
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @GEN6_PMIIR, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %6, align 4
  %21 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %22 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %21, i32 0, i32 0
  %23 = call i32 @lockdep_assert_held(i32* %22)
  %24 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @intel_uncore_write(%struct.intel_uncore* %24, i32 %25, i32 %26)
  %28 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @intel_uncore_write(%struct.intel_uncore* %28, i32 %29, i32 %30)
  %32 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @intel_uncore_posting_read(%struct.intel_uncore* %32, i32 %33)
  ret void
}

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @GEN8_GT_IIR(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @intel_uncore_posting_read(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
