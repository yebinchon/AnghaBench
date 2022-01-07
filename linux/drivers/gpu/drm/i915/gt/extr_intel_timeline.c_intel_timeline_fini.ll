; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_timeline = type { %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_timeline_fini(%struct.intel_timeline* %0) #0 {
  %2 = alloca %struct.intel_timeline*, align 8
  store %struct.intel_timeline* %0, %struct.intel_timeline** %2, align 8
  %3 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %4 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %3, i32 0, i32 3
  %5 = call i32 @atomic_read(i32* %4)
  %6 = call i32 @GEM_BUG_ON(i32 %5)
  %7 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %8 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %7, i32 0, i32 2
  %9 = call i32 @list_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @GEM_BUG_ON(i32 %12)
  %14 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %15 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %20 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @cacheline_free(i64 %21)
  br label %30

23:                                               ; preds = %1
  %24 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %25 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @i915_gem_object_unpin_map(i32 %28)
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %32 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @i915_vma_put(%struct.TYPE_2__* %33)
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @cacheline_free(i64) #1

declare dso_local i32 @i915_gem_object_unpin_map(i32) #1

declare dso_local i32 @i915_vma_put(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
