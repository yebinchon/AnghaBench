; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_add_hdmi_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_add_hdmi_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }
%struct.intel_sdvo_connector = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@HDMI_PICTURE_ASPECT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_sdvo*, %struct.intel_sdvo_connector*)* @intel_sdvo_add_hdmi_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_add_hdmi_properties(%struct.intel_sdvo* %0, %struct.intel_sdvo_connector* %1) #0 {
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca %struct.intel_sdvo_connector*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %3, align 8
  store %struct.intel_sdvo_connector* %1, %struct.intel_sdvo_connector** %4, align 8
  %6 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %4, align 8
  %7 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %5, align 8
  %12 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %4, align 8
  %13 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = call i32 @intel_attach_force_audio_property(%struct.TYPE_8__* %14)
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %17 = call i32 @INTEL_GEN(%struct.drm_i915_private* %16)
  %18 = icmp sge i32 %17, 4
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %21 = call i64 @IS_MOBILE(%struct.drm_i915_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %4, align 8
  %25 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = call i32 @intel_attach_broadcast_rgb_property(%struct.TYPE_8__* %26)
  br label %28

28:                                               ; preds = %23, %19, %2
  %29 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %4, align 8
  %30 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = call i32 @intel_attach_aspect_ratio_property(%struct.TYPE_8__* %31)
  %33 = load i32, i32* @HDMI_PICTURE_ASPECT_NONE, align 4
  %34 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %4, align 8
  %35 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %33, i32* %39, align 4
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_attach_force_audio_property(%struct.TYPE_8__*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_MOBILE(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_attach_broadcast_rgb_property(%struct.TYPE_8__*) #1

declare dso_local i32 @intel_attach_aspect_ratio_property(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
