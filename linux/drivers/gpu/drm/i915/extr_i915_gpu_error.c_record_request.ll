; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_record_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_record_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.i915_gem_context* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.i915_gem_context = type { i64 }
%struct.drm_i915_error_request = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_request*, %struct.drm_i915_error_request*)* @record_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_request(%struct.i915_request* %0, %struct.drm_i915_error_request* %1) #0 {
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.drm_i915_error_request*, align 8
  %5 = alloca %struct.i915_gem_context*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  store %struct.drm_i915_error_request* %1, %struct.drm_i915_error_request** %4, align 8
  %6 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %7 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %6, i32 0, i32 6
  %8 = load %struct.i915_gem_context*, %struct.i915_gem_context** %7, align 8
  store %struct.i915_gem_context* %8, %struct.i915_gem_context** %5, align 8
  %9 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %10 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %4, align 8
  %14 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %16 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %4, align 8
  %20 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %22 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %4, align 8
  %26 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %28 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %4, align 8
  %32 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %34 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %4, align 8
  %37 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %39 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @i915_ggtt_offset(i32 %42)
  %44 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %4, align 8
  %45 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %47 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %4, align 8
  %50 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %52 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %4, align 8
  %55 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = call i32 (...) @rcu_read_lock()
  %57 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %58 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %2
  %62 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %63 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @pid_nr(i64 %64)
  br label %67

66:                                               ; preds = %2
  br label %67

67:                                               ; preds = %66, %61
  %68 = phi i32 [ %65, %61 ], [ 0, %66 ]
  %69 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %4, align 8
  %70 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @i915_ggtt_offset(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @pid_nr(i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
