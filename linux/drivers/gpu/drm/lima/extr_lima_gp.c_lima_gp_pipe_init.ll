; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_pipe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_pipe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_device = type { %struct.lima_sched_pipe* }
%struct.lima_sched_pipe = type { i32, i32, i32, i32, i32, i32, i64 }

@lima_pipe_gp = common dso_local global i32 0, align 4
@lima_gp_task_slab = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"lima_gp_task\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lima_gp_task_slab_refcnt = common dso_local global i32 0, align 4
@lima_gp_task_validate = common dso_local global i32 0, align 4
@lima_gp_task_run = common dso_local global i32 0, align 4
@lima_gp_task_fini = common dso_local global i32 0, align 4
@lima_gp_task_error = common dso_local global i32 0, align 4
@lima_gp_task_mmu_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_gp_pipe_init(%struct.lima_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lima_sched_pipe*, align 8
  store %struct.lima_device* %0, %struct.lima_device** %3, align 8
  store i32 4, i32* %4, align 4
  %6 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %7 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %6, i32 0, i32 0
  %8 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %7, align 8
  %9 = load i32, i32* @lima_pipe_gp, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %8, i64 %10
  store %struct.lima_sched_pipe* %11, %struct.lima_sched_pipe** %5, align 8
  %12 = load i64, i64* @lima_gp_task_slab, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @kmem_cache_create_usercopy(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18, i32 0, i32 %19, i32 4, i32 %20, i32* null)
  store i64 %21, i64* @lima_gp_task_slab, align 8
  %22 = load i64, i64* @lima_gp_task_slab, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %52

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32, i32* @lima_gp_task_slab_refcnt, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @lima_gp_task_slab_refcnt, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %33 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* @lima_gp_task_slab, align 8
  %35 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %36 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %35, i32 0, i32 6
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @lima_gp_task_validate, align 4
  %38 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %39 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @lima_gp_task_run, align 4
  %41 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %42 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @lima_gp_task_fini, align 4
  %44 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %45 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @lima_gp_task_error, align 4
  %47 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %48 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @lima_gp_task_mmu_error, align 4
  %50 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %51 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %28, %24
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @kmem_cache_create_usercopy(i8*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
