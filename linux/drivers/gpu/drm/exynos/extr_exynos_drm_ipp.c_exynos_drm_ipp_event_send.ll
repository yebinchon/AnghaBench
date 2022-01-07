; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_event_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_event_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_ipp_task = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.timespec64 = type { i32, i32 }

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_ipp_task*)* @exynos_drm_ipp_event_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_drm_ipp_event_send(%struct.exynos_drm_ipp_task* %0) #0 {
  %2 = alloca %struct.exynos_drm_ipp_task*, align 8
  %3 = alloca %struct.timespec64, align 4
  store %struct.exynos_drm_ipp_task* %0, %struct.exynos_drm_ipp_task** %2, align 8
  %4 = call i32 @ktime_get_ts64(%struct.timespec64* %3)
  %5 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %3, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %2, align 8
  %8 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32 %6, i32* %11, align 4
  %12 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NSEC_PER_USEC, align 4
  %15 = sdiv i32 %13, %14
  %16 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %2, align 8
  %17 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %15, i32* %20, align 4
  %21 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %2, align 8
  %22 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = call i32 @atomic_inc_return(i32* %24)
  %26 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %2, align 8
  %27 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %25, i32* %30, align 4
  %31 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %2, align 8
  %32 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.exynos_drm_ipp_task*, %struct.exynos_drm_ipp_task** %2, align 8
  %37 = getelementptr inbounds %struct.exynos_drm_ipp_task, %struct.exynos_drm_ipp_task* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @drm_send_event(i32 %35, i32* %39)
  ret void
}

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @drm_send_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
