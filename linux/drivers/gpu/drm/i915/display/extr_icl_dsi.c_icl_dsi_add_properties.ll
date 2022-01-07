; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_icl_dsi_add_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_icl_dsi.c_icl_dsi_add_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_9__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@DRM_MODE_SCALE_ASPECT = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_FULLSCREEN = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_CENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_connector*)* @icl_dsi_add_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_dsi_add_properties(%struct.intel_connector* %0) #0 {
  %2 = alloca %struct.intel_connector*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %2, align 8
  %4 = load i32, i32* @DRM_MODE_SCALE_ASPECT, align 4
  %5 = call i32 @BIT(i32 %4)
  %6 = load i32, i32* @DRM_MODE_SCALE_FULLSCREEN, align 4
  %7 = call i32 @BIT(i32 %6)
  %8 = or i32 %5, %7
  %9 = load i32, i32* @DRM_MODE_SCALE_CENTER, align 4
  %10 = call i32 @BIT(i32 %9)
  %11 = or i32 %8, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %13 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %12, i32 0, i32 1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @drm_connector_attach_scaling_mode_property(%struct.TYPE_11__* %13, i32 %14)
  %16 = load i32, i32* @DRM_MODE_SCALE_ASPECT, align 4
  %17 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %18 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i32 %16, i32* %21, align 4
  %22 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %23 = call i32 @intel_dsi_get_panel_orientation(%struct.intel_connector* %22)
  %24 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %25 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  %28 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %29 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %28, i32 0, i32 1
  %30 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %31 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %37 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @drm_connector_init_panel_orientation_property(%struct.TYPE_11__* %29, i32 %35, i32 %41)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_connector_attach_scaling_mode_property(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @intel_dsi_get_panel_orientation(%struct.intel_connector*) #1

declare dso_local i32 @drm_connector_init_panel_orientation_property(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
