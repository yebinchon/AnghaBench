; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gpu_scheduler = type { i32, i8*, i64, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.drm_sched_backend_ops* }
%struct.drm_sched_backend_ops = type { i32 }

@DRM_SCHED_PRIORITY_MIN = common dso_local global i32 0, align 4
@DRM_SCHED_PRIORITY_MAX = common dso_local global i32 0, align 4
@drm_sched_job_timedout = common dso_local global i32 0, align 4
@drm_sched_main = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to create scheduler for %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_sched_init(%struct.drm_gpu_scheduler* %0, %struct.drm_sched_backend_ops* %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_gpu_scheduler*, align 8
  %9 = alloca %struct.drm_sched_backend_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_gpu_scheduler* %0, %struct.drm_gpu_scheduler** %8, align 8
  store %struct.drm_sched_backend_ops* %1, %struct.drm_sched_backend_ops** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.drm_sched_backend_ops*, %struct.drm_sched_backend_ops** %9, align 8
  %17 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %18 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %17, i32 0, i32 15
  store %struct.drm_sched_backend_ops* %16, %struct.drm_sched_backend_ops** %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %21 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %24 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %27 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %30 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @DRM_SCHED_PRIORITY_MIN, align 4
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %45, %6
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @DRM_SCHED_PRIORITY_MAX, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %38 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %39 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %38, i32 0, i32 14
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @drm_sched_rq_init(%struct.drm_gpu_scheduler* %37, i32* %43)
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %14, align 4
  br label %32

48:                                               ; preds = %32
  %49 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %50 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %49, i32 0, i32 13
  %51 = call i32 @init_waitqueue_head(i32* %50)
  %52 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %53 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %52, i32 0, i32 12
  %54 = call i32 @init_waitqueue_head(i32* %53)
  %55 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %56 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %55, i32 0, i32 11
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %59 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %58, i32 0, i32 10
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %62 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %61, i32 0, i32 9
  %63 = call i32 @atomic_set(i32* %62, i32 0)
  %64 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %65 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %64, i32 0, i32 8
  %66 = load i32, i32* @drm_sched_job_timedout, align 4
  %67 = call i32 @INIT_DELAYED_WORK(i32* %65, i32 %66)
  %68 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %69 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %68, i32 0, i32 7
  %70 = call i32 @atomic_set(i32* %69, i32 0)
  %71 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %72 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %71, i32 0, i32 6
  %73 = call i32 @atomic64_set(i32* %72, i32 0)
  %74 = load i32, i32* @drm_sched_main, align 4
  %75 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %76 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %77 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32* @kthread_run(i32 %74, %struct.drm_gpu_scheduler* %75, i8* %78)
  %80 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %81 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %80, i32 0, i32 5
  store i32* %79, i32** %81, align 8
  %82 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %83 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @IS_ERR(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %48
  %88 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %89 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @PTR_ERR(i32* %90)
  store i32 %91, i32* %15, align 4
  %92 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %93 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %92, i32 0, i32 5
  store i32* null, i32** %93, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %94)
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %7, align 4
  br label %100

97:                                               ; preds = %48
  %98 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %99 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %98, i32 0, i32 4
  store i32 1, i32* %99, align 4
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %97, %87
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @drm_sched_rq_init(%struct.drm_gpu_scheduler*, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32* @kthread_run(i32, %struct.drm_gpu_scheduler*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
