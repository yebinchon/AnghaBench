; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_stolen.c_i915_gem_object_release_stolen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_stolen.c_i915_gem_object_release_stolen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_mm_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_gem_object*)* @i915_gem_object_release_stolen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_object_release_stolen(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.drm_i915_gem_object*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %2, align 8
  %5 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.drm_i915_private* @to_i915(i32 %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %3, align 8
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %11 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %10, i32 0, i32 0
  %12 = call %struct.drm_mm_node* @fetch_and_zero(i32* %11)
  store %struct.drm_mm_node* %12, %struct.drm_mm_node** %4, align 8
  %13 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %14 = icmp ne %struct.drm_mm_node* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @GEM_BUG_ON(i32 %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %20 = call i32 @i915_gem_stolen_remove_node(%struct.drm_i915_private* %18, %struct.drm_mm_node* %19)
  %21 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %22 = call i32 @kfree(%struct.drm_mm_node* %21)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.drm_mm_node* @fetch_and_zero(i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_stolen_remove_node(%struct.drm_i915_private*, %struct.drm_mm_node*) #1

declare dso_local i32 @kfree(%struct.drm_mm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
