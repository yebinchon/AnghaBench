; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_start_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_start_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gpu_scheduler = type { i64, i32, i32 }

@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gpu_scheduler*)* @drm_sched_start_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_sched_start_timeout(%struct.drm_gpu_scheduler* %0) #0 {
  %2 = alloca %struct.drm_gpu_scheduler*, align 8
  store %struct.drm_gpu_scheduler* %0, %struct.drm_gpu_scheduler** %2, align 8
  %3 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %2, align 8
  %4 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %2, align 8
  %10 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %9, i32 0, i32 2
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %2, align 8
  %15 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %14, i32 0, i32 1
  %16 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %2, align 8
  %17 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @schedule_delayed_work(i32* %15, i64 %18)
  br label %20

20:                                               ; preds = %13, %8, %1
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
