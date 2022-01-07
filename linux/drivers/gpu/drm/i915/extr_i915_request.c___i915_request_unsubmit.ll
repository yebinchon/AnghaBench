; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c___i915_request_unsubmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c___i915_request_unsubmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_8__, i32, %struct.TYPE_6__, %struct.intel_engine_cs* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.intel_engine_cs = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s fence %llx:%lld, current %d\0A\00", align 1
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT = common dso_local global i32 0, align 4
@I915_FENCE_FLAG_ACTIVE = common dso_local global i32 0, align 4
@I915_PRIORITY_NOSEMAPHORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__i915_request_unsubmit(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.intel_engine_cs*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %4 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %5 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %4, i32 0, i32 3
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  store %struct.intel_engine_cs* %6, %struct.intel_engine_cs** %3, align 8
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %8 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %11 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %15 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %19 = call i32 @hwsp_seqno(%struct.i915_request* %18)
  %20 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13, i32 %17, i32 %19)
  %21 = call i32 (...) @irqs_disabled()
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @GEM_BUG_ON(i32 %24)
  %26 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %27 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @lockdep_assert_held(i32* %28)
  %30 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %31 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %30, i32 0, i32 1
  %32 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %33 = call i32 @spin_lock_nested(i32* %31, i32 %32)
  %34 = load i32, i32* @DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, align 4
  %35 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %36 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i64 @test_bit(i32 %34, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %1
  %41 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %42 = call i32 @i915_request_cancel_breadcrumb(%struct.i915_request* %41)
  br label %43

43:                                               ; preds = %40, %1
  %44 = load i32, i32* @I915_FENCE_FLAG_ACTIVE, align 4
  %45 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %46 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i64 @test_bit(i32 %44, i32* %47)
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @GEM_BUG_ON(i32 %51)
  %53 = load i32, i32* @I915_FENCE_FLAG_ACTIVE, align 4
  %54 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %55 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @clear_bit(i32 %53, i32* %56)
  %58 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %59 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %58, i32 0, i32 1
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %62 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %43
  %67 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %68 = call i64 @i915_request_started(%struct.i915_request* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i32, i32* @I915_PRIORITY_NOSEMAPHORE, align 4
  %72 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %73 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %71
  store i32 %77, i32* %75, align 8
  %78 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %79 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %70, %66, %43
  ret void
}

declare dso_local i32 @GEM_TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hwsp_seqno(%struct.i915_request*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @i915_request_cancel_breadcrumb(%struct.i915_request*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @i915_request_started(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
