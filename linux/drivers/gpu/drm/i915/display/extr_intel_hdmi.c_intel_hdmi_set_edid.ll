; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_set_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_set_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdmi = type { i32, i32, i32, i32 }
%struct.edid = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.TYPE_2__ = type { %struct.edid* }

@POWER_DOMAIN_GMBUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"HDMI GMBUS EDID read failed, retry using GPIO bit-banging\0A\00", align 1
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_hdmi_set_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_set_edid(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_hdmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.edid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %3, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = call %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector* %13)
  store %struct.intel_hdmi* %14, %struct.intel_hdmi** %4, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = load i32, i32* @POWER_DOMAIN_GMBUS, align 4
  %17 = call i32 @intel_display_power_get(%struct.drm_i915_private* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = load %struct.intel_hdmi*, %struct.intel_hdmi** %4, align 8
  %20 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private* %18, i32 %21)
  store %struct.i2c_adapter* %22, %struct.i2c_adapter** %8, align 8
  %23 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %25 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %23, %struct.i2c_adapter* %24)
  store %struct.edid* %25, %struct.edid** %6, align 8
  %26 = load %struct.edid*, %struct.edid** %6, align 8
  %27 = icmp ne %struct.edid* %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %1
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %30 = call i32 @intel_gmbus_is_forced_bit(%struct.i2c_adapter* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %35 = call i32 @intel_gmbus_force_bit(%struct.i2c_adapter* %34, i32 1)
  %36 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %38 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %36, %struct.i2c_adapter* %37)
  store %struct.edid* %38, %struct.edid** %6, align 8
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %40 = call i32 @intel_gmbus_force_bit(%struct.i2c_adapter* %39, i32 0)
  br label %41

41:                                               ; preds = %32, %28, %1
  %42 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %43 = load %struct.edid*, %struct.edid** %6, align 8
  %44 = icmp ne %struct.edid* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @intel_hdmi_dp_dual_mode_detect(%struct.drm_connector* %42, i32 %45)
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %48 = load i32, i32* @POWER_DOMAIN_GMBUS, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @intel_display_power_put(%struct.drm_i915_private* %47, i32 %48, i32 %49)
  %51 = load %struct.edid*, %struct.edid** %6, align 8
  %52 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %53 = call %struct.TYPE_2__* @to_intel_connector(%struct.drm_connector* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store %struct.edid* %51, %struct.edid** %54, align 8
  %55 = load %struct.edid*, %struct.edid** %6, align 8
  %56 = icmp ne %struct.edid* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %41
  %58 = load %struct.edid*, %struct.edid** %6, align 8
  %59 = getelementptr inbounds %struct.edid, %struct.edid* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load %struct.edid*, %struct.edid** %6, align 8
  %66 = call i32 @drm_detect_monitor_audio(%struct.edid* %65)
  %67 = load %struct.intel_hdmi*, %struct.intel_hdmi** %4, align 8
  %68 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.edid*, %struct.edid** %6, align 8
  %70 = call i32 @drm_detect_hdmi_monitor(%struct.edid* %69)
  %71 = load %struct.intel_hdmi*, %struct.intel_hdmi** %4, align 8
  %72 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %64, %57, %41
  %74 = load %struct.intel_hdmi*, %struct.intel_hdmi** %4, align 8
  %75 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.edid*, %struct.edid** %6, align 8
  %78 = call i32 @cec_notifier_set_phys_addr_from_edid(i32 %76, %struct.edid* %77)
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector*) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, %struct.i2c_adapter*) #1

declare dso_local i32 @intel_gmbus_is_forced_bit(%struct.i2c_adapter*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_gmbus_force_bit(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @intel_hdmi_dp_dual_mode_detect(%struct.drm_connector*, i32) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_detect_monitor_audio(%struct.edid*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @cec_notifier_set_phys_addr_from_edid(i32, %struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
