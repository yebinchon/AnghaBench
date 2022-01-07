; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c___gen6_gt_wait_for_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c___gen6_gt_wait_for_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i64, i32 }

@GT_FIFO_NUM_RESERVED_ENTRIES = common dso_local global i64 0, align 8
@GT_FIFO_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"GT_FIFO timeout, entries: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore*)* @__gen6_gt_wait_for_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gen6_gt_wait_for_fifo(%struct.intel_uncore* %0) #0 {
  %2 = alloca %struct.intel_uncore*, align 8
  %3 = alloca i64, align 8
  store %struct.intel_uncore* %0, %struct.intel_uncore** %2, align 8
  %4 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %5 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @IS_VALLEYVIEW(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %11 = call i64 @fifo_free_entries(%struct.intel_uncore* %10)
  store i64 %11, i64* %3, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %14 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @GT_FIFO_NUM_RESERVED_ENTRIES, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %22 = call i64 @fifo_free_entries(%struct.intel_uncore* %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* @GT_FIFO_NUM_RESERVED_ENTRIES, align 8
  %24 = icmp sgt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @GT_FIFO_TIMEOUT_MS, align 4
  %27 = call i64 @wait_for_atomic(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %38

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %16
  %34 = load i64, i64* %3, align 8
  %35 = sub nsw i64 %34, 1
  %36 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %37 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %29
  ret void
}

declare dso_local i64 @IS_VALLEYVIEW(i32) #1

declare dso_local i64 @fifo_free_entries(%struct.intel_uncore*) #1

declare dso_local i64 @wait_for_atomic(i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
