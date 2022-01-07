; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_lrc.c_smoke_crescendo_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_lrc.c_smoke_crescendo_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preempt_smoke = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i915_gem_context = type { i32 }

@end_time = common dso_local global i32 0, align 4
@I915_PRIORITY_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @smoke_crescendo_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smoke_crescendo_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.preempt_smoke*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i915_gem_context*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.preempt_smoke*
  store %struct.preempt_smoke* %9, %struct.preempt_smoke** %4, align 8
  %10 = load i32, i32* @end_time, align 4
  %11 = call i32 @IGT_TIMEOUT(i32 %10)
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %43, %1
  %13 = load %struct.preempt_smoke*, %struct.preempt_smoke** %4, align 8
  %14 = call %struct.i915_gem_context* @smoke_context(%struct.preempt_smoke* %13)
  store %struct.i915_gem_context* %14, %struct.i915_gem_context** %6, align 8
  %15 = load %struct.preempt_smoke*, %struct.preempt_smoke** %4, align 8
  %16 = getelementptr inbounds %struct.preempt_smoke, %struct.preempt_smoke* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.preempt_smoke*, %struct.preempt_smoke** %4, align 8
  %22 = load %struct.i915_gem_context*, %struct.i915_gem_context** %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @I915_PRIORITY_MAX, align 8
  %25 = urem i64 %23, %24
  %26 = load %struct.preempt_smoke*, %struct.preempt_smoke** %4, align 8
  %27 = getelementptr inbounds %struct.preempt_smoke, %struct.preempt_smoke* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @smoke_submit(%struct.preempt_smoke* %21, %struct.i915_gem_context* %22, i64 %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.preempt_smoke*, %struct.preempt_smoke** %4, align 8
  %31 = getelementptr inbounds %struct.preempt_smoke, %struct.preempt_smoke* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %12
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %52

40:                                               ; preds = %12
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @end_time, align 4
  %45 = call i32 @__igt_timeout(i32 %44, i32* null)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %12, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.preempt_smoke*, %struct.preempt_smoke** %4, align 8
  %51 = getelementptr inbounds %struct.preempt_smoke, %struct.preempt_smoke* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %38
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @IGT_TIMEOUT(i32) #1

declare dso_local %struct.i915_gem_context* @smoke_context(%struct.preempt_smoke*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smoke_submit(%struct.preempt_smoke*, %struct.i915_gem_context*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__igt_timeout(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
