; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_rps_boost.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_rps_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.intel_rps }
%struct.intel_rps = type { i64, i32, i32, i32, i32, i32 }

@I915_REQUEST_WAITBOOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen6_rps_boost(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.intel_rps*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %6 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %7 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.intel_rps* %10, %struct.intel_rps** %3, align 8
  %11 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %12 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %71

16:                                               ; preds = %1
  %17 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %18 = call i64 @i915_request_signaled(%struct.i915_request* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %71

21:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  %22 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %23 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %27 = call i32 @i915_request_has_waitboost(%struct.i915_request* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %21
  %30 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %31 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %30, i32 0, i32 2
  %32 = call i32 @dma_fence_is_signaled_locked(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %36 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %35, i32 0, i32 4
  %37 = call i32 @atomic_fetch_inc(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @I915_REQUEST_WAITBOOST, align 4
  %42 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %43 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %34, %29, %21
  %47 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %48 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %47, i32 0, i32 0
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %71

54:                                               ; preds = %46
  %55 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %56 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @READ_ONCE(i32 %57)
  %59 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %60 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %65 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %64, i32 0, i32 2
  %66 = call i32 @schedule_work(i32* %65)
  br label %67

67:                                               ; preds = %63, %54
  %68 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %69 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %68, i32 0, i32 1
  %70 = call i32 @atomic_inc(i32* %69)
  br label %71

71:                                               ; preds = %67, %53, %20, %15
  ret void
}

declare dso_local i64 @i915_request_signaled(%struct.i915_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @i915_request_has_waitboost(%struct.i915_request*) #1

declare dso_local i32 @dma_fence_is_signaled_locked(i32*) #1

declare dso_local i32 @atomic_fetch_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
