; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen11_gt_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen11_gt_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { i32, i32, %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }

@GT_RENDER_USER_INTERRUPT = common dso_local global i32 0, align 4
@GT_CONTEXT_SWITCH_INTERRUPT = common dso_local global i32 0, align 4
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
define dso_local void @gen11_gt_irq_postinstall(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %7 = load i32, i32* @GT_RENDER_USER_INTERRUPT, align 4
  %8 = load i32, i32* @GT_CONTEXT_SWITCH_INTERRUPT, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %11 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %10, i32 0, i32 2
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %11, align 8
  store %struct.intel_uncore* %12, %struct.intel_uncore** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 %13, 16
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = shl i32 %17, 16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, -65536
  %21 = call i32 @BUILD_BUG_ON(i32 %20)
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %23 = load i32, i32* @GEN11_RENDER_COPY_INTR_ENABLE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @intel_uncore_write(%struct.intel_uncore* %22, i32 %23, i32 %24)
  %26 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %27 = load i32, i32* @GEN11_VCS_VECS_INTR_ENABLE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @intel_uncore_write(%struct.intel_uncore* %26, i32 %27, i32 %28)
  %30 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %31 = load i32, i32* @GEN11_RCS0_RSVD_INTR_MASK, align 4
  %32 = load i32, i32* %6, align 4
  %33 = xor i32 %32, -1
  %34 = call i32 @intel_uncore_write(%struct.intel_uncore* %30, i32 %31, i32 %33)
  %35 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %36 = load i32, i32* @GEN11_BCS_RSVD_INTR_MASK, align 4
  %37 = load i32, i32* %6, align 4
  %38 = xor i32 %37, -1
  %39 = call i32 @intel_uncore_write(%struct.intel_uncore* %35, i32 %36, i32 %38)
  %40 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %41 = load i32, i32* @GEN11_VCS0_VCS1_INTR_MASK, align 4
  %42 = load i32, i32* %5, align 4
  %43 = xor i32 %42, -1
  %44 = call i32 @intel_uncore_write(%struct.intel_uncore* %40, i32 %41, i32 %43)
  %45 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %46 = load i32, i32* @GEN11_VCS2_VCS3_INTR_MASK, align 4
  %47 = load i32, i32* %5, align 4
  %48 = xor i32 %47, -1
  %49 = call i32 @intel_uncore_write(%struct.intel_uncore* %45, i32 %46, i32 %48)
  %50 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %51 = load i32, i32* @GEN11_VECS0_VECS1_INTR_MASK, align 4
  %52 = load i32, i32* %5, align 4
  %53 = xor i32 %52, -1
  %54 = call i32 @intel_uncore_write(%struct.intel_uncore* %50, i32 %51, i32 %53)
  %55 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %56 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %58 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = xor i32 %59, -1
  %61 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %62 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %64 = load i32, i32* @GEN11_GPM_WGBOXPERF_INTR_ENABLE, align 4
  %65 = call i32 @intel_uncore_write(%struct.intel_uncore* %63, i32 %64, i32 0)
  %66 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %67 = load i32, i32* @GEN11_GPM_WGBOXPERF_INTR_MASK, align 4
  %68 = call i32 @intel_uncore_write(%struct.intel_uncore* %66, i32 %67, i32 -1)
  %69 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %70 = load i32, i32* @GEN11_GUC_SG_INTR_ENABLE, align 4
  %71 = call i32 @intel_uncore_write(%struct.intel_uncore* %69, i32 %70, i32 0)
  %72 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %73 = load i32, i32* @GEN11_GUC_SG_INTR_MASK, align 4
  %74 = call i32 @intel_uncore_write(%struct.intel_uncore* %72, i32 %73, i32 -1)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
