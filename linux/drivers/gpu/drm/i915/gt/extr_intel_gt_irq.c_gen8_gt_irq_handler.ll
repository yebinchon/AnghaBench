; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen8_gt_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen8_gt_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.TYPE_2__, i32, i32** }
%struct.TYPE_2__ = type { i32 }

@GEN8_GT_RCS_IRQ = common dso_local global i32 0, align 4
@GEN8_GT_BCS_IRQ = common dso_local global i32 0, align 4
@RENDER_CLASS = common dso_local global i64 0, align 8
@GEN8_RCS_IRQ_SHIFT = common dso_local global i32 0, align 4
@COPY_ENGINE_CLASS = common dso_local global i64 0, align 8
@GEN8_BCS_IRQ_SHIFT = common dso_local global i32 0, align 4
@GEN8_GT_VCS0_IRQ = common dso_local global i32 0, align 4
@GEN8_GT_VCS1_IRQ = common dso_local global i32 0, align 4
@VIDEO_DECODE_CLASS = common dso_local global i64 0, align 8
@GEN8_VCS0_IRQ_SHIFT = common dso_local global i32 0, align 4
@GEN8_VCS1_IRQ_SHIFT = common dso_local global i32 0, align 4
@GEN8_GT_VECS_IRQ = common dso_local global i32 0, align 4
@VIDEO_ENHANCEMENT_CLASS = common dso_local global i64 0, align 8
@GEN8_VECS_IRQ_SHIFT = common dso_local global i32 0, align 4
@GEN8_GT_PM_IRQ = common dso_local global i32 0, align 4
@GEN8_GT_GUC_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen8_gt_irq_handler(%struct.intel_gt* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.intel_gt* %0, %struct.intel_gt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @GEN8_GT_RCS_IRQ, align 4
  %9 = load i32, i32* @GEN8_GT_BCS_IRQ, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %3
  %14 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %15 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %14, i32 0, i32 2
  %16 = load i32**, i32*** %15, align 8
  %17 = load i64, i64* @RENDER_CLASS, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GEN8_RCS_IRQ_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = call i32 @cs_irq_handler(i32 %21, i32 %26)
  %28 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %29 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %28, i32 0, i32 2
  %30 = load i32**, i32*** %29, align 8
  %31 = load i64, i64* @COPY_ENGINE_CLASS, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GEN8_BCS_IRQ_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = call i32 @cs_irq_handler(i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %13, %3
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @GEN8_GT_VCS0_IRQ, align 4
  %45 = load i32, i32* @GEN8_GT_VCS1_IRQ, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %42
  %50 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %51 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* @VIDEO_DECODE_CLASS, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @GEN8_VCS0_IRQ_SHIFT, align 4
  %62 = ashr i32 %60, %61
  %63 = call i32 @cs_irq_handler(i32 %57, i32 %62)
  %64 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %65 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %64, i32 0, i32 2
  %66 = load i32**, i32*** %65, align 8
  %67 = load i64, i64* @VIDEO_DECODE_CLASS, align 8
  %68 = getelementptr inbounds i32*, i32** %66, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @GEN8_VCS1_IRQ_SHIFT, align 4
  %76 = ashr i32 %74, %75
  %77 = call i32 @cs_irq_handler(i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %49, %42
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @GEN8_GT_VECS_IRQ, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %85 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %84, i32 0, i32 2
  %86 = load i32**, i32*** %85, align 8
  %87 = load i64, i64* @VIDEO_ENHANCEMENT_CLASS, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @GEN8_VECS_IRQ_SHIFT, align 4
  %96 = ashr i32 %94, %95
  %97 = call i32 @cs_irq_handler(i32 %91, i32 %96)
  br label %98

98:                                               ; preds = %83, %78
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @GEN8_GT_PM_IRQ, align 4
  %101 = load i32, i32* @GEN8_GT_GUC_IRQ, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %98
  %106 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %107 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @gen6_rps_irq_handler(i32 %108, i32 %111)
  %113 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %114 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 16
  %120 = call i32 @guc_irq_handler(i32* %115, i32 %119)
  br label %121

121:                                              ; preds = %105, %98
  ret void
}

declare dso_local i32 @cs_irq_handler(i32, i32) #1

declare dso_local i32 @gen6_rps_irq_handler(i32, i32) #1

declare dso_local i32 @guc_irq_handler(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
