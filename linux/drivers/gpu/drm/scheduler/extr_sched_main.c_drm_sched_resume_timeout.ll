; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_resume_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_resume_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gpu_scheduler = type { i32, i32, i32 }

@system_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_sched_resume_timeout(%struct.drm_gpu_scheduler* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_gpu_scheduler*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.drm_gpu_scheduler* %0, %struct.drm_gpu_scheduler** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %3, align 8
  %7 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %3, align 8
  %11 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %10, i32 0, i32 2
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %3, align 8
  %16 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %15, i32 0, i32 1
  %17 = call i32 @cancel_delayed_work(i32* %16)
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @system_wq, align 4
  %20 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %3, align 8
  %21 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %20, i32 0, i32 1
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @mod_delayed_work(i32 %19, i32* %21, i64 %22)
  br label %24

24:                                               ; preds = %18, %14
  %25 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %3, align 8
  %26 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
