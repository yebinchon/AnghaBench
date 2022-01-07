; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_ggtt_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_ggtt_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i915_ggtt_view = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.i915_address_space }
%struct.i915_address_space = type { i32 }

@PIN_GLOBAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i915_vma* @i915_gem_object_ggtt_pin(%struct.drm_i915_gem_object* %0, %struct.i915_ggtt_view* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.i915_ggtt_view*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_i915_private*, align 8
  %12 = alloca %struct.i915_address_space*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %6, align 8
  store %struct.i915_ggtt_view* %1, %struct.i915_ggtt_view** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %14 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %11, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.i915_address_space* %20, %struct.i915_address_space** %12, align 8
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %22 = load %struct.i915_address_space*, %struct.i915_address_space** %12, align 8
  %23 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PIN_GLOBAL, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.i915_vma* @i915_gem_object_pin(%struct.drm_i915_gem_object* %21, %struct.i915_address_space* %22, %struct.i915_ggtt_view* %23, i32 %24, i32 %25, i32 %28)
  ret %struct.i915_vma* %29
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.i915_vma* @i915_gem_object_pin(%struct.drm_i915_gem_object*, %struct.i915_address_space*, %struct.i915_ggtt_view*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
