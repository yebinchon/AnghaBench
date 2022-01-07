; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_timeline = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_gt_timelines }
%struct.intel_gt_timelines = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_timeline_exit(%struct.intel_timeline* %0) #0 {
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
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @GEM_BUG_ON(i32 %17)
  %19 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %20 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %40

25:                                               ; preds = %1
  %26 = load %struct.intel_gt_timelines*, %struct.intel_gt_timelines** %3, align 8
  %27 = getelementptr inbounds %struct.intel_gt_timelines, %struct.intel_gt_timelines* %26, i32 0, i32 0
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %31 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %30, i32 0, i32 1
  %32 = call i32 @list_del(i32* %31)
  %33 = load %struct.intel_gt_timelines*, %struct.intel_gt_timelines** %3, align 8
  %34 = getelementptr inbounds %struct.intel_gt_timelines, %struct.intel_gt_timelines* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %38 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %37, i32 0, i32 0
  %39 = call i32 @i915_syncmap_free(i32* %38)
  br label %40

40:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i915_syncmap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
