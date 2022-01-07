; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen11_gt_irq_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen11_gt_irq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }

@GEN11_RENDER_COPY_INTR_ENABLE = common dso_local global i32 0, align 4
@GEN11_VCS_VECS_INTR_ENABLE = common dso_local global i32 0, align 4
@GEN11_RCS0_RSVD_INTR_MASK = common dso_local global i32 0, align 4
@GEN11_BCS_RSVD_INTR_MASK = common dso_local global i32 0, align 4
@GEN11_VCS0_VCS1_INTR_MASK = common dso_local global i32 0, align 4
@GEN11_VCS2_VCS3_INTR_MASK = common dso_local global i32 0, align 4
@GEN11_VECS0_VECS1_INTR_MASK = common dso_local global i32 0, align 4
@GEN11_GPM_WGBOXPERF_INTR_ENABLE = common dso_local global i32 0, align 4
@GEN11_GPM_WGBOXPERF_INTR_MASK = common dso_local global i32 0, align 4
@GEN11_GUC_SG_INTR_ENABLE = common dso_local global i32 0, align 4
@GEN11_GUC_SG_INTR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen11_gt_irq_reset(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %4 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %5 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %4, i32 0, i32 0
  %6 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  store %struct.intel_uncore* %6, %struct.intel_uncore** %3, align 8
  %7 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %8 = load i32, i32* @GEN11_RENDER_COPY_INTR_ENABLE, align 4
  %9 = call i32 @intel_uncore_write(%struct.intel_uncore* %7, i32 %8, i32 0)
  %10 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %11 = load i32, i32* @GEN11_VCS_VECS_INTR_ENABLE, align 4
  %12 = call i32 @intel_uncore_write(%struct.intel_uncore* %10, i32 %11, i32 0)
  %13 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %14 = load i32, i32* @GEN11_RCS0_RSVD_INTR_MASK, align 4
  %15 = call i32 @intel_uncore_write(%struct.intel_uncore* %13, i32 %14, i32 -1)
  %16 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %17 = load i32, i32* @GEN11_BCS_RSVD_INTR_MASK, align 4
  %18 = call i32 @intel_uncore_write(%struct.intel_uncore* %16, i32 %17, i32 -1)
  %19 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %20 = load i32, i32* @GEN11_VCS0_VCS1_INTR_MASK, align 4
  %21 = call i32 @intel_uncore_write(%struct.intel_uncore* %19, i32 %20, i32 -1)
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %23 = load i32, i32* @GEN11_VCS2_VCS3_INTR_MASK, align 4
  %24 = call i32 @intel_uncore_write(%struct.intel_uncore* %22, i32 %23, i32 -1)
  %25 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %26 = load i32, i32* @GEN11_VECS0_VECS1_INTR_MASK, align 4
  %27 = call i32 @intel_uncore_write(%struct.intel_uncore* %25, i32 %26, i32 -1)
  %28 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %29 = load i32, i32* @GEN11_GPM_WGBOXPERF_INTR_ENABLE, align 4
  %30 = call i32 @intel_uncore_write(%struct.intel_uncore* %28, i32 %29, i32 0)
  %31 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %32 = load i32, i32* @GEN11_GPM_WGBOXPERF_INTR_MASK, align 4
  %33 = call i32 @intel_uncore_write(%struct.intel_uncore* %31, i32 %32, i32 -1)
  %34 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %35 = load i32, i32* @GEN11_GUC_SG_INTR_ENABLE, align 4
  %36 = call i32 @intel_uncore_write(%struct.intel_uncore* %34, i32 %35, i32 0)
  %37 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %38 = load i32, i32* @GEN11_GUC_SG_INTR_MASK, align 4
  %39 = call i32 @intel_uncore_write(%struct.intel_uncore* %37, i32 %38, i32 -1)
  ret void
}

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
