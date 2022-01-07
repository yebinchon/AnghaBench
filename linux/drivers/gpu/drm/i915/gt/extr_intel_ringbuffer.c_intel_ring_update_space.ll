; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_ring_update_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_ring_update_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ring_update_space(%struct.intel_ring* %0) #0 {
  %2 = alloca %struct.intel_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_ring* %0, %struct.intel_ring** %2, align 8
  %4 = load %struct.intel_ring*, %struct.intel_ring** %2, align 8
  %5 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.intel_ring*, %struct.intel_ring** %2, align 8
  %8 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.intel_ring*, %struct.intel_ring** %2, align 8
  %11 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @__intel_ring_space(i32 %6, i32 %9, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.intel_ring*, %struct.intel_ring** %2, align 8
  %16 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @__intel_ring_space(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
