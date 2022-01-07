; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_task_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_task_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_ipp = type { i32, %struct.TYPE_2__*, %struct.exynos_drm_ipp_task* }
%struct.TYPE_2__ = type { i32 (%struct.exynos_drm_ipp*, %struct.exynos_drm_ipp_task*)* }
%struct.exynos_drm_ipp_task = type { i32, i32 }

@DRM_EXYNOS_IPP_TASK_DONE = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_TASK_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_ipp*, %struct.exynos_drm_ipp_task*)* @exynos_drm_ipp_task_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_drm_ipp_task_abort(%struct.exynos_drm_ipp* %0, %struct.exynos_drm_ipp_task* %1) #0 {
  %3 = alloca %struct.exynos_drm_ipp*, align 8
  %4 = alloca %struct.exynos_drm_ipp_task*, align 8
  %5 = alloca i64, align 8
  store %struct.exynos_drm_ipp* %0, %struct.exynos_drm_ipp** %3, align 8
  store %struct.exynos_drm_ipp_task* %1, %struct.exynos_drm_ipp_task** %4, align 8
  %6 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %3, align 8
  %7 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %11 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DRM_EXYNOS_IPP_TASK_DONE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %18 = call i32 @exynos_drm_ipp_task_cleanup(%struct.exynos_drm_ipp_task* %17)
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %3, align 8
  %21 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %20, i32 0, i32 2
  %22 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %21, align 8
  %23 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %24 = icmp ne %struct.exynos_drm_ipp_task* %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %27 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %26, i32 0, i32 1
  %28 = call i32 @list_del_init(i32* %27)
  %29 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %30 = call i32 @exynos_drm_ipp_task_cleanup(%struct.exynos_drm_ipp_task* %29)
  br label %57

31:                                               ; preds = %19
  %32 = load i32, i32* @DRM_EXYNOS_IPP_TASK_ASYNC, align 4
  %33 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %34 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %3, align 8
  %38 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %3, align 8
  %42 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.exynos_drm_ipp*, %struct.exynos_drm_ipp_task*)*, i32 (%struct.exynos_drm_ipp*, %struct.exynos_drm_ipp_task*)** %44, align 8
  %46 = icmp ne i32 (%struct.exynos_drm_ipp*, %struct.exynos_drm_ipp_task*)* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %31
  %48 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %3, align 8
  %49 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.exynos_drm_ipp*, %struct.exynos_drm_ipp_task*)*, i32 (%struct.exynos_drm_ipp*, %struct.exynos_drm_ipp_task*)** %51, align 8
  %53 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %3, align 8
  %54 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %55 = call i32 %52(%struct.exynos_drm_ipp* %53, %struct.exynos_drm_ipp_task* %54)
  br label %56

56:                                               ; preds = %47, %31
  br label %63

57:                                               ; preds = %25
  br label %58

58:                                               ; preds = %57, %16
  %59 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %3, align 8
  %60 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %59, i32 0, i32 0
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %56
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @exynos_drm_ipp_task_cleanup(%struct.exynos_drm_ipp_task*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
