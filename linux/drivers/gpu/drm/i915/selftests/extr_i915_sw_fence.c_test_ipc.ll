; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_sw_fence.c_test_ipc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_sw_fence.c_test_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_ipc = type { i8*, i8*, i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@task_ipc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"worker updated value before i915_sw_fence was signaled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"worker signaled i915_sw_fence before value was posted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_ipc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ipc(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.task_ipc, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i8* (...) @alloc_fence()
  %7 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 0
  store i8* %6, i8** %7, align 8
  %8 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %71

14:                                               ; preds = %1
  %15 = call i8* (...) @alloc_fence()
  %16 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %66

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 4
  %25 = call i32 @init_completion(i32* %24)
  %26 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 2
  %28 = load i32, i32* @task_ipc, align 4
  %29 = call i32 @INIT_WORK_ONSTACK(i32* %27, i32 %28)
  %30 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 2
  %31 = call i32 @schedule_work(i32* %30)
  %32 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 4
  %33 = call i32 @wait_for_completion(i32* %32)
  %34 = call i32 @usleep_range(i32 1000, i32 2000)
  %35 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @READ_ONCE(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %23
  %44 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @i915_sw_fence_commit(i8* %45)
  %47 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @i915_sw_fence_wait(i8* %48)
  %50 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @READ_ONCE(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %43
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %43
  %59 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 2
  %60 = call i32 @flush_work(i32* %59)
  %61 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 2
  %62 = call i32 @destroy_work_on_stack(i32* %61)
  %63 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @free_fence(i8* %64)
  br label %66

66:                                               ; preds = %58, %20
  %67 = getelementptr inbounds %struct.task_ipc, %struct.task_ipc* %4, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @free_fence(i8* %68)
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %66, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i8* @alloc_fence(...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK_ONSTACK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @i915_sw_fence_commit(i8*) #1

declare dso_local i32 @i915_sw_fence_wait(i8*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @destroy_work_on_stack(i32*) #1

declare dso_local i32 @free_fence(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
