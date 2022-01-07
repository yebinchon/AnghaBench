; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c___idle_hwsp_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c___idle_hwsp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_timeline_hwsp = type { i64, i32, i32, %struct.intel_gt_timelines* }
%struct.intel_gt_timelines = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_timeline_hwsp*, i32)* @__idle_hwsp_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__idle_hwsp_free(%struct.intel_timeline_hwsp* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_timeline_hwsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_gt_timelines*, align 8
  %6 = alloca i64, align 8
  store %struct.intel_timeline_hwsp* %0, %struct.intel_timeline_hwsp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.intel_timeline_hwsp*, %struct.intel_timeline_hwsp** %3, align 8
  %8 = getelementptr inbounds %struct.intel_timeline_hwsp, %struct.intel_timeline_hwsp* %7, i32 0, i32 3
  %9 = load %struct.intel_gt_timelines*, %struct.intel_gt_timelines** %8, align 8
  store %struct.intel_gt_timelines* %9, %struct.intel_gt_timelines** %5, align 8
  %10 = load %struct.intel_gt_timelines*, %struct.intel_gt_timelines** %5, align 8
  %11 = getelementptr inbounds %struct.intel_gt_timelines, %struct.intel_gt_timelines* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.intel_timeline_hwsp*, %struct.intel_timeline_hwsp** %3, align 8
  %15 = getelementptr inbounds %struct.intel_timeline_hwsp, %struct.intel_timeline_hwsp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.intel_timeline_hwsp*, %struct.intel_timeline_hwsp** %3, align 8
  %20 = getelementptr inbounds %struct.intel_timeline_hwsp, %struct.intel_timeline_hwsp* %19, i32 0, i32 1
  %21 = load %struct.intel_gt_timelines*, %struct.intel_gt_timelines** %5, align 8
  %22 = getelementptr inbounds %struct.intel_gt_timelines, %struct.intel_gt_timelines* %21, i32 0, i32 1
  %23 = call i32 @list_add_tail(i32* %20, i32* %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.intel_timeline_hwsp*, %struct.intel_timeline_hwsp** %3, align 8
  %27 = getelementptr inbounds %struct.intel_timeline_hwsp, %struct.intel_timeline_hwsp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @BITS_PER_TYPE(i64 %28)
  %30 = icmp sge i32 %25, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @GEM_BUG_ON(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @BIT_ULL(i32 %33)
  %35 = load %struct.intel_timeline_hwsp*, %struct.intel_timeline_hwsp** %3, align 8
  %36 = getelementptr inbounds %struct.intel_timeline_hwsp, %struct.intel_timeline_hwsp* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.intel_timeline_hwsp*, %struct.intel_timeline_hwsp** %3, align 8
  %40 = getelementptr inbounds %struct.intel_timeline_hwsp, %struct.intel_timeline_hwsp* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %53

43:                                               ; preds = %24
  %44 = load %struct.intel_timeline_hwsp*, %struct.intel_timeline_hwsp** %3, align 8
  %45 = getelementptr inbounds %struct.intel_timeline_hwsp, %struct.intel_timeline_hwsp* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @i915_vma_put(i32 %46)
  %48 = load %struct.intel_timeline_hwsp*, %struct.intel_timeline_hwsp** %3, align 8
  %49 = getelementptr inbounds %struct.intel_timeline_hwsp, %struct.intel_timeline_hwsp* %48, i32 0, i32 1
  %50 = call i32 @list_del(i32* %49)
  %51 = load %struct.intel_timeline_hwsp*, %struct.intel_timeline_hwsp** %3, align 8
  %52 = call i32 @kfree(%struct.intel_timeline_hwsp* %51)
  br label %53

53:                                               ; preds = %43, %24
  %54 = load %struct.intel_gt_timelines*, %struct.intel_gt_timelines** %5, align 8
  %55 = getelementptr inbounds %struct.intel_gt_timelines, %struct.intel_gt_timelines* %54, i32 0, i32 0
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @BITS_PER_TYPE(i64) #1

declare dso_local i64 @BIT_ULL(i32) #1

declare dso_local i32 @i915_vma_put(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.intel_timeline_hwsp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
