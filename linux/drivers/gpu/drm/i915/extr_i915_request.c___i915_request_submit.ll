; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c___i915_request_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c___i915_request_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i64, %struct.TYPE_5__*, i32, i32, %struct.intel_engine_cs* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.intel_engine_cs = type { %struct.TYPE_7__, i32, i32 (%struct.i915_request.0*, i64)*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.i915_request.0 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"%s fence %llx:%lld, current %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@I915_FENCE_FLAG_ACTIVE = common dso_local global i32 0, align 4
@DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT = common dso_local global i32 0, align 4
@DMA_FENCE_FLAG_SIGNALED_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__i915_request_submit(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %5 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %6 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %5, i32 0, i32 7
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  store %struct.intel_engine_cs* %7, %struct.intel_engine_cs** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %12 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %16 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %20 = call i32 @hwsp_seqno(%struct.i915_request* %19)
  %21 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 %18, i32 %20)
  %22 = call i32 (...) @irqs_disabled()
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @GEM_BUG_ON(i32 %25)
  %27 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %28 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = call i32 @lockdep_assert_held(i32* %29)
  %31 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %32 = call i64 @i915_request_completed(%struct.i915_request* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %88

35:                                               ; preds = %1
  %36 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %37 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @i915_gem_context_is_banned(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i32 @i915_request_skip(%struct.i915_request* %42, i32 %44)
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %48 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %54 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %53, i32 0, i32 5
  %55 = call i64 @i915_sw_fence_signaled(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %59 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %63 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %57, %52, %46
  %67 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %68 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %67, i32 0, i32 2
  %69 = load i32 (%struct.i915_request.0*, i64)*, i32 (%struct.i915_request.0*, i64)** %68, align 8
  %70 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %71 = bitcast %struct.i915_request* %70 to %struct.i915_request.0*
  %72 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %73 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %72, i32 0, i32 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %78 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = call i32 %69(%struct.i915_request.0* %71, i64 %80)
  %82 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %83 = call i32 @trace_i915_request_execute(%struct.i915_request* %82)
  %84 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %85 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %66, %34
  %89 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %90 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %89, i32 0, i32 0
  %91 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %92 = call i32 @spin_lock_nested(i32* %90, i32 %91)
  %93 = load i32, i32* @I915_FENCE_FLAG_ACTIVE, align 4
  %94 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %95 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = call i32 @test_and_set_bit(i32 %93, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %88
  %100 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %101 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %104 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = call i32 @list_move_tail(i32* %102, i32* %105)
  br label %107

107:                                              ; preds = %99, %88
  %108 = load i32, i32* @DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, align 4
  %109 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %110 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = call i64 @test_bit(i32 %108, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %107
  %115 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %116 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %117 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = call i64 @test_bit(i32 %115, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %114
  %122 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %123 = call i32 @i915_request_enable_breadcrumb(%struct.i915_request* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %127 = call i32 @intel_engine_queue_breadcrumbs(%struct.intel_engine_cs* %126)
  br label %128

128:                                              ; preds = %125, %121, %114, %107
  %129 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %130 = call i32 @__notify_execute_cb(%struct.i915_request* %129)
  %131 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %132 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %131, i32 0, i32 0
  %133 = call i32 @spin_unlock(i32* %132)
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @GEM_TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hwsp_seqno(%struct.i915_request*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @i915_request_completed(%struct.i915_request*) #1

declare dso_local i64 @i915_gem_context_is_banned(i32) #1

declare dso_local i32 @i915_request_skip(%struct.i915_request*, i32) #1

declare dso_local i64 @i915_sw_fence_signaled(i32*) #1

declare dso_local i32 @trace_i915_request_execute(%struct.i915_request*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @i915_request_enable_breadcrumb(%struct.i915_request*) #1

declare dso_local i32 @intel_engine_queue_breadcrumbs(%struct.intel_engine_cs*) #1

declare dso_local i32 @__notify_execute_cb(%struct.i915_request*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
