; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_pipe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_pipe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_device = type { i64, %struct.lima_sched_pipe* }
%struct.lima_sched_pipe = type { i32, i32, i32, i32, i32, i32, i64 }

@lima_pipe_pp = common dso_local global i32 0, align 4
@lima_gpu_mali400 = common dso_local global i64 0, align 8
@lima_pp_task_slab = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"lima_pp_task\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lima_pp_task_slab_refcnt = common dso_local global i32 0, align 4
@lima_pp_task_validate = common dso_local global i32 0, align 4
@lima_pp_task_run = common dso_local global i32 0, align 4
@lima_pp_task_fini = common dso_local global i32 0, align 4
@lima_pp_task_error = common dso_local global i32 0, align 4
@lima_pp_task_mmu_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_pp_pipe_init(%struct.lima_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lima_sched_pipe*, align 8
  store %struct.lima_device* %0, %struct.lima_device** %3, align 8
  %6 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %7 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %6, i32 0, i32 1
  %8 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %7, align 8
  %9 = load i32, i32* @lima_pipe_pp, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %8, i64 %10
  store %struct.lima_sched_pipe* %11, %struct.lima_sched_pipe** %5, align 8
  %12 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %13 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @lima_gpu_mali400, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 4, i32* %4, align 4
  br label %19

18:                                               ; preds = %1
  store i32 4, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i64, i64* @lima_pp_task_slab, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @kmem_cache_create_usercopy(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %26, i32 0, i32 %27, i32 4, i32 %28, i32* null)
  store i64 %29, i64* @lima_pp_task_slab, align 8
  %30 = load i64, i64* @lima_pp_task_slab, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %60

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i32, i32* @lima_pp_task_slab_refcnt, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @lima_pp_task_slab_refcnt, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %41 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* @lima_pp_task_slab, align 8
  %43 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %44 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %43, i32 0, i32 6
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @lima_pp_task_validate, align 4
  %46 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %47 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @lima_pp_task_run, align 4
  %49 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %50 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @lima_pp_task_fini, align 4
  %52 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %53 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @lima_pp_task_error, align 4
  %55 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %56 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @lima_pp_task_mmu_error, align 4
  %58 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %59 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %36, %32
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @kmem_cache_create_usercopy(i8*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
