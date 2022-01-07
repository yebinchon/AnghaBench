; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_timeline.c_hwsp_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_timeline.c_hwsp_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.intel_timeline = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.intel_timeline*)* @hwsp_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @hwsp_page(%struct.intel_timeline* %0) #0 {
  %2 = alloca %struct.intel_timeline*, align 8
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.intel_timeline* %0, %struct.intel_timeline** %2, align 8
  %4 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  %5 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  store %struct.drm_i915_gem_object* %8, %struct.drm_i915_gem_object** %3, align 8
  %9 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %10 = call i32 @i915_gem_object_has_pinned_pages(%struct.drm_i915_gem_object* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @GEM_BUG_ON(i32 %13)
  %15 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.page* @sg_page(i32 %20)
  ret %struct.page* %21
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_object_has_pinned_pages(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.page* @sg_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
