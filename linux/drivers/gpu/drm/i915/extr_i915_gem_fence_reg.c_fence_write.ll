; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_fence_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_fence_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_fence_reg = type { i32, i32 }
%struct.i915_vma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_fence_reg*, %struct.i915_vma*)* @fence_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fence_write(%struct.i915_fence_reg* %0, %struct.i915_vma* %1) #0 {
  %3 = alloca %struct.i915_fence_reg*, align 8
  %4 = alloca %struct.i915_vma*, align 8
  store %struct.i915_fence_reg* %0, %struct.i915_fence_reg** %3, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %4, align 8
  %5 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %6 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @IS_GEN(i32 %7, i32 2)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %12 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %13 = call i32 @i830_write_fence_reg(%struct.i915_fence_reg* %11, %struct.i915_vma* %12)
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %16 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_GEN(i32 %17, i32 3)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %22 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %23 = call i32 @i915_write_fence_reg(%struct.i915_fence_reg* %21, %struct.i915_vma* %22)
  br label %28

24:                                               ; preds = %14
  %25 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %26 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %27 = call i32 @i965_write_fence_reg(%struct.i915_fence_reg* %25, %struct.i915_vma* %26)
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %10
  %30 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %3, align 8
  %31 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  ret void
}

declare dso_local i64 @IS_GEN(i32, i32) #1

declare dso_local i32 @i830_write_fence_reg(%struct.i915_fence_reg*, %struct.i915_vma*) #1

declare dso_local i32 @i915_write_fence_reg(%struct.i915_fence_reg*, %struct.i915_vma*) #1

declare dso_local i32 @i965_write_fence_reg(%struct.i915_fence_reg*, %struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
