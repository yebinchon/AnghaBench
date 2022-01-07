; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen8_gt_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen8_gt_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { i32, i32, %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }

@GT_RENDER_USER_INTERRUPT = common dso_local global i32 0, align 4
@GEN8_RCS_IRQ_SHIFT = common dso_local global i32 0, align 4
@GT_CONTEXT_SWITCH_INTERRUPT = common dso_local global i32 0, align 4
@GEN8_BCS_IRQ_SHIFT = common dso_local global i32 0, align 4
@GEN8_VCS0_IRQ_SHIFT = common dso_local global i32 0, align 4
@GEN8_VCS1_IRQ_SHIFT = common dso_local global i32 0, align 4
@GEN8_VECS_IRQ_SHIFT = common dso_local global i32 0, align 4
@GT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen8_gt_irq_postinstall(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca [4 x i32], align 16
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %5 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %6 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %5, i32 0, i32 2
  %7 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  store %struct.intel_uncore* %7, %struct.intel_uncore** %3, align 8
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %9 = load i32, i32* @GT_RENDER_USER_INTERRUPT, align 4
  %10 = load i32, i32* @GEN8_RCS_IRQ_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* @GT_CONTEXT_SWITCH_INTERRUPT, align 4
  %13 = load i32, i32* @GEN8_RCS_IRQ_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = or i32 %11, %14
  %16 = load i32, i32* @GT_RENDER_USER_INTERRUPT, align 4
  %17 = load i32, i32* @GEN8_BCS_IRQ_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %15, %18
  %20 = load i32, i32* @GT_CONTEXT_SWITCH_INTERRUPT, align 4
  %21 = load i32, i32* @GEN8_BCS_IRQ_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = getelementptr inbounds i32, i32* %8, i64 1
  %25 = load i32, i32* @GT_RENDER_USER_INTERRUPT, align 4
  %26 = load i32, i32* @GEN8_VCS0_IRQ_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* @GT_CONTEXT_SWITCH_INTERRUPT, align 4
  %29 = load i32, i32* @GEN8_VCS0_IRQ_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  %32 = load i32, i32* @GT_RENDER_USER_INTERRUPT, align 4
  %33 = load i32, i32* @GEN8_VCS1_IRQ_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %31, %34
  %36 = load i32, i32* @GT_CONTEXT_SWITCH_INTERRUPT, align 4
  %37 = load i32, i32* @GEN8_VCS1_IRQ_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  store i32 %39, i32* %24, align 4
  %40 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* @GT_RENDER_USER_INTERRUPT, align 4
  %43 = load i32, i32* @GEN8_VECS_IRQ_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* @GT_CONTEXT_SWITCH_INTERRUPT, align 4
  %46 = load i32, i32* @GEN8_VECS_IRQ_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %44, %47
  store i32 %48, i32* %41, align 4
  %49 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %50 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %52 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = xor i32 %53, -1
  %55 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %56 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %58 = load i32, i32* @GT, align 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = xor i32 %60, -1
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = call i32 @GEN8_IRQ_INIT_NDX(%struct.intel_uncore* %57, i32 %58, i32 0, i32 %61, i32 %63)
  %65 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %66 = load i32, i32* @GT, align 4
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, -1
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @GEN8_IRQ_INIT_NDX(%struct.intel_uncore* %65, i32 %66, i32 1, i32 %69, i32 %71)
  %73 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %74 = load i32, i32* @GT, align 4
  %75 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %76 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %79 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @GEN8_IRQ_INIT_NDX(%struct.intel_uncore* %73, i32 %74, i32 2, i32 %77, i32 %80)
  %82 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %83 = load i32, i32* @GT, align 4
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %85, -1
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @GEN8_IRQ_INIT_NDX(%struct.intel_uncore* %82, i32 %83, i32 3, i32 %86, i32 %88)
  ret void
}

declare dso_local i32 @GEN8_IRQ_INIT_NDX(%struct.intel_uncore*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
