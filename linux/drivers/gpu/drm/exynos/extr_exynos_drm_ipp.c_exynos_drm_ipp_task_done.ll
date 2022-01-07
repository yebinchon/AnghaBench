; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_task_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_task_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_ipp_task = type { i32, i32, i32, i32, %struct.exynos_drm_ipp* }
%struct.exynos_drm_ipp = type { i32, i32, %struct.exynos_drm_ipp_task*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ipp: %d, task %pK done: %d\0A\00", align 1
@DRM_EXYNOS_IPP_TASK_DONE = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_TASK_ASYNC = common dso_local global i32 0, align 4
@exynos_drm_ipp_cleanup_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exynos_drm_ipp_task_done(%struct.exynos_drm_ipp_task* %0, i32 %1) #0 {
  %3 = alloca %struct.exynos_drm_ipp_task*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.exynos_drm_ipp*, align 8
  %6 = alloca i64, align 8
  store %struct.exynos_drm_ipp_task* %0, %struct.exynos_drm_ipp_task** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %8 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %7, i32 0, i32 4
  %9 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %8, align 8
  store %struct.exynos_drm_ipp* %9, %struct.exynos_drm_ipp** %5, align 8
  %10 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %11 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %5, align 8
  %14 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, %struct.exynos_drm_ipp_task* %16, i32 %17)
  %19 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %5, align 8
  %20 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %5, align 8
  %24 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %23, i32 0, i32 2
  %25 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %24, align 8
  %26 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %27 = icmp eq %struct.exynos_drm_ipp_task* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %5, align 8
  %30 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %29, i32 0, i32 2
  store %struct.exynos_drm_ipp_task* null, %struct.exynos_drm_ipp_task** %30, align 8
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32, i32* @DRM_EXYNOS_IPP_TASK_DONE, align 4
  %33 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %34 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %39 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %5, align 8
  %41 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %40, i32 0, i32 1
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %5, align 8
  %45 = call i32 @exynos_drm_ipp_next_task(%struct.exynos_drm_ipp* %44)
  %46 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %5, align 8
  %47 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %46, i32 0, i32 0
  %48 = call i32 @wake_up(i32* %47)
  %49 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %50 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DRM_EXYNOS_IPP_TASK_ASYNC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %31
  %56 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %57 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %56, i32 0, i32 2
  %58 = load i32, i32* @exynos_drm_ipp_cleanup_work, align 4
  %59 = call i32 @INIT_WORK(i32* %57, i32 %58)
  %60 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %3, align 8
  %61 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %60, i32 0, i32 2
  %62 = call i32 @schedule_work(i32* %61)
  br label %63

63:                                               ; preds = %55, %31
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(i32, i8*, i32, %struct.exynos_drm_ipp_task*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @exynos_drm_ipp_next_task(%struct.exynos_drm_ipp*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
