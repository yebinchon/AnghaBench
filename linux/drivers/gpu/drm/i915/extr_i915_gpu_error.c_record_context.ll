; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_record_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_record_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_error_context = type { i8*, i8*, i32, i32, i32, i32 }
%struct.i915_request = type { %struct.i915_gem_context* }
%struct.i915_gem_context = type { i32, i32, i32, i32, i64 }
%struct.task_struct = type { i32, i32 }

@PIDTYPE_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_error_context*, %struct.i915_request*)* @record_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_context(%struct.drm_i915_error_context* %0, %struct.i915_request* %1) #0 {
  %3 = alloca %struct.drm_i915_error_context*, align 8
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca %struct.i915_gem_context*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.drm_i915_error_context* %0, %struct.drm_i915_error_context** %3, align 8
  store %struct.i915_request* %1, %struct.i915_request** %4, align 8
  %7 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %8 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %7, i32 0, i32 0
  %9 = load %struct.i915_gem_context*, %struct.i915_gem_context** %8, align 8
  store %struct.i915_gem_context* %9, %struct.i915_gem_context** %5, align 8
  %10 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %11 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %17 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @PIDTYPE_PID, align 4
  %20 = call %struct.task_struct* @pid_task(i64 %18, i32 %19)
  store %struct.task_struct* %20, %struct.task_struct** %6, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %22 = icmp ne %struct.task_struct* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %14
  %24 = load %struct.drm_i915_error_context*, %struct.drm_i915_error_context** %3, align 8
  %25 = getelementptr inbounds %struct.drm_i915_error_context, %struct.drm_i915_error_context* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcpy(i32 %26, i32 %29)
  %31 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_i915_error_context*, %struct.drm_i915_error_context** %3, align 8
  %35 = getelementptr inbounds %struct.drm_i915_error_context, %struct.drm_i915_error_context* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %23, %14
  %37 = call i32 (...) @rcu_read_unlock()
  br label %38

38:                                               ; preds = %36, %2
  %39 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %40 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_i915_error_context*, %struct.drm_i915_error_context** %3, align 8
  %43 = getelementptr inbounds %struct.drm_i915_error_context, %struct.drm_i915_error_context* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %45 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.drm_i915_error_context*, %struct.drm_i915_error_context** %3, align 8
  %48 = getelementptr inbounds %struct.drm_i915_error_context, %struct.drm_i915_error_context* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %50 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %49, i32 0, i32 1
  %51 = call i8* @atomic_read(i32* %50)
  %52 = load %struct.drm_i915_error_context*, %struct.drm_i915_error_context** %3, align 8
  %53 = getelementptr inbounds %struct.drm_i915_error_context, %struct.drm_i915_error_context* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %55 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %54, i32 0, i32 0
  %56 = call i8* @atomic_read(i32* %55)
  %57 = load %struct.drm_i915_error_context*, %struct.drm_i915_error_context** %3, align 8
  %58 = getelementptr inbounds %struct.drm_i915_error_context, %struct.drm_i915_error_context* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %60 = call i32 @i915_gem_context_no_error_capture(%struct.i915_gem_context* %59)
  ret i32 %60
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @pid_task(i64, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local i32 @i915_gem_context_no_error_capture(%struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
