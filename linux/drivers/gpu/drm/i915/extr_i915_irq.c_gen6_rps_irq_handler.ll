; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen6_rps_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen6_rps_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32*, %struct.intel_gt, %struct.TYPE_2__ }
%struct.intel_gt = type { i32 }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32, i64 }

@PM_VEBOX_USER_INTERRUPT = common dso_local global i32 0, align 4
@VECS0 = common dso_local global i64 0, align 8
@PM_VEBOX_CS_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Command parser error, pm_iir 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen6_rps_irq_handler(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_rps*, align 8
  %6 = alloca %struct.intel_gt*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.intel_rps* %9, %struct.intel_rps** %5, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 2
  store %struct.intel_gt* %11, %struct.intel_gt** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %2
  %19 = load %struct.intel_gt*, %struct.intel_gt** %6, align 8
  %20 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.intel_gt*, %struct.intel_gt** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %23, %26
  %28 = call i32 @gen6_gt_pm_mask_irq(%struct.intel_gt* %22, i32 %27)
  %29 = load %struct.intel_rps*, %struct.intel_rps** %5, align 8
  %30 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %18
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %34, %37
  %39 = load %struct.intel_rps*, %struct.intel_rps** %5, align 8
  %40 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.intel_rps*, %struct.intel_rps** %5, align 8
  %44 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %43, i32 0, i32 1
  %45 = call i32 @schedule_work(i32* %44)
  br label %46

46:                                               ; preds = %33, %18
  %47 = load %struct.intel_gt*, %struct.intel_gt** %6, align 8
  %48 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  br label %50

50:                                               ; preds = %46, %2
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %52 = call i32 @INTEL_GEN(%struct.drm_i915_private* %51)
  %53 = icmp sge i32 %52, 8
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %76

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @PM_VEBOX_USER_INTERRUPT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %62 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @VECS0, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @intel_engine_breadcrumbs_irq(i32 %66)
  br label %68

68:                                               ; preds = %60, %55
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @PM_VEBOX_CS_ERROR_INTERRUPT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %54, %73, %68
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gen6_gt_pm_mask_irq(%struct.intel_gt*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_engine_breadcrumbs_irq(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
