; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen5_gt_irq_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen5_gt_irq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { i32, %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }

@GT = common dso_local global i32 0, align 4
@GEN6_PM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen5_gt_irq_reset(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %4 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %5 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %4, i32 0, i32 1
  %6 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  store %struct.intel_uncore* %6, %struct.intel_uncore** %3, align 8
  %7 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %8 = load i32, i32* @GT, align 4
  %9 = call i32 @GEN3_IRQ_RESET(%struct.intel_uncore* %7, i32 %8)
  %10 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %11 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @INTEL_GEN(i32 %12)
  %14 = icmp sge i32 %13, 6
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %17 = load i32, i32* @GEN6_PM, align 4
  %18 = call i32 @GEN3_IRQ_RESET(%struct.intel_uncore* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @GEN3_IRQ_RESET(%struct.intel_uncore*, i32) #1

declare dso_local i32 @INTEL_GEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
