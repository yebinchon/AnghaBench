; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_init_unused_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_init_unused_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*, i32)* @init_unused_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_unused_ring(%struct.intel_gt* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_uncore*, align 8
  store %struct.intel_gt* %0, %struct.intel_gt** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %7 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %6, i32 0, i32 0
  %8 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  store %struct.intel_uncore* %8, %struct.intel_uncore** %5, align 8
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @RING_CTL(i32 %10)
  %12 = call i32 @intel_uncore_write(%struct.intel_uncore* %9, i32 %11, i32 0)
  %13 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @RING_HEAD(i32 %14)
  %16 = call i32 @intel_uncore_write(%struct.intel_uncore* %13, i32 %15, i32 0)
  %17 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @RING_TAIL(i32 %18)
  %20 = call i32 @intel_uncore_write(%struct.intel_uncore* %17, i32 %19, i32 0)
  %21 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @RING_START(i32 %22)
  %24 = call i32 @intel_uncore_write(%struct.intel_uncore* %21, i32 %23, i32 0)
  ret void
}

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @RING_CTL(i32) #1

declare dso_local i32 @RING_HEAD(i32) #1

declare dso_local i32 @RING_TAIL(i32) #1

declare dso_local i32 @RING_START(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
