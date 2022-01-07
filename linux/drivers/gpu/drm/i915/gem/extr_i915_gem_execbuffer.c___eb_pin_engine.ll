; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c___eb_pin_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c___eb_pin_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { %struct.intel_context*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_context = type { %struct.TYPE_2__* }
%struct.intel_timeline = type { i32 }
%struct.i915_request = type { i32 }

@I915_WAIT_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*, %struct.intel_context*)* @__eb_pin_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__eb_pin_engine(%struct.i915_execbuffer* %0, %struct.intel_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_execbuffer*, align 8
  %5 = alloca %struct.intel_context*, align 8
  %6 = alloca %struct.intel_timeline*, align 8
  %7 = alloca %struct.i915_request*, align 8
  %8 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %4, align 8
  store %struct.intel_context* %1, %struct.intel_context** %5, align 8
  %9 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %10 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @intel_gt_terminally_wedged(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %81

19:                                               ; preds = %2
  %20 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %4, align 8
  %21 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %22 = call i32 @__eb_pin_context(%struct.i915_execbuffer* %20, %struct.intel_context* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %81

27:                                               ; preds = %19
  %28 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %29 = call %struct.intel_timeline* @intel_context_timeline_lock(%struct.intel_context* %28)
  store %struct.intel_timeline* %29, %struct.intel_timeline** %6, align 8
  %30 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %31 = call i64 @IS_ERR(%struct.intel_timeline* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.intel_timeline* %34)
  store i32 %35, i32* %8, align 4
  br label %76

36:                                               ; preds = %27
  %37 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %38 = call i32 @intel_context_enter(%struct.intel_context* %37)
  %39 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %40 = call %struct.i915_request* @eb_throttle(%struct.intel_context* %39)
  store %struct.i915_request* %40, %struct.i915_request** %7, align 8
  %41 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %42 = call i32 @intel_context_timeline_unlock(%struct.intel_timeline* %41)
  %43 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %44 = icmp ne %struct.i915_request* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %36
  %46 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %47 = load i32, i32* @I915_WAIT_INTERRUPTIBLE, align 4
  %48 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %49 = call i64 @i915_request_wait(%struct.i915_request* %46, i32 %47, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %53 = call i32 @i915_request_put(%struct.i915_request* %52)
  %54 = load i32, i32* @EINTR, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %68

56:                                               ; preds = %45
  %57 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %58 = call i32 @i915_request_put(%struct.i915_request* %57)
  br label %59

59:                                               ; preds = %56, %36
  %60 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %61 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %4, align 8
  %64 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %63, i32 0, i32 1
  store %struct.TYPE_2__* %62, %struct.TYPE_2__** %64, align 8
  %65 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %66 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %4, align 8
  %67 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %66, i32 0, i32 0
  store %struct.intel_context* %65, %struct.intel_context** %67, align 8
  store i32 0, i32* %3, align 4
  br label %81

68:                                               ; preds = %51
  %69 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %70 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %69, i32 0, i32 0
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %73 = call i32 @intel_context_exit(%struct.intel_context* %72)
  %74 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %75 = call i32 @intel_context_timeline_unlock(%struct.intel_timeline* %74)
  br label %76

76:                                               ; preds = %68, %33
  %77 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %4, align 8
  %78 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %79 = call i32 @__eb_unpin_context(%struct.i915_execbuffer* %77, %struct.intel_context* %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %59, %25, %17
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @intel_gt_terminally_wedged(i32) #1

declare dso_local i32 @__eb_pin_context(%struct.i915_execbuffer*, %struct.intel_context*) #1

declare dso_local %struct.intel_timeline* @intel_context_timeline_lock(%struct.intel_context*) #1

declare dso_local i64 @IS_ERR(%struct.intel_timeline*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_timeline*) #1

declare dso_local i32 @intel_context_enter(%struct.intel_context*) #1

declare dso_local %struct.i915_request* @eb_throttle(%struct.intel_context*) #1

declare dso_local i32 @intel_context_timeline_unlock(%struct.intel_timeline*) #1

declare dso_local i64 @i915_request_wait(%struct.i915_request*, i32, i32) #1

declare dso_local i32 @i915_request_put(%struct.i915_request*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_context_exit(%struct.intel_context*) #1

declare dso_local i32 @__eb_unpin_context(%struct.i915_execbuffer*, %struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
