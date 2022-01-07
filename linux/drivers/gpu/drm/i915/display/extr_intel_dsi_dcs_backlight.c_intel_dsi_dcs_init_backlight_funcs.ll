; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi_dcs_backlight.c_intel_dsi_dcs_init_backlight_funcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi_dcs_backlight.c_intel_dsi_dcs_init_backlight_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_panel, %struct.intel_encoder*, %struct.TYPE_8__ }
%struct.intel_panel = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.intel_encoder = type { i64 }
%struct.TYPE_8__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@INTEL_BACKLIGHT_DSI_DCS = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DSI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@dcs_setup_backlight = common dso_local global i32 0, align 4
@dcs_enable_backlight = common dso_local global i32 0, align 4
@dcs_disable_backlight = common dso_local global i32 0, align 4
@dcs_set_backlight = common dso_local global i32 0, align 4
@dcs_get_backlight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dsi_dcs_init_backlight_funcs(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca %struct.intel_panel*, align 8
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %8 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %9 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  %14 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %15 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %14, i32 0, i32 1
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %15, align 8
  store %struct.intel_encoder* %16, %struct.intel_encoder** %6, align 8
  %17 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %18 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %17, i32 0, i32 0
  store %struct.intel_panel* %18, %struct.intel_panel** %7, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INTEL_BACKLIGHT_DSI_DCS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %62

29:                                               ; preds = %1
  %30 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %31 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @INTEL_OUTPUT_DSI, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %62

41:                                               ; preds = %29
  %42 = load i32, i32* @dcs_setup_backlight, align 4
  %43 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %44 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @dcs_enable_backlight, align 4
  %47 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %48 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @dcs_disable_backlight, align 4
  %51 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %52 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @dcs_set_backlight, align 4
  %55 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %56 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @dcs_get_backlight, align 4
  %59 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %60 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %41, %38, %26
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
