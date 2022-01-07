; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_event_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_event_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_ipp_task = type { %struct.drm_pending_exynos_ipp_event*, %struct.TYPE_4__* }
%struct.drm_pending_exynos_ipp_event = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_file = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_ipp_task*, %struct.drm_file*, i32)* @exynos_drm_ipp_event_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_ipp_event_create(%struct.exynos_drm_ipp_task* %0, %struct.drm_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.exynos_drm_ipp_task*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_pending_exynos_ipp_event*, align 8
  %9 = alloca i32, align 4
  store %struct.exynos_drm_ipp_task* %0, %struct.exynos_drm_ipp_task** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.drm_pending_exynos_ipp_event* null, %struct.drm_pending_exynos_ipp_event** %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.drm_pending_exynos_ipp_event* @kzalloc(i32 16, i32 %10)
  store %struct.drm_pending_exynos_ipp_event* %11, %struct.drm_pending_exynos_ipp_event** %8, align 8
  %12 = load %struct.drm_pending_exynos_ipp_event*, %struct.drm_pending_exynos_ipp_event** %8, align 8
  %13 = icmp ne %struct.drm_pending_exynos_ipp_event* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load i32, i32* @DRM_EXYNOS_IPP_EVENT, align 4
  %19 = load %struct.drm_pending_exynos_ipp_event*, %struct.drm_pending_exynos_ipp_event** %8, align 8
  %20 = getelementptr inbounds %struct.drm_pending_exynos_ipp_event, %struct.drm_pending_exynos_ipp_event* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  %23 = load %struct.drm_pending_exynos_ipp_event*, %struct.drm_pending_exynos_ipp_event** %8, align 8
  %24 = getelementptr inbounds %struct.drm_pending_exynos_ipp_event, %struct.drm_pending_exynos_ipp_event* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 12, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.drm_pending_exynos_ipp_event*, %struct.drm_pending_exynos_ipp_event** %8, align 8
  %29 = getelementptr inbounds %struct.drm_pending_exynos_ipp_event, %struct.drm_pending_exynos_ipp_event* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %5, align 8
  %32 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %37 = load %struct.drm_pending_exynos_ipp_event*, %struct.drm_pending_exynos_ipp_event** %8, align 8
  %38 = getelementptr inbounds %struct.drm_pending_exynos_ipp_event, %struct.drm_pending_exynos_ipp_event* %37, i32 0, i32 1
  %39 = load %struct.drm_pending_exynos_ipp_event*, %struct.drm_pending_exynos_ipp_event** %8, align 8
  %40 = getelementptr inbounds %struct.drm_pending_exynos_ipp_event, %struct.drm_pending_exynos_ipp_event* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @drm_event_reserve_init(i32 %35, %struct.drm_file* %36, i32* %38, %struct.TYPE_6__* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %17
  br label %50

46:                                               ; preds = %17
  %47 = load %struct.drm_pending_exynos_ipp_event*, %struct.drm_pending_exynos_ipp_event** %8, align 8
  %48 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %5, align 8
  %49 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %48, i32 0, i32 0
  store %struct.drm_pending_exynos_ipp_event* %47, %struct.drm_pending_exynos_ipp_event** %49, align 8
  store i32 0, i32* %4, align 4
  br label %54

50:                                               ; preds = %45
  %51 = load %struct.drm_pending_exynos_ipp_event*, %struct.drm_pending_exynos_ipp_event** %8, align 8
  %52 = call i32 @kfree(%struct.drm_pending_exynos_ipp_event* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %46, %14
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.drm_pending_exynos_ipp_event* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_event_reserve_init(i32, %struct.drm_file*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.drm_pending_exynos_ipp_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
