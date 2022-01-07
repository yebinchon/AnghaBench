; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_main.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_main.c_drm_sched_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }
%struct.drm_gpu_scheduler = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.dma_fence* (%struct.drm_sched_job*)* }
%struct.dma_fence = type { i32 }
%struct.drm_sched_job = type { i32, %struct.drm_sched_fence* }
%struct.drm_sched_fence = type { i32, i32 }
%struct.drm_sched_entity = type { i32 }

@__const.drm_sched_main.sparam = private unnamed_addr constant %struct.sched_param { i32 1 }, align 4
@current = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"fence add callback failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @drm_sched_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_sched_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sched_param, align 4
  %4 = alloca %struct.drm_gpu_scheduler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_sched_entity*, align 8
  %7 = alloca %struct.drm_sched_fence*, align 8
  %8 = alloca %struct.drm_sched_job*, align 8
  %9 = alloca %struct.dma_fence*, align 8
  store i8* %0, i8** %2, align 8
  %10 = bitcast %struct.sched_param* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.sched_param* @__const.drm_sched_main.sparam to i8*), i64 4, i1 false)
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.drm_gpu_scheduler*
  store %struct.drm_gpu_scheduler* %12, %struct.drm_gpu_scheduler** %4, align 8
  %13 = load i32, i32* @current, align 4
  %14 = load i32, i32* @SCHED_FIFO, align 4
  %15 = call i32 @sched_setscheduler(i32 %13, i32 %14, %struct.sched_param* %3)
  br label %16

16:                                               ; preds = %107, %48, %42, %1
  %17 = call i64 (...) @kthread_should_stop()
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %111

