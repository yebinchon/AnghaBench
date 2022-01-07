; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_intel_panel_set_backlight_acpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_intel_panel_set_backlight_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { i32, i32 }
%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_5__ }
%struct.intel_panel = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_panel_set_backlight_acpi(%struct.drm_connector_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_connector*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_panel*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_connector_state* %0, %struct.drm_connector_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %12 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.intel_connector* @to_intel_connector(i32 %13)
  store %struct.intel_connector* %14, %struct.intel_connector** %7, align 8
  %15 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %16 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %8, align 8
  %20 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %21 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %20, i32 0, i32 0
  store %struct.intel_panel* %21, %struct.intel_panel** %9, align 8
  %22 = load %struct.intel_panel*, %struct.intel_panel** %9, align 8
  %23 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %29 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %3
  br label %91

33:                                               ; preds = %27
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.intel_panel*, %struct.intel_panel** %9, align 8
  %38 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @clamp_user_to_hw(%struct.intel_connector* %44, i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.intel_panel*, %struct.intel_panel** %9, align 8
  %50 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 8
  %52 = load %struct.intel_panel*, %struct.intel_panel** %9, align 8
  %53 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %77

57:                                               ; preds = %33
  %58 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %59 = load %struct.intel_panel*, %struct.intel_panel** %9, align 8
  %60 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.intel_panel*, %struct.intel_panel** %9, align 8
  %64 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @scale_hw_to_user(%struct.intel_connector* %58, i32 %62, i32 %69)
  %71 = load %struct.intel_panel*, %struct.intel_panel** %9, align 8
  %72 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %57, %33
  %78 = load %struct.intel_panel*, %struct.intel_panel** %9, align 8
  %79 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %89 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  br label %91

91:                                               ; preds = %87, %32
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clamp_user_to_hw(%struct.intel_connector*, i32, i32) #1

declare dso_local i32 @scale_hw_to_user(%struct.intel_connector*, i32, i32) #1

declare dso_local i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
