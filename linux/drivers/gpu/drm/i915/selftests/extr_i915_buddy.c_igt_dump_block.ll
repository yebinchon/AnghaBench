; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_buddy.c_igt_dump_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_buddy.c_igt_dump_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_buddy_mm = type { i32 }
%struct.i915_buddy_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_buddy_mm*, %struct.i915_buddy_block*)* @igt_dump_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igt_dump_block(%struct.i915_buddy_mm* %0, %struct.i915_buddy_block* %1) #0 {
  %3 = alloca %struct.i915_buddy_mm*, align 8
  %4 = alloca %struct.i915_buddy_block*, align 8
  %5 = alloca %struct.i915_buddy_block*, align 8
  store %struct.i915_buddy_mm* %0, %struct.i915_buddy_mm** %3, align 8
  store %struct.i915_buddy_block* %1, %struct.i915_buddy_block** %4, align 8
  %6 = load %struct.i915_buddy_mm*, %struct.i915_buddy_mm** %3, align 8
  %7 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %4, align 8
  %8 = call i32 @__igt_dump_block(%struct.i915_buddy_mm* %6, %struct.i915_buddy_block* %7, i32 0)
  %9 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %4, align 8
  %10 = call %struct.i915_buddy_block* @get_buddy(%struct.i915_buddy_block* %9)
  store %struct.i915_buddy_block* %10, %struct.i915_buddy_block** %5, align 8
  %11 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %12 = icmp ne %struct.i915_buddy_block* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.i915_buddy_mm*, %struct.i915_buddy_mm** %3, align 8
  %15 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %16 = call i32 @__igt_dump_block(%struct.i915_buddy_mm* %14, %struct.i915_buddy_block* %15, i32 1)
  br label %17

17:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @__igt_dump_block(%struct.i915_buddy_mm*, %struct.i915_buddy_block*, i32) #1

declare dso_local %struct.i915_buddy_block* @get_buddy(%struct.i915_buddy_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
