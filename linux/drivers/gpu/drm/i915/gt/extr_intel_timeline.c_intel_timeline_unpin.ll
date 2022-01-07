; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_timeline = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_timeline_unpin(%struct.intel_timeline* %0) #0 {
  %2 = alloca %struct.intel_timeline*, align 8
  store %struct.intel_timeline* %0, %struct.intel_timeline** %2, align 8
  %3 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %4 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %3, i32 0, i32 2
  %5 = call i32 @atomic_read(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @GEM_BUG_ON(i32 %8)
  %10 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %11 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %10, i32 0, i32 2
  %12 = call i32 @atomic_dec_and_test(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %17 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cacheline_release(i32 %18)
  %20 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %21 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__i915_vma_unpin(i32 %22)
  br label %24

24:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @cacheline_release(i32) #1

declare dso_local i32 @__i915_vma_unpin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
