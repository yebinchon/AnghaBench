; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_g4x_plane_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_g4x_plane_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DVS_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane*, i32*)* @g4x_plane_get_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_plane_get_hw_state(%struct.intel_plane* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_plane* %0, %struct.intel_plane** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %11 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %6, align 8
  %15 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %16 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @POWER_DOMAIN_PIPE(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

25:                                               ; preds = %2
  %26 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %27 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DVSCNTR(i32 %28)
  %30 = call i32 @I915_READ(i32 %29)
  %31 = load i32, i32* @DVS_ENABLE, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %34 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @intel_display_power_put(%struct.drm_i915_private* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %25, %24
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @POWER_DOMAIN_PIPE(i32) #1

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DVSCNTR(i32) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
