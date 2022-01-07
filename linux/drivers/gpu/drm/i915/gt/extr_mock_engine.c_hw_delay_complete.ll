; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_mock_engine.c_hw_delay_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_mock_engine.c_hw_delay_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mock_engine = type { i32, i32 }
%struct.timer_list = type { i32 }
%struct.i915_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@hw_delay = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@engine = common dso_local global %struct.mock_engine* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @hw_delay_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_delay_complete(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.mock_engine*, align 8
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.mock_engine*, %struct.mock_engine** %3, align 8
  %7 = ptrtoint %struct.mock_engine* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @hw_delay, align 4
  %10 = call %struct.mock_engine* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.mock_engine* %10, %struct.mock_engine** %3, align 8
  %11 = load %struct.mock_engine*, %struct.mock_engine** %3, align 8
  %12 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.mock_engine*, %struct.mock_engine** %3, align 8
  %16 = call %struct.i915_request* @first_request(%struct.mock_engine* %15)
  store %struct.i915_request* %16, %struct.i915_request** %4, align 8
  %17 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %18 = icmp ne %struct.i915_request* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %21 = call i32 @advance(%struct.i915_request* %20)
  br label %22

22:                                               ; preds = %19, %1
  br label %23

23:                                               ; preds = %43, %22
  %24 = load %struct.mock_engine*, %struct.mock_engine** %3, align 8
  %25 = call %struct.i915_request* @first_request(%struct.mock_engine* %24)
  store %struct.i915_request* %25, %struct.i915_request** %4, align 8
  %26 = icmp ne %struct.i915_request* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %29 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.mock_engine*, %struct.mock_engine** %3, align 8
  %35 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %34, i32 0, i32 1
  %36 = load i64, i64* @jiffies, align 8
  %37 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %38 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %36, %40
  %42 = call i32 @mod_timer(i32* %35, i64 %41)
  br label %46

43:                                               ; preds = %27
  %44 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %45 = call i32 @advance(%struct.i915_request* %44)
  br label %23

46:                                               ; preds = %33, %23
  %47 = load %struct.mock_engine*, %struct.mock_engine** %3, align 8
  %48 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local %struct.mock_engine* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.i915_request* @first_request(%struct.mock_engine*) #1

declare dso_local i32 @advance(%struct.i915_request*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
