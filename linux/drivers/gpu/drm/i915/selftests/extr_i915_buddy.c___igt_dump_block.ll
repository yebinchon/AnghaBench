; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_buddy.c___igt_dump_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_buddy.c___igt_dump_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_buddy_mm = type { i32 }
%struct.i915_buddy_block = type { i32, i32 }

@.str = private unnamed_addr constant [85 x i8] c"block info: header=%llx, state=%u, order=%d, offset=%llx size=%llx root=%s buddy=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_buddy_mm*, %struct.i915_buddy_block*, i32)* @__igt_dump_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__igt_dump_block(%struct.i915_buddy_mm* %0, %struct.i915_buddy_block* %1, i32 %2) #0 {
  %4 = alloca %struct.i915_buddy_mm*, align 8
  %5 = alloca %struct.i915_buddy_block*, align 8
  %6 = alloca i32, align 4
  store %struct.i915_buddy_mm* %0, %struct.i915_buddy_mm** %4, align 8
  store %struct.i915_buddy_block* %1, %struct.i915_buddy_block** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %8 = getelementptr inbounds %struct.i915_buddy_block, %struct.i915_buddy_block* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %11 = call i32 @i915_buddy_block_state(%struct.i915_buddy_block* %10)
  %12 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %13 = call i32 @i915_buddy_block_order(%struct.i915_buddy_block* %12)
  %14 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %15 = call i32 @i915_buddy_block_offset(%struct.i915_buddy_block* %14)
  %16 = load %struct.i915_buddy_mm*, %struct.i915_buddy_mm** %4, align 8
  %17 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %18 = call i32 @i915_buddy_block_size(%struct.i915_buddy_mm* %16, %struct.i915_buddy_block* %17)
  %19 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %20 = getelementptr inbounds %struct.i915_buddy_block, %struct.i915_buddy_block* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @yesno(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @yesno(i32 %26)
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11, i32 %13, i32 %15, i32 %18, i32 %25, i32 %27)
  ret void
}

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @i915_buddy_block_state(%struct.i915_buddy_block*) #1

declare dso_local i32 @i915_buddy_block_order(%struct.i915_buddy_block*) #1

declare dso_local i32 @i915_buddy_block_offset(%struct.i915_buddy_block*) #1

declare dso_local i32 @i915_buddy_block_size(%struct.i915_buddy_mm*, %struct.i915_buddy_block*) #1

declare dso_local i32 @yesno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
