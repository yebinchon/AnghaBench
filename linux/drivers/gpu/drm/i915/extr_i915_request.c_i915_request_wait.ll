; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c_i915_request_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c_i915_request_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.request_wait = type { i32, i32 }

@I915_WAIT_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@ETIME = common dso_local global i64 0, align 8
@_THIS_IP_ = common dso_local global i32 0, align 4
@CONFIG_DRM_I915_SPIN_REQUEST = common dso_local global i64 0, align 8
@I915_WAIT_PRIORITY = common dso_local global i32 0, align 4
@I915_PRIORITY_WAIT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@request_wait_wake = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i915_request_wait(%struct.i915_request* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.request_wait, align 4
  store %struct.i915_request* %0, %struct.i915_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @I915_WAIT_INTERRUPTIBLE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %8, align 4
  %20 = call i32 (...) @might_sleep()
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @GEM_BUG_ON(i32 %23)
  %25 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %26 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %25, i32 0, i32 1
  %27 = call i64 @dma_fence_is_signaled(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %4, align 8
  br label %144

31:                                               ; preds = %18
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* @ETIME, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %4, align 8
  br label %144

37:                                               ; preds = %31
  %38 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @trace_i915_request_wait_begin(%struct.i915_request* %38, i32 %39)
  %41 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %42 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* @_THIS_IP_, align 4
  %50 = call i32 @mutex_acquire(i32* %48, i32 0, i32 0, i32 %49)
  %51 = load i64, i64* @CONFIG_DRM_I915_SPIN_REQUEST, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %37
  %54 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i64, i64* @CONFIG_DRM_I915_SPIN_REQUEST, align 8
  %57 = call i64 @__i915_spin_request(%struct.i915_request* %54, i32 %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %61 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %60, i32 0, i32 1
  %62 = call i32 @dma_fence_signal(i32* %61)
  br label %130

63:                                               ; preds = %53, %37
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @I915_WAIT_PRIORITY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %70 = call i32 @i915_request_started(%struct.i915_request* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %74 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @INTEL_GEN(i32 %75)
  %77 = icmp sge i32 %76, 6
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %80 = call i32 @gen6_rps_boost(%struct.i915_request* %79)
  br label %81

81:                                               ; preds = %78, %72, %68
  %82 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %83 = load i32, i32* @I915_PRIORITY_WAIT, align 4
  %84 = call i32 @i915_schedule_bump_priority(%struct.i915_request* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %63
  %86 = load i32, i32* @current, align 4
  %87 = getelementptr inbounds %struct.request_wait, %struct.request_wait* %9, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  %88 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %89 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.request_wait, %struct.request_wait* %9, i32 0, i32 0
  %91 = load i32, i32* @request_wait_wake, align 4
  %92 = call i64 @dma_fence_add_callback(i32* %89, i32* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %130

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %120, %95
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @set_current_state(i32 %97)
  %99 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %100 = call i64 @i915_request_completed(%struct.i915_request* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %104 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %103, i32 0, i32 1
  %105 = call i32 @dma_fence_signal(i32* %104)
  br label %123

106:                                              ; preds = %96
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @current, align 4
  %109 = call i64 @signal_pending_state(i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i64, i64* @ERESTARTSYS, align 8
  %113 = sub nsw i64 0, %112
  store i64 %113, i64* %7, align 8
  br label %123

114:                                              ; preds = %106
  %115 = load i64, i64* %7, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i64, i64* @ETIME, align 8
  %119 = sub nsw i64 0, %118
  store i64 %119, i64* %7, align 8
  br label %123

120:                                              ; preds = %114
  %121 = load i64, i64* %7, align 8
  %122 = call i64 @io_schedule_timeout(i64 %121)
  store i64 %122, i64* %7, align 8
  br label %96

123:                                              ; preds = %117, %111, %102
  %124 = load i32, i32* @TASK_RUNNING, align 4
  %125 = call i32 @__set_current_state(i32 %124)
  %126 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %127 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.request_wait, %struct.request_wait* %9, i32 0, i32 0
  %129 = call i32 @dma_fence_remove_callback(i32* %127, i32* %128)
  br label %130

130:                                              ; preds = %123, %94, %59
  %131 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %132 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* @_THIS_IP_, align 4
  %140 = call i32 @mutex_release(i32* %138, i32 0, i32 %139)
  %141 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %142 = call i32 @trace_i915_request_wait_end(%struct.i915_request* %141)
  %143 = load i64, i64* %7, align 8
  store i64 %143, i64* %4, align 8
  br label %144

144:                                              ; preds = %130, %34, %29
  %145 = load i64, i64* %4, align 8
  ret i64 %145
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @dma_fence_is_signaled(i32*) #1

declare dso_local i32 @trace_i915_request_wait_begin(%struct.i915_request*, i32) #1

declare dso_local i32 @mutex_acquire(i32*, i32, i32, i32) #1

declare dso_local i64 @__i915_spin_request(%struct.i915_request*, i32, i64) #1

declare dso_local i32 @dma_fence_signal(i32*) #1

declare dso_local i32 @i915_request_started(%struct.i915_request*) #1

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @gen6_rps_boost(%struct.i915_request*) #1

declare dso_local i32 @i915_schedule_bump_priority(%struct.i915_request*, i32) #1

declare dso_local i64 @dma_fence_add_callback(i32*, i32*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @i915_request_completed(%struct.i915_request*) #1

declare dso_local i64 @signal_pending_state(i32, i32) #1

declare dso_local i64 @io_schedule_timeout(i64) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @dma_fence_remove_callback(i32*, i32*) #1

declare dso_local i32 @mutex_release(i32*, i32, i32) #1

declare dso_local i32 @trace_i915_request_wait_end(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
