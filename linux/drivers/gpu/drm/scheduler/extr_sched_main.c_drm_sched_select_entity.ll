; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_select_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_select_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_entity = type { i32 }
%struct.drm_gpu_scheduler = type { i32* }

@DRM_SCHED_PRIORITY_MAX = common dso_local global i32 0, align 4
@DRM_SCHED_PRIORITY_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_sched_entity* (%struct.drm_gpu_scheduler*)* @drm_sched_select_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_sched_entity* @drm_sched_select_entity(%struct.drm_gpu_scheduler* %0) #0 {
  %2 = alloca %struct.drm_sched_entity*, align 8
  %3 = alloca %struct.drm_gpu_scheduler*, align 8
  %4 = alloca %struct.drm_sched_entity*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_gpu_scheduler* %0, %struct.drm_gpu_scheduler** %3, align 8
  %6 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %3, align 8
  %7 = call i32 @drm_sched_ready(%struct.drm_gpu_scheduler* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.drm_sched_entity* null, %struct.drm_sched_entity** %2, align 8
  br label %34

10:                                               ; preds = %1
  %11 = load i32, i32* @DRM_SCHED_PRIORITY_MAX, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %29, %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @DRM_SCHED_PRIORITY_MIN, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %3, align 8
  %19 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call %struct.drm_sched_entity* @drm_sched_rq_select_entity(i32* %23)
  store %struct.drm_sched_entity* %24, %struct.drm_sched_entity** %4, align 8
  %25 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  %26 = icmp ne %struct.drm_sched_entity* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %32

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  br label %13

32:                                               ; preds = %27, %13
  %33 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %4, align 8
  store %struct.drm_sched_entity* %33, %struct.drm_sched_entity** %2, align 8
  br label %34

34:                                               ; preds = %32, %9
  %35 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %2, align 8
  ret %struct.drm_sched_entity* %35
}

declare dso_local i32 @drm_sched_ready(%struct.drm_gpu_scheduler*) #1

declare dso_local %struct.drm_sched_entity* @drm_sched_rq_select_entity(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
