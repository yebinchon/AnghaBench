; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32, i32, %struct.exynos_drm_ipp_task* }
%struct.exynos_drm_ipp_task = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"fimc id[%d]\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"buf_id[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fimc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fimc_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.exynos_drm_ipp_task*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fimc_context*
  store %struct.fimc_context* %10, %struct.fimc_context** %6, align 8
  %11 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %12 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %15 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DRM_DEV_DEBUG_KMS(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %19 = call i32 @fimc_clear_irq(%struct.fimc_context* %18)
  %20 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %21 = call i64 @fimc_check_ovf(%struct.fimc_context* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %71

25:                                               ; preds = %2
  %26 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %27 = call i32 @fimc_check_frame_end(%struct.fimc_context* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %71

31:                                               ; preds = %25
  %32 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %33 = call i32 @fimc_get_buf_id(%struct.fimc_context* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %3, align 4
  br label %71

38:                                               ; preds = %31
  %39 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %40 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @DRM_DEV_DEBUG_KMS(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %45 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %44, i32 0, i32 2
  %46 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %45, align 8
  %47 = icmp ne %struct.exynos_drm_ipp_task* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %38
  %49 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %50 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %49, i32 0, i32 2
  %51 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %50, align 8
  store %struct.exynos_drm_ipp_task* %51, %struct.exynos_drm_ipp_task** %8, align 8
  %52 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %53 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %52, i32 0, i32 2
  store %struct.exynos_drm_ipp_task* null, %struct.exynos_drm_ipp_task** %53, align 8
  %54 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %55 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pm_runtime_mark_last_busy(i32 %56)
  %58 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %59 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pm_runtime_put_autosuspend(i32 %60)
  %62 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %8, align 8
  %63 = call i32 @exynos_drm_ipp_task_done(%struct.exynos_drm_ipp_task* %62, i32 0)
  br label %64

64:                                               ; preds = %48, %38
  %65 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @fimc_dst_set_buf_seq(%struct.fimc_context* %65, i32 %66, i32 0)
  %68 = load %struct.fimc_context*, %struct.fimc_context** %6, align 8
  %69 = call i32 @fimc_stop(%struct.fimc_context* %68)
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %64, %36, %29, %23
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32) #1

declare dso_local i32 @fimc_clear_irq(%struct.fimc_context*) #1

declare dso_local i64 @fimc_check_ovf(%struct.fimc_context*) #1

declare dso_local i32 @fimc_check_frame_end(%struct.fimc_context*) #1

declare dso_local i32 @fimc_get_buf_id(%struct.fimc_context*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @exynos_drm_ipp_task_done(%struct.exynos_drm_ipp_task*, i32) #1

declare dso_local i32 @fimc_dst_set_buf_seq(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @fimc_stop(%struct.fimc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
