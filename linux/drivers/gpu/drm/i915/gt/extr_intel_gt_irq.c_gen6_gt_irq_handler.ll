; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen6_gt_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen6_gt_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { i32, i32** }

@GT_RENDER_USER_INTERRUPT = common dso_local global i32 0, align 4
@RENDER_CLASS = common dso_local global i64 0, align 8
@GT_BSD_USER_INTERRUPT = common dso_local global i32 0, align 4
@VIDEO_DECODE_CLASS = common dso_local global i64 0, align 8
@GT_BLT_USER_INTERRUPT = common dso_local global i32 0, align 4
@COPY_ENGINE_CLASS = common dso_local global i64 0, align 8
@GT_BLT_CS_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@GT_BSD_CS_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@GT_RENDER_CS_MASTER_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Command parser error, gt_iir 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen6_gt_irq_handler(%struct.intel_gt* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @GT_RENDER_USER_INTERRUPT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %11 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %10, i32 0, i32 1
  %12 = load i32**, i32*** %11, align 8
  %13 = load i64, i64* @RENDER_CLASS, align 8
  %14 = getelementptr inbounds i32*, i32** %12, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @intel_engine_breadcrumbs_irq(i32 %17)
  br label %19

19:                                               ; preds = %9, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @GT_BSD_USER_INTERRUPT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %26 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i64, i64* @VIDEO_DECODE_CLASS, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @intel_engine_breadcrumbs_irq(i32 %32)
  br label %34

34:                                               ; preds = %24, %19
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @GT_BLT_USER_INTERRUPT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %41 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load i64, i64* @COPY_ENGINE_CLASS, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @intel_engine_breadcrumbs_irq(i32 %47)
  br label %49

49:                                               ; preds = %39, %34
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @GT_BLT_CS_ERROR_INTERRUPT, align 4
  %52 = load i32, i32* @GT_BSD_CS_ERROR_INTERRUPT, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @GT_RENDER_CS_MASTER_ERROR_INTERRUPT, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %50, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %49
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %64 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @GT_PARITY_ERROR(i32 %65)
  %67 = and i32 %62, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @gen7_parity_error_irq_handler(%struct.intel_gt* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %61
  ret void
}

declare dso_local i32 @intel_engine_breadcrumbs_irq(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @GT_PARITY_ERROR(i32) #1

declare dso_local i32 @gen7_parity_error_irq_handler(%struct.intel_gt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
