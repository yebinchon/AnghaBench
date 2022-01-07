; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_cleanup_status_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_cleanup_status_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i915_vma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @cleanup_status_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_status_page(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.i915_vma*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = call i32 @intel_engine_set_hwsp_writemask(%struct.intel_engine_cs* %4, i32 -1)
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call %struct.i915_vma* @fetch_and_zero(i32* %8)
  store %struct.i915_vma* %9, %struct.i915_vma** %3, align 8
  %10 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %11 = icmp ne %struct.i915_vma* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %15 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @HWS_NEEDS_PHYSICAL(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %21 = call i32 @i915_vma_unpin(%struct.i915_vma* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %24 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @i915_gem_object_unpin_map(i32 %25)
  %27 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %28 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @i915_gem_object_put(i32 %29)
  br label %31

31:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @intel_engine_set_hwsp_writemask(%struct.intel_engine_cs*, i32) #1

declare dso_local %struct.i915_vma* @fetch_and_zero(i32*) #1

declare dso_local i32 @HWS_NEEDS_PHYSICAL(i32) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_unpin_map(i32) #1

declare dso_local i32 @i915_gem_object_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
