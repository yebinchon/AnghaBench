; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_rotator.c_rotator_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_rotator.c_rotator_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rot_context = type { i32, %struct.exynos_drm_ipp_task* }
%struct.exynos_drm_ipp_task = type { i32 }

@ROT_STATUS = common dso_local global i32 0, align 4
@ROT_IRQ_STATUS_COMPLETE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rotator_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rotator_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rot_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.exynos_drm_ipp_task*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rot_context*
  store %struct.rot_context* %10, %struct.rot_context** %5, align 8
  %11 = load %struct.rot_context*, %struct.rot_context** %5, align 8
  %12 = call i32 @rotator_reg_get_irq_status(%struct.rot_context* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @ROT_STATUS, align 4
  %14 = call i32 @rot_read(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ROT_STATUS_IRQ_PENDING(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ROT_STATUS, align 4
  %21 = call i32 @rot_write(i32 %19, i32 %20)
  %22 = load %struct.rot_context*, %struct.rot_context** %5, align 8
  %23 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %22, i32 0, i32 1
  %24 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %23, align 8
  %25 = icmp ne %struct.exynos_drm_ipp_task* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %2
  %27 = load %struct.rot_context*, %struct.rot_context** %5, align 8
  %28 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %27, i32 0, i32 1
  %29 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %28, align 8
  store %struct.exynos_drm_ipp_task* %29, %struct.exynos_drm_ipp_task** %8, align 8
  %30 = load %struct.rot_context*, %struct.rot_context** %5, align 8
  %31 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %30, i32 0, i32 1
  store %struct.exynos_drm_ipp_task* null, %struct.exynos_drm_ipp_task** %31, align 8
  %32 = load %struct.rot_context*, %struct.rot_context** %5, align 8
  %33 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pm_runtime_mark_last_busy(i32 %34)
  %36 = load %struct.rot_context*, %struct.rot_context** %5, align 8
  %37 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pm_runtime_put_autosuspend(i32 %38)
  %40 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ROT_IRQ_STATUS_COMPLETE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  br label %48

45:                                               ; preds = %26
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  br label %48

48:                                               ; preds = %45, %44
  %49 = phi i32 [ 0, %44 ], [ %47, %45 ]
  %50 = call i32 @exynos_drm_ipp_task_done(%struct.exynos_drm_ipp_task* %40, i32 %49)
  br label %51

51:                                               ; preds = %48, %2
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %52
}

declare dso_local i32 @rotator_reg_get_irq_status(%struct.rot_context*) #1

declare dso_local i32 @rot_read(i32) #1

declare dso_local i32 @ROT_STATUS_IRQ_PENDING(i32) #1

declare dso_local i32 @rot_write(i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @exynos_drm_ipp_task_done(%struct.exynos_drm_ipp_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
