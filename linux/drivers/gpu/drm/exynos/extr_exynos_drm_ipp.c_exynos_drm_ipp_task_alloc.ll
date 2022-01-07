; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_task_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_task_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_ipp_task = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__, %struct.exynos_drm_ipp* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.exynos_drm_ipp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i8* null, align 8
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Allocated task %pK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.exynos_drm_ipp_task* (%struct.exynos_drm_ipp*)* @exynos_drm_ipp_task_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.exynos_drm_ipp_task* @exynos_drm_ipp_task_alloc(%struct.exynos_drm_ipp* %0) #0 {
  %2 = alloca %struct.exynos_drm_ipp_task*, align 8
  %3 = alloca %struct.exynos_drm_ipp*, align 8
  %4 = alloca %struct.exynos_drm_ipp_task*, align 8
  store %struct.exynos_drm_ipp* %0, %struct.exynos_drm_ipp** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.exynos_drm_ipp_task* @kzalloc(i32 48, i32 %5)
  store %struct.exynos_drm_ipp_task* %6, %struct.exynos_drm_ipp_task** %4, align 8
  %7 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %8 = icmp ne %struct.exynos_drm_ipp_task* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.exynos_drm_ipp_task* null, %struct.exynos_drm_ipp_task** %2, align 8
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %3, align 8
  %12 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %15 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %3, align 8
  %17 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %18 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %17, i32 0, i32 4
  store %struct.exynos_drm_ipp* %16, %struct.exynos_drm_ipp** %18, align 8
  %19 = load i8*, i8** @UINT_MAX, align 8
  %20 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %21 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i8* %19, i8** %23, align 8
  %24 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %25 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i8* %19, i8** %27, align 8
  %28 = load i8*, i8** @UINT_MAX, align 8
  %29 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %30 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i8* %28, i8** %32, align 8
  %33 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %34 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i8* %28, i8** %36, align 8
  %37 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %38 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %39 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %42 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  %45 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.exynos_drm_ipp_task* %44)
  %46 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %4, align 8
  store %struct.exynos_drm_ipp_task* %46, %struct.exynos_drm_ipp_task** %2, align 8
  br label %47

47:                                               ; preds = %10, %9
  %48 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %2, align 8
  ret %struct.exynos_drm_ipp_task* %48
}

declare dso_local %struct.exynos_drm_ipp_task* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(i32, i8*, %struct.exynos_drm_ipp_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
