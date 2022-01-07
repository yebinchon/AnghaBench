; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_ring_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_ring_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring = type { i32*, i32, i32, %struct.i915_vma* }
%struct.i915_vma = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ring_unpin(%struct.intel_ring* %0) #0 {
  %2 = alloca %struct.intel_ring*, align 8
  %3 = alloca %struct.i915_vma*, align 8
  store %struct.intel_ring* %0, %struct.intel_ring** %2, align 8
  %4 = load %struct.intel_ring*, %struct.intel_ring** %2, align 8
  %5 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %4, i32 0, i32 3
  %6 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  store %struct.i915_vma* %6, %struct.i915_vma** %3, align 8
  %7 = load %struct.intel_ring*, %struct.intel_ring** %2, align 8
  %8 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %7, i32 0, i32 2
  %9 = call i32 @atomic_dec_and_test(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.intel_ring*, %struct.intel_ring** %2, align 8
  %14 = load %struct.intel_ring*, %struct.intel_ring** %2, align 8
  %15 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @intel_ring_reset(%struct.intel_ring* %13, i32 %16)
  %18 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %19 = call i32 @i915_vma_unset_ggtt_write(%struct.i915_vma* %18)
  %20 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %21 = call i64 @i915_vma_is_map_and_fenceable(%struct.i915_vma* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %25 = call i32 @i915_vma_unpin_iomap(%struct.i915_vma* %24)
  br label %31

26:                                               ; preds = %12
  %27 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %28 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @i915_gem_object_unpin_map(i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.intel_ring*, %struct.intel_ring** %2, align 8
  %33 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @GEM_BUG_ON(i32 %37)
  %39 = load %struct.intel_ring*, %struct.intel_ring** %2, align 8
  %40 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %42 = call i32 @i915_vma_unpin(%struct.i915_vma* %41)
  %43 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %44 = call i32 @i915_vma_make_purgeable(%struct.i915_vma* %43)
  br label %45

45:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @intel_ring_reset(%struct.intel_ring*, i32) #1

declare dso_local i32 @i915_vma_unset_ggtt_write(%struct.i915_vma*) #1

declare dso_local i64 @i915_vma_is_map_and_fenceable(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_unpin_iomap(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_unpin_map(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_make_purgeable(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
