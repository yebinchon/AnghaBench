; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_context.c_context_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_context.c_context_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { %struct.intel_timeline* }
%struct.intel_timeline = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i915_request = type { i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_context*)* @context_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_sync(%struct.intel_context* %0) #0 {
  %2 = alloca %struct.intel_context*, align 8
  %3 = alloca %struct.intel_timeline*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca i64, align 8
  store %struct.intel_context* %0, %struct.intel_context** %2, align 8
  %7 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %8 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %7, i32 0, i32 0
  %9 = load %struct.intel_timeline*, %struct.intel_timeline** %8, align 8
  store %struct.intel_timeline* %9, %struct.intel_timeline** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %11 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  br label %13

13:                                               ; preds = %46, %1
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %16 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.i915_request* @rcu_dereference(i32 %18)
  store %struct.i915_request* %19, %struct.i915_request** %5, align 8
  %20 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %21 = icmp ne %struct.i915_request* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %24 = call %struct.i915_request* @i915_request_get_rcu(%struct.i915_request* %23)
  store %struct.i915_request* %24, %struct.i915_request** %5, align 8
  br label %25

25:                                               ; preds = %22, %13
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %28 = icmp ne %struct.i915_request* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %50

30:                                               ; preds = %25
  %31 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %32 = load i32, i32* @HZ, align 4
  %33 = sdiv i32 %32, 10
  %34 = call i64 @i915_request_wait(%struct.i915_request* %31, i32 0, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %42 = call i32 @i915_request_retire_upto(%struct.i915_request* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %45 = call i32 @i915_request_put(%struct.i915_request* %44)
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %13, label %50

50:                                               ; preds = %46, %29
  %51 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %52 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.i915_request* @rcu_dereference(i32) #1

declare dso_local %struct.i915_request* @i915_request_get_rcu(%struct.i915_request*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @i915_request_wait(%struct.i915_request*, i32, i32) #1

declare dso_local i32 @i915_request_retire_upto(%struct.i915_request*) #1

declare dso_local i32 @i915_request_put(%struct.i915_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
