; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i915_unreserve_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_i915_unreserve_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_fence_reg = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i915_ggtt }
%struct.i915_ggtt = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_unreserve_fence(%struct.i915_fence_reg* %0) #0 {
  %2 = alloca %struct.i915_fence_reg*, align 8
  %3 = alloca %struct.i915_ggtt*, align 8
  store %struct.i915_fence_reg* %0, %struct.i915_fence_reg** %2, align 8
  %4 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %2, align 8
  %5 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.i915_ggtt* %7, %struct.i915_ggtt** %3, align 8
  %8 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %9 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %2, align 8
  %13 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %12, i32 0, i32 0
  %14 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %15 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %14, i32 0, i32 0
  %16 = call i32 @list_add(i32* %13, i32* %15)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
