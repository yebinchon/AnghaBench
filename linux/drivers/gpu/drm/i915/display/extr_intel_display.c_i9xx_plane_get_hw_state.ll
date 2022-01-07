; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_plane_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_plane_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DISPLAY_PLANE_ENABLE = common dso_local global i32 0, align 4
@DISPPLANE_SEL_PIPE_MASK = common dso_local global i32 0, align 4
@DISPPLANE_SEL_PIPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane*, i32*)* @i9xx_plane_get_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_plane_get_hw_state(%struct.intel_plane* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_plane* %0, %struct.intel_plane** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %13 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %6, align 8
  %17 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %18 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %21 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @POWER_DOMAIN_PIPE(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @DSPCNTR(i32 %31)
  %33 = call i32 @I915_READ(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %38 = call i32 @INTEL_GEN(%struct.drm_i915_private* %37)
  %39 = icmp sge i32 %38, 5
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %42 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  br label %52

45:                                               ; preds = %30
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @DISPPLANE_SEL_PIPE_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @DISPPLANE_SEL_PIPE_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @intel_display_power_put(%struct.drm_i915_private* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %29
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @POWER_DOMAIN_PIPE(i32) #1

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DSPCNTR(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
