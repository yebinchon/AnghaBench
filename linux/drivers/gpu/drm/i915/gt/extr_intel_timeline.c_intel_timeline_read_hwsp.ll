; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_read_hwsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_read_hwsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.intel_timeline*, %struct.intel_timeline_cacheline* }
%struct.intel_timeline = type { i32, i64, %struct.intel_timeline_cacheline* }
%struct.intel_timeline_cacheline = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@CACHELINE_BITS = common dso_local global i32 0, align 4
@CACHELINE_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_timeline_read_hwsp(%struct.i915_request* %0, %struct.i915_request* %1, i64* %2) #0 {
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.intel_timeline_cacheline*, align 8
  %8 = alloca %struct.intel_timeline*, align 8
  %9 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %4, align 8
  store %struct.i915_request* %1, %struct.i915_request** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %11 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %10, i32 0, i32 1
  %12 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %11, align 8
  store %struct.intel_timeline_cacheline* %12, %struct.intel_timeline_cacheline** %7, align 8
  %13 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %14 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %13, i32 0, i32 0
  %15 = load %struct.intel_timeline*, %struct.intel_timeline** %14, align 8
  store %struct.intel_timeline* %15, %struct.intel_timeline** %8, align 8
  %16 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %17 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %16, i32 0, i32 0
  %18 = load %struct.intel_timeline*, %struct.intel_timeline** %17, align 8
  %19 = load %struct.intel_timeline*, %struct.intel_timeline** %8, align 8
  %20 = icmp eq %struct.intel_timeline* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @GEM_BUG_ON(i32 %21)
  %23 = load %struct.intel_timeline*, %struct.intel_timeline** %8, align 8
  %24 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %23, i32 0, i32 0
  %25 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %26 = call i32 @mutex_lock_nested(i32* %24, i32 %25)
  %27 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %28 = call i32 @i915_request_completed(%struct.i915_request* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %7, align 8
  %33 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %34 = call i32 @cacheline_ref(%struct.intel_timeline_cacheline* %32, %struct.i915_request* %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %3
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %70, label %38

38:                                               ; preds = %35
  %39 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %7, align 8
  %40 = load %struct.intel_timeline*, %struct.intel_timeline** %8, align 8
  %41 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %40, i32 0, i32 2
  %42 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %41, align 8
  %43 = icmp eq %struct.intel_timeline_cacheline* %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.intel_timeline*, %struct.intel_timeline** %8, align 8
  %49 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %6, align 8
  store i64 %50, i64* %51, align 8
  br label %69

52:                                               ; preds = %38
  %53 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %7, align 8
  %54 = getelementptr inbounds %struct.intel_timeline_cacheline, %struct.intel_timeline_cacheline* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @i915_ggtt_offset(i32 %57)
  %59 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %7, align 8
  %60 = getelementptr inbounds %struct.intel_timeline_cacheline, %struct.intel_timeline_cacheline* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CACHELINE_BITS, align 4
  %63 = call i32 @ptr_unmask_bits(i32 %61, i32 %62)
  %64 = load i32, i32* @CACHELINE_BYTES, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %58, %66
  %68 = load i64*, i64** %6, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %52, %47
  br label %70

70:                                               ; preds = %69, %35
  %71 = load %struct.intel_timeline*, %struct.intel_timeline** %8, align 8
  %72 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @i915_request_completed(%struct.i915_request*) #1

declare dso_local i32 @cacheline_ref(%struct.intel_timeline_cacheline*, %struct.i915_request*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @i915_ggtt_offset(i32) #1

declare dso_local i32 @ptr_unmask_bits(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
