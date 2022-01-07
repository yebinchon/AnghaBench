; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i845_cursor_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i845_cursor_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PIPE_A = common dso_local global i32 0, align 4
@CURSOR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane*, i32*)* @i845_cursor_get_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i845_cursor_get_hw_state(%struct.intel_plane* %0, i32* %1) #0 {
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
  %11 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %6, align 8
  %15 = load i32, i32* @PIPE_A, align 4
  %16 = call i32 @POWER_DOMAIN_PIPE(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load i32, i32* @PIPE_A, align 4
  %25 = call i32 @CURCNTR(i32 %24)
  %26 = call i32 @I915_READ(i32 %25)
  %27 = load i32, i32* @CURSOR_ENABLE, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @PIPE_A, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @intel_display_power_put(%struct.drm_i915_private* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %23, %22
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @POWER_DOMAIN_PIPE(i32) #1

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @CURCNTR(i32) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
