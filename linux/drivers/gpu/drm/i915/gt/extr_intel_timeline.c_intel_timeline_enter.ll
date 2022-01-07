; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_timeline = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_gt_timelines }
%struct.intel_gt_timelines = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_timeline_enter(%struct.intel_timeline* %0) #0 {
  %2 = alloca %struct.intel_timeline*, align 8
  %3 = alloca %struct.intel_gt_timelines*, align 8
  %4 = alloca i64, align 8
  store %struct.intel_timeline* %0, %struct.intel_timeline** %2, align 8
  %5 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %6 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.intel_gt_timelines* %8, %struct.intel_gt_timelines** %3, align 8
  %9 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %10 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %9, i32 0, i32 3
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %13 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %12, i32 0, i32 2
  %14 = call i32 @atomic_read(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @GEM_BUG_ON(i32 %17)
  %19 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %20 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %46

25:                                               ; preds = %1
  %26 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %27 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @GEM_BUG_ON(i32 %31)
  %33 = load %struct.intel_gt_timelines*, %struct.intel_gt_timelines** %3, align 8
  %34 = getelementptr inbounds %struct.intel_gt_timelines, %struct.intel_gt_timelines* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %38 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %37, i32 0, i32 0
  %39 = load %struct.intel_gt_timelines*, %struct.intel_gt_timelines** %3, align 8
  %40 = getelementptr inbounds %struct.intel_gt_timelines, %struct.intel_gt_timelines* %39, i32 0, i32 1
  %41 = call i32 @list_add(i32* %38, i32* %40)
  %42 = load %struct.intel_gt_timelines*, %struct.intel_gt_timelines** %3, align 8
  %43 = getelementptr inbounds %struct.intel_gt_timelines, %struct.intel_gt_timelines* %42, i32 0, i32 0
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
