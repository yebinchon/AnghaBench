; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_intel_panel_disable_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_intel_panel_disable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_6__ }
%struct.intel_panel = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 (%struct.drm_connector_state.0*)*, %struct.TYPE_9__*, i32 }
%struct.drm_connector_state.0 = type opaque
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@DRM_SWITCH_POWER_CHANGING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Skipping backlight disable on vga switch\0A\00", align 1
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_panel_disable_backlight(%struct.drm_connector_state* %0) #0 {
  %2 = alloca %struct.drm_connector_state*, align 8
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_panel*, align 8
  store %struct.drm_connector_state* %0, %struct.drm_connector_state** %2, align 8
  %6 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %7 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.intel_connector* @to_intel_connector(i32 %8)
  store %struct.intel_connector* %9, %struct.intel_connector** %3, align 8
  %10 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %11 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %16 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %15, i32 0, i32 0
  store %struct.intel_panel* %16, %struct.intel_panel** %5, align 8
  %17 = load %struct.intel_panel*, %struct.intel_panel** %5, align 8
  %18 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %63

23:                                               ; preds = %1
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DRM_SWITCH_POWER_CHANGING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %63

32:                                               ; preds = %23
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.intel_panel*, %struct.intel_panel** %5, align 8
  %37 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %43 = load %struct.intel_panel*, %struct.intel_panel** %5, align 8
  %44 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %32
  %50 = load %struct.intel_panel*, %struct.intel_panel** %5, align 8
  %51 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.intel_panel*, %struct.intel_panel** %5, align 8
  %54 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32 (%struct.drm_connector_state.0*)*, i32 (%struct.drm_connector_state.0*)** %55, align 8
  %57 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %58 = bitcast %struct.drm_connector_state* %57 to %struct.drm_connector_state.0*
  %59 = call i32 %56(%struct.drm_connector_state.0* %58)
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  br label %63

63:                                               ; preds = %49, %30, %22
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
