; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_add_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_add_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_hdmi = type { i32 }
%struct.drm_connector = type { %struct.TYPE_8__*, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@HDMI_PICTURE_ASPECT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_hdmi*, %struct.drm_connector*)* @intel_hdmi_add_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_hdmi_add_properties(%struct.intel_hdmi* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.intel_hdmi*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_digital_port*, align 8
  store %struct.intel_hdmi* %0, %struct.intel_hdmi** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = call %struct.drm_i915_private* @to_i915(%struct.TYPE_8__* %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %5, align 8
  %11 = load %struct.intel_hdmi*, %struct.intel_hdmi** %3, align 8
  %12 = call %struct.intel_digital_port* @hdmi_to_dig_port(%struct.intel_hdmi* %11)
  store %struct.intel_digital_port* %12, %struct.intel_digital_port** %6, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = call i32 @intel_attach_force_audio_property(%struct.drm_connector* %13)
  %15 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %16 = call i32 @intel_attach_broadcast_rgb_property(%struct.drm_connector* %15)
  %17 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %18 = call i32 @intel_attach_aspect_ratio_property(%struct.drm_connector* %17)
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %20 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %26 = call i32 @intel_attach_colorspace_property(%struct.drm_connector* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %29 = call i32 @drm_connector_attach_content_type_property(%struct.drm_connector* %28)
  %30 = load i32, i32* @HDMI_PICTURE_ASPECT_NONE, align 4
  %31 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %36 = call i32 @INTEL_GEN(%struct.drm_i915_private* %35)
  %37 = icmp sge i32 %36, 10
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %40 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38, %27
  %43 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %44 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %43, i32 0, i32 1
  %45 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %46 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @drm_object_attach_property(i32* %44, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %42, %38
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %54 = call i32 @HAS_GMCH(%struct.drm_i915_private* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %58 = call i32 @drm_connector_attach_max_bpc_property(%struct.drm_connector* %57, i32 8, i32 12)
  br label %59

59:                                               ; preds = %56, %52
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.TYPE_8__*) #1

declare dso_local %struct.intel_digital_port* @hdmi_to_dig_port(%struct.intel_hdmi*) #1

declare dso_local i32 @intel_attach_force_audio_property(%struct.drm_connector*) #1

declare dso_local i32 @intel_attach_broadcast_rgb_property(%struct.drm_connector*) #1

declare dso_local i32 @intel_attach_aspect_ratio_property(%struct.drm_connector*) #1

declare dso_local i32 @intel_attach_colorspace_property(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_attach_content_type_property(%struct.drm_connector*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

declare dso_local i32 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_connector_attach_max_bpc_property(%struct.drm_connector*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
