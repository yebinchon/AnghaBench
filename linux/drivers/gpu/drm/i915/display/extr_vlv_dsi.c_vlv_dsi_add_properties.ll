; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi.c_vlv_dsi_add_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi.c_vlv_dsi_add_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DRM_MODE_SCALE_ASPECT = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_FULLSCREEN = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_CENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_connector*)* @vlv_dsi_add_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_dsi_add_properties(%struct.intel_connector* %0) #0 {
  %2 = alloca %struct.intel_connector*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %2, align 8
  %5 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %6 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.drm_i915_private* @to_i915(i32 %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %3, align 8
  %10 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %11 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %61

15:                                               ; preds = %1
  %16 = load i32, i32* @DRM_MODE_SCALE_ASPECT, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = load i32, i32* @DRM_MODE_SCALE_FULLSCREEN, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = or i32 %17, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = call i32 @HAS_GMCH(%struct.drm_i915_private* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @DRM_MODE_SCALE_CENTER, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %15
  %30 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %31 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %30, i32 0, i32 1
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @drm_connector_attach_scaling_mode_property(%struct.TYPE_11__* %31, i32 %32)
  %34 = load i32, i32* @DRM_MODE_SCALE_ASPECT, align 4
  %35 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %36 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 4
  %40 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %41 = call i32 @vlv_dsi_get_panel_orientation(%struct.intel_connector* %40)
  %42 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %43 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %47 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %46, i32 0, i32 1
  %48 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %49 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %55 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @drm_connector_init_panel_orientation_property(%struct.TYPE_11__* %47, i32 %53, i32 %59)
  br label %61

61:                                               ; preds = %29, %1
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_connector_attach_scaling_mode_property(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @vlv_dsi_get_panel_orientation(%struct.intel_connector*) #1

declare dso_local i32 @drm_connector_init_panel_orientation_property(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
