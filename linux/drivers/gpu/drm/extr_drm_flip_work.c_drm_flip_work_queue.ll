; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_flip_work.c_drm_flip_work_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_flip_work.c_drm_flip_work_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_flip_work = type { i32 (%struct.drm_flip_work*, i8*)*, i32 }
%struct.drm_flip_task = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s could not allocate task!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_flip_work_queue(%struct.drm_flip_work* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_flip_work*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_flip_task*, align 8
  store %struct.drm_flip_work* %0, %struct.drm_flip_work** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 (...) @drm_can_sleep()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @GFP_KERNEL, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = call %struct.drm_flip_task* @drm_flip_work_allocate_task(i8* %6, i32 %14)
  store %struct.drm_flip_task* %15, %struct.drm_flip_task** %5, align 8
  %16 = load %struct.drm_flip_task*, %struct.drm_flip_task** %5, align 8
  %17 = icmp ne %struct.drm_flip_task* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.drm_flip_work*, %struct.drm_flip_work** %3, align 8
  %20 = load %struct.drm_flip_task*, %struct.drm_flip_task** %5, align 8
  %21 = call i32 @drm_flip_work_queue_task(%struct.drm_flip_work* %19, %struct.drm_flip_task* %20)
  br label %33

22:                                               ; preds = %13
  %23 = load %struct.drm_flip_work*, %struct.drm_flip_work** %3, align 8
  %24 = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.drm_flip_work*, %struct.drm_flip_work** %3, align 8
  %28 = getelementptr inbounds %struct.drm_flip_work, %struct.drm_flip_work* %27, i32 0, i32 0
  %29 = load i32 (%struct.drm_flip_work*, i8*)*, i32 (%struct.drm_flip_work*, i8*)** %28, align 8
  %30 = load %struct.drm_flip_work*, %struct.drm_flip_work** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 %29(%struct.drm_flip_work* %30, i8* %31)
  br label %33

33:                                               ; preds = %22, %18
  ret void
}

declare dso_local %struct.drm_flip_task* @drm_flip_work_allocate_task(i8*, i32) #1

declare dso_local i64 @drm_can_sleep(...) #1

declare dso_local i32 @drm_flip_work_queue_task(%struct.drm_flip_work*, %struct.drm_flip_task*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
