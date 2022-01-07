; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_cursor_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_cursor_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@MCURSOR_MODE = common dso_local global i32 0, align 4
@MCURSOR_PIPE_SELECT_MASK = common dso_local global i32 0, align 4
@MCURSOR_PIPE_SELECT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane*, i32*)* @i9xx_cursor_get_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_cursor_get_hw_state(%struct.intel_plane* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_plane* %0, %struct.intel_plane** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %12 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %6, align 8
  %16 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %17 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @POWER_DOMAIN_PIPE(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

26:                                               ; preds = %2
  %27 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %28 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CURCNTR(i32 %29)
  %31 = call i32 @I915_READ(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @MCURSOR_MODE, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %36 = call i32 @INTEL_GEN(%struct.drm_i915_private* %35)
  %37 = icmp sge i32 %36, 5
  br i1 %37, label %42, label %38

38:                                               ; preds = %26
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %40 = call i64 @IS_G4X(%struct.drm_i915_private* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %26
  %43 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %44 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %54

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @MCURSOR_PIPE_SELECT_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @MCURSOR_PIPE_SELECT_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @intel_display_power_put(%struct.drm_i915_private* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %25
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @POWER_DOMAIN_PIPE(i32) #1

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @CURCNTR(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
