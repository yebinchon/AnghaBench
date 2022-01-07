; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_timeline = type { i32, i32, i32, i64 }

@PIN_GLOBAL = common dso_local global i32 0, align 4
@PIN_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_timeline_pin(%struct.intel_timeline* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_timeline*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_timeline* %0, %struct.intel_timeline** %3, align 8
  %5 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %6 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %5, i32 0, i32 2
  %7 = call i64 @atomic_add_unless(i32* %6, i32 1, i32 0)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

10:                                               ; preds = %1
  %11 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %12 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PIN_GLOBAL, align 4
  %15 = load i32, i32* @PIN_HIGH, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @i915_vma_pin(i32 %13, i32 0, i32 0, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %10
  %23 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %24 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @i915_ggtt_offset(i32 %25)
  %27 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %28 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @offset_in_page(i64 %29)
  %31 = add nsw i64 %26, %30
  %32 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %33 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %35 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cacheline_acquire(i32 %36)
  %38 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %39 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %38, i32 0, i32 2
  %40 = call i64 @atomic_fetch_inc(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %22
  %43 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %44 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cacheline_release(i32 %45)
  %47 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  %48 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @__i915_vma_unpin(i32 %49)
  br label %51

51:                                               ; preds = %42, %22
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %20, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @i915_vma_pin(i32, i32, i32, i32) #1

declare dso_local i64 @i915_ggtt_offset(i32) #1

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @cacheline_acquire(i32) #1

declare dso_local i64 @atomic_fetch_inc(i32*) #1

declare dso_local i32 @cacheline_release(i32) #1

declare dso_local i32 @__i915_vma_unpin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
