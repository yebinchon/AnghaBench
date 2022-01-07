; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_cacheline_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_cacheline_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_timeline_cacheline = type { i32, i32 }

@CACHELINE_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_timeline_cacheline*)* @cacheline_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cacheline_free(%struct.intel_timeline_cacheline* %0) #0 {
  %2 = alloca %struct.intel_timeline_cacheline*, align 8
  store %struct.intel_timeline_cacheline* %0, %struct.intel_timeline_cacheline** %2, align 8
  %3 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %2, align 8
  %4 = getelementptr inbounds %struct.intel_timeline_cacheline, %struct.intel_timeline_cacheline* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CACHELINE_FREE, align 4
  %7 = call i32 @ptr_test_bit(i32 %5, i32 %6)
  %8 = call i32 @GEM_BUG_ON(i32 %7)
  %9 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %2, align 8
  %10 = getelementptr inbounds %struct.intel_timeline_cacheline, %struct.intel_timeline_cacheline* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CACHELINE_FREE, align 4
  %13 = call i32 @ptr_set_bit(i32 %11, i32 %12)
  %14 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %2, align 8
  %15 = getelementptr inbounds %struct.intel_timeline_cacheline, %struct.intel_timeline_cacheline* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %2, align 8
  %17 = getelementptr inbounds %struct.intel_timeline_cacheline, %struct.intel_timeline_cacheline* %16, i32 0, i32 0
  %18 = call i64 @i915_active_is_idle(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.intel_timeline_cacheline*, %struct.intel_timeline_cacheline** %2, align 8
  %22 = call i32 @__idle_cacheline_free(%struct.intel_timeline_cacheline* %21)
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @ptr_test_bit(i32, i32) #1

declare dso_local i32 @ptr_set_bit(i32, i32) #1

declare dso_local i64 @i915_active_is_idle(i32*) #1

declare dso_local i32 @__idle_cacheline_free(%struct.intel_timeline_cacheline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
