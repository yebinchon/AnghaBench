; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_compute_wm_maximums.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_compute_wm_maximums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_wm_config = type { i32 }
%struct.ilk_wm_maximums = type { i32, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, %struct.intel_wm_config*, i32, %struct.ilk_wm_maximums*)* @ilk_compute_wm_maximums to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_compute_wm_maximums(%struct.drm_i915_private* %0, i32 %1, %struct.intel_wm_config* %2, i32 %3, %struct.ilk_wm_maximums* %4) #0 {
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_wm_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ilk_wm_maximums*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.intel_wm_config* %2, %struct.intel_wm_config** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ilk_wm_maximums* %4, %struct.ilk_wm_maximums** %10, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.intel_wm_config*, %struct.intel_wm_config** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i8* @ilk_plane_wm_max(%struct.drm_i915_private* %11, i32 %12, %struct.intel_wm_config* %13, i32 %14, i32 0)
  %16 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %10, align 8
  %17 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.intel_wm_config*, %struct.intel_wm_config** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i8* @ilk_plane_wm_max(%struct.drm_i915_private* %18, i32 %19, %struct.intel_wm_config* %20, i32 %21, i32 1)
  %23 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %10, align 8
  %24 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.intel_wm_config*, %struct.intel_wm_config** %8, align 8
  %28 = call i32 @ilk_cursor_wm_max(%struct.drm_i915_private* %25, i32 %26, %struct.intel_wm_config* %27)
  %29 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %10, align 8
  %30 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %32 = call i32 @ilk_fbc_wm_reg_max(%struct.drm_i915_private* %31)
  %33 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %10, align 8
  %34 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  ret void
}

declare dso_local i8* @ilk_plane_wm_max(%struct.drm_i915_private*, i32, %struct.intel_wm_config*, i32, i32) #1

declare dso_local i32 @ilk_cursor_wm_max(%struct.drm_i915_private*, i32, %struct.intel_wm_config*) #1

declare dso_local i32 @ilk_fbc_wm_reg_max(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
