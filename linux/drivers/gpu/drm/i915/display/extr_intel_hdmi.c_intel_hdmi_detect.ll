; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdmi = type { i32 }
%struct.intel_encoder = type { i32 }
%struct.TYPE_4__ = type { %struct.intel_encoder }

@connector_status_disconnected = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"[CONNECTOR:%d:%s]\0A\00", align 1
@POWER_DOMAIN_GMBUS = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @intel_hdmi_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_hdmi*, align 8
  %8 = alloca %struct.intel_encoder*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %6, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = call %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector* %15)
  store %struct.intel_hdmi* %16, %struct.intel_hdmi** %7, align 8
  %17 = load %struct.intel_hdmi*, %struct.intel_hdmi** %7, align 8
  %18 = call %struct.TYPE_4__* @hdmi_to_dig_port(%struct.intel_hdmi* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.intel_encoder* %19, %struct.intel_encoder** %8, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %21 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %29 = load i32, i32* @POWER_DOMAIN_GMBUS, align 4
  %30 = call i32 @intel_display_power_get(%struct.drm_i915_private* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %32 = call i32 @INTEL_GEN(%struct.drm_i915_private* %31)
  %33 = icmp sge i32 %32, 11
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %36 = call i32 @intel_digital_port_connected(%struct.intel_encoder* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %48

39:                                               ; preds = %34, %2
  %40 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %41 = call i32 @intel_hdmi_unset_edid(%struct.drm_connector* %40)
  %42 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %43 = call i64 @intel_hdmi_set_edid(%struct.drm_connector* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @connector_status_connected, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %39
  br label %48

48:                                               ; preds = %47, %38
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %50 = load i32, i32* @POWER_DOMAIN_GMBUS, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @intel_display_power_put(%struct.drm_i915_private* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @connector_status_connected, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.intel_hdmi*, %struct.intel_hdmi** %7, align 8
  %58 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cec_notifier_phys_addr_invalidate(i32 %59)
  br label %61

61:                                               ; preds = %56, %48
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %63 = call i32 @intel_display_power_flush_work(%struct.drm_i915_private* %62)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector*) #1

declare dso_local %struct.TYPE_4__* @hdmi_to_dig_port(%struct.intel_hdmi*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_digital_port_connected(%struct.intel_encoder*) #1

declare dso_local i32 @intel_hdmi_unset_edid(%struct.drm_connector*) #1

declare dso_local i64 @intel_hdmi_set_edid(%struct.drm_connector*) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @cec_notifier_phys_addr_invalidate(i32) #1

declare dso_local i32 @intel_display_power_flush_work(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
