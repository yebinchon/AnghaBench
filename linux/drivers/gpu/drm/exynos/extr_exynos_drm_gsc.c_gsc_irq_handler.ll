; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i32, %struct.exynos_drm_ipp_task*, i32 }
%struct.exynos_drm_ipp_task = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"gsc id[%d]\0A\00", align 1
@GSC_IRQ = common dso_local global i32 0, align 4
@GSC_IRQ_STATUS_OR_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"occurred overflow at %d, status 0x%x.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GSC_IRQ_STATUS_OR_FRM_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"occurred frame done at %d, status 0x%x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"buf_id_src[%d]buf_id_dst[%d]\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gsc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gsc_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.exynos_drm_ipp_task*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.gsc_context*
  store %struct.gsc_context* %12, %struct.gsc_context** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %14 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %17 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @GSC_IRQ, align 4
  %21 = call i32 @gsc_read(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GSC_IRQ_STATUS_OR_IRQ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %28 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %31 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %26, %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @GSC_IRQ_STATUS_OR_FRM_DONE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %37
  %43 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %44 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %47 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %52 = call i32 @gsc_get_src_buf_index(%struct.gsc_context* %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %54 = call i32 @gsc_get_dst_buf_index(%struct.gsc_context* %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %56 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %42
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63, %42
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %37
  %71 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %72 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %71, i32 0, i32 1
  %73 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %72, align 8
  %74 = icmp ne %struct.exynos_drm_ipp_task* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %77 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %76, i32 0, i32 1
  %78 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %77, align 8
  store %struct.exynos_drm_ipp_task* %78, %struct.exynos_drm_ipp_task** %10, align 8
  %79 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %80 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %79, i32 0, i32 1
  store %struct.exynos_drm_ipp_task* null, %struct.exynos_drm_ipp_task** %80, align 8
  %81 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %82 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @pm_runtime_mark_last_busy(i32 %83)
  %85 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %86 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @pm_runtime_put_autosuspend(i32 %87)
  %89 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %10, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @exynos_drm_ipp_task_done(%struct.exynos_drm_ipp_task* %89, i32 %90)
  br label %92

92:                                               ; preds = %75, %70
  %93 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %93
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, ...) #1

declare dso_local i32 @gsc_read(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @gsc_get_src_buf_index(%struct.gsc_context*) #1

declare dso_local i32 @gsc_get_dst_buf_index(%struct.gsc_context*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @exynos_drm_ipp_task_done(%struct.exynos_drm_ipp_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
