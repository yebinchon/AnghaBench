; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_intel_gt_reset_trylock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_intel_gt_reset_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@I915_RESET_BACKOFF = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gt_reset_trylock(%struct.intel_gt* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca i32*, align 8
  store %struct.intel_gt* %0, %struct.intel_gt** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %7 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @might_lock(i32* %8)
  %10 = call i32 (...) @might_sleep()
  %11 = call i32 (...) @rcu_read_lock()
  br label %12

12:                                               ; preds = %38, %2
  %13 = load i32, i32* @I915_RESET_BACKOFF, align 4
  %14 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %15 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i64 @test_bit(i32 %13, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %12
  %20 = call i32 (...) @rcu_read_unlock()
  %21 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %22 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @I915_RESET_BACKOFF, align 4
  %26 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %27 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i64 @test_bit(i32 %25, i32* %28)
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @wait_event_interruptible(i32 %24, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load i32, i32* @EINTR, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %19
  %39 = call i32 (...) @rcu_read_lock()
  br label %12

40:                                               ; preds = %12
  %41 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %42 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @srcu_read_lock(i32* %43)
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %46 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %40, %35
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @might_lock(i32*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
