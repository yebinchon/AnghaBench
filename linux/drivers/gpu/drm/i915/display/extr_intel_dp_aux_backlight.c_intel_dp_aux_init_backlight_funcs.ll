; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_aux_backlight.c_intel_dp_aux_init_backlight_funcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_aux_backlight.c_intel_dp_aux_init_backlight_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.intel_connector = type { %struct.TYPE_6__, %struct.intel_panel }
%struct.TYPE_6__ = type { i32 }
%struct.intel_panel = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@i915_modparams = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@intel_dp_aux_setup_backlight = common dso_local global i32 0, align 4
@intel_dp_aux_enable_backlight = common dso_local global i32 0, align 4
@intel_dp_aux_disable_backlight = common dso_local global i32 0, align 4
@intel_dp_aux_set_backlight = common dso_local global i32 0, align 4
@intel_dp_aux_get_backlight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dp_aux_init_backlight_funcs(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.intel_panel*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %6 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %7 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %6, i32 0, i32 1
  store %struct.intel_panel* %7, %struct.intel_panel** %4, align 8
  %8 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %9 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @i915_modparams, i32 0, i32 0), align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @i915_modparams, i32 0, i32 0), align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18, %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %57

29:                                               ; preds = %18, %15
  %30 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %31 = call i32 @intel_dp_aux_display_control_capable(%struct.intel_connector* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %57

36:                                               ; preds = %29
  %37 = load i32, i32* @intel_dp_aux_setup_backlight, align 4
  %38 = load %struct.intel_panel*, %struct.intel_panel** %4, align 8
  %39 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @intel_dp_aux_enable_backlight, align 4
  %42 = load %struct.intel_panel*, %struct.intel_panel** %4, align 8
  %43 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @intel_dp_aux_disable_backlight, align 4
  %46 = load %struct.intel_panel*, %struct.intel_panel** %4, align 8
  %47 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @intel_dp_aux_set_backlight, align 4
  %50 = load %struct.intel_panel*, %struct.intel_panel** %4, align 8
  %51 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @intel_dp_aux_get_backlight, align 4
  %54 = load %struct.intel_panel*, %struct.intel_panel** %4, align 8
  %55 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %36, %33, %26
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_dp_aux_display_control_capable(%struct.intel_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
