; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_compute_wm_reg_maximums.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_compute_wm_reg_maximums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.ilk_wm_maximums = type { i32, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, %struct.ilk_wm_maximums*)* @ilk_compute_wm_reg_maximums to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_compute_wm_reg_maximums(%struct.drm_i915_private* %0, i32 %1, %struct.ilk_wm_maximums* %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ilk_wm_maximums*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ilk_wm_maximums* %2, %struct.ilk_wm_maximums** %6, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i8* @ilk_plane_wm_reg_max(%struct.drm_i915_private* %7, i32 %8, i32 0)
  %10 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %11 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @ilk_plane_wm_reg_max(%struct.drm_i915_private* %12, i32 %13, i32 1)
  %15 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %16 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ilk_cursor_wm_reg_max(%struct.drm_i915_private* %17, i32 %18)
  %20 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %21 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = call i32 @ilk_fbc_wm_reg_max(%struct.drm_i915_private* %22)
  %24 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %25 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  ret void
}

declare dso_local i8* @ilk_plane_wm_reg_max(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @ilk_cursor_wm_reg_max(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ilk_fbc_wm_reg_max(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