20:                                               ; preds = %16
  store %struct.drm_sched_entity* null, %struct.drm_sched_entity** %6, align 8
  %21 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %4, align 8
  %22 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %4, align 8
  %25 = call i32 @drm_sched_cleanup_jobs(%struct.drm_gpu_scheduler* %24)
  %26 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %4, align 8
  %27 = call i32 @drm_sched_blocked(%struct.drm_gpu_scheduler* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %4, align 8
  %31 = call %struct.drm_sched_entity* @drm_sched_select_entity(%struct.drm_gpu_scheduler* %30)
  store %struct.drm_sched_entity* %31, %struct.drm_sched_entity** %6, align 8
  %32 = icmp ne %struct.drm_sched_entity* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29, %20
  %34 = call i64 (...) @kthread_should_stop()
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i1 [ true, %29 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @wait_event_interruptible(i32 %23, i32 %38)
  %40 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %41 = icmp ne %struct.drm_sched_entity* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %16

43:                                               ; preds = %36
  %44 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %6, align 8
  %45 = call %struct.drm_sched_job* @drm_sched_entity_pop_job(%struct.drm_sched_entity* %44)
  store %struct.drm_sched_job* %45, %struct.drm_sched_job** %8, align 8
  %46 = load %struct.drm_sched_job*, %struct.drm_sched_job** %8, align 8
  %47 = icmp ne %struct.drm_sched_job* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %16

49:                                               ; preds = %43
  %50 = load %struct.drm_sched_job*, %struct.drm_sched_job** %8, align 8
  %51 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %50, i32 0, i32 1
  %52 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %51, align 8
  store %struct.drm_sched_fence* %52, %struct.drm_sched_fence** %7, align 8
  %53 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %4, align 8
  %54 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %53, i32 0, i32 2
  %55 = call i32 @atomic_inc(i32* %54)
  %56 = load %struct.drm_sched_job*, %struct.drm_sched_job** %8, align 8
  %57 = call i32 @drm_sched_job_begin(%struct.drm_sched_job* %56)
  %58 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %4, align 8
  %59 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.dma_fence* (%struct.drm_sched_job*)*, %struct.dma_fence* (%struct.drm_sched_job*)** %61, align 8
  %63 = load %struct.drm_sched_job*, %struct.drm_sched_job** %8, align 8
  %64 = call %struct.dma_fence* %62(%struct.drm_sched_job* %63)
  store %struct.dma_fence* %64, %struct.dma_fence** %9, align 8
  %65 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %7, align 8
  %66 = call i32 @drm_sched_fence_scheduled(%struct.drm_sched_fence* %65)
  %67 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %68 = call i32 @IS_ERR_OR_NULL(%struct.dma_fence* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %98, label %70

70:                                               ; preds = %49
  %71 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %72 = call i32 @dma_fence_get(%struct.dma_fence* %71)
  %73 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %7, align 8
  %74 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %76 = load %struct.drm_sched_job*, %struct.drm_sched_job** %8, align 8
  %77 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %76, i32 0, i32 0
  %78 = call i32 @dma_fence_add_callback(%struct.dma_fence* %75, i32* %77, i32 (%struct.dma_fence*, i32*)* @drm_sched_process_job)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @ENOENT, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %70
  %84 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %85 = load %struct.drm_sched_job*, %struct.drm_sched_job** %8, align 8
  %86 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %85, i32 0, i32 0
  %87 = call i32 @drm_sched_process_job(%struct.dma_fence* %84, i32* %86)
  br label %95

88:                                               ; preds = %70
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %83
  %96 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %97 = call i32 @dma_fence_put(%struct.dma_fence* %96)
  br label %107

98:                                               ; preds = %49
  %99 = load %struct.drm_sched_fence*, %struct.drm_sched_fence** %7, align 8
  %100 = getelementptr inbounds %struct.drm_sched_fence, %struct.drm_sched_fence* %99, i32 0, i32 0
  %101 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %102 = call i32 @PTR_ERR(%struct.dma_fence* %101)
  %103 = call i32 @dma_fence_set_error(i32* %100, i32 %102)
  %104 = load %struct.drm_sched_job*, %struct.drm_sched_job** %8, align 8
  %105 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %104, i32 0, i32 0
  %106 = call i32 @drm_sched_process_job(%struct.dma_fence* null, i32* %105)
  br label %107

107:                                              ; preds = %98, %95
  %108 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %4, align 8
  %109 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %108, i32 0, i32 0
  %110 = call i32 @wake_up(i32* %109)
  br label %16

111:                                              ; preds = %16
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sched_setscheduler(i32, i32, %struct.sched_param*) #2

declare dso_local i64 @kthread_should_stop(...) #2

declare dso_local i32 @wait_event_interruptible(i32, i32) #2

declare dso_local i32 @drm_sched_cleanup_jobs(%struct.drm_gpu_scheduler*) #2

declare dso_local i32 @drm_sched_blocked(%struct.drm_gpu_scheduler*) #2

declare dso_local %struct.drm_sched_entity* @drm_sched_select_entity(%struct.drm_gpu_scheduler*) #2

declare dso_local %struct.drm_sched_job* @drm_sched_entity_pop_job(%struct.drm_sched_entity*) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @drm_sched_job_begin(%struct.drm_sched_job*) #2

declare dso_local i32 @drm_sched_fence_scheduled(%struct.drm_sched_fence*) #2

declare dso_local i32 @IS_ERR_OR_NULL(%struct.dma_fence*) #2

declare dso_local i32 @dma_fence_get(%struct.dma_fence*) #2

declare dso_local i32 @dma_fence_add_callback(%struct.dma_fence*, i32*, i32 (%struct.dma_fence*, i32*)*) #2

declare dso_local i32 @drm_sched_process_job(%struct.dma_fence*, i32*) #2

declare dso_local i32 @DRM_ERROR(i8*, i32) #2

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #2

declare dso_local i32 @dma_fence_set_error(i32*, i32) #2

declare dso_local i32 @PTR_ERR(%struct.dma_fence*) #2

declare dso_local i32 @wake_up(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
