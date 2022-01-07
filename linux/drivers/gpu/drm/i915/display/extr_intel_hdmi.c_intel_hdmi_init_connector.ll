; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_init_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_init_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, %struct.intel_encoder, %struct.intel_hdmi }
%struct.intel_encoder = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_hdmi = type { i32, %struct.intel_connector*, i32 }
%struct.intel_connector = type { i32, %struct.drm_connector }
%struct.drm_connector = type { i32, i32, i32, i64 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Adding HDMI connector on port %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Not enough lanes (%d) for HDMI on port %c\0A\00", align 1
@intel_hdmi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@intel_hdmi_connector_helper_funcs = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@intel_ddi_connector_get_hw_state = common dso_local global i32 0, align 4
@intel_connector_get_hw_state = common dso_local global i32 0, align 4
@intel_hdmi_hdcp_shim = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"HDCP init failed, skipping.\0A\00", align 1
@PEG_BAND_GAP_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"CEC notifier get failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_hdmi_init_connector(%struct.intel_digital_port* %0, %struct.intel_connector* %1) #0 {
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.intel_hdmi*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  store %struct.intel_connector* %1, %struct.intel_connector** %4, align 8
  %13 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %14 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %13, i32 0, i32 1
  store %struct.drm_connector* %14, %struct.drm_connector** %5, align 8
  %15 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %16 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %15, i32 0, i32 2
  store %struct.intel_hdmi* %16, %struct.intel_hdmi** %6, align 8
  %17 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %18 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %17, i32 0, i32 1
  store %struct.intel_encoder* %18, %struct.intel_encoder** %7, align 8
  %19 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %20 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %8, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %24 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %23)
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %9, align 8
  %25 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %26 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @port_name(i32 %28)
  %30 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %32 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 4
  %35 = zext i1 %34 to i32
  %36 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %37 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @port_name(i32 %39)
  %41 = call i64 @WARN(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %146

44:                                               ; preds = %2
  %45 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %46 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %47 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %48 = call i32 @drm_connector_init(%struct.drm_device* %45, %struct.drm_connector* %46, i32* @intel_hdmi_connector_funcs, i32 %47)
  %49 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %50 = call i32 @drm_connector_helper_add(%struct.drm_connector* %49, i32* @intel_hdmi_connector_helper_funcs)
  %51 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %54 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %56 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %58 = call i32 @INTEL_GEN(%struct.drm_i915_private* %57)
  %59 = icmp sge i32 %58, 10
  br i1 %59, label %64, label %60

60:                                               ; preds = %44
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %62 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %44
  %65 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %66 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %60
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @intel_hdmi_ddc_pin(%struct.drm_i915_private* %68, i32 %69)
  %71 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %72 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @PORT_A, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @WARN_ON(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %146

80:                                               ; preds = %67
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @intel_hpd_pin_default(%struct.drm_i915_private* %81, i32 %82)
  %84 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %85 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %87 = call i64 @HAS_DDI(%struct.drm_i915_private* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load i32, i32* @intel_ddi_connector_get_hw_state, align 4
  %91 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %92 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %97

93:                                               ; preds = %80
  %94 = load i32, i32* @intel_connector_get_hw_state, align 4
  %95 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %96 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %89
  %98 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %99 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %100 = call i32 @intel_hdmi_add_properties(%struct.intel_hdmi* %98, %struct.drm_connector* %99)
  %101 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %102 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %103 = call i32 @intel_connector_attach_encoder(%struct.intel_connector* %101, %struct.intel_encoder* %102)
  %104 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %105 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %106 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %105, i32 0, i32 1
  store %struct.intel_connector* %104, %struct.intel_connector** %106, align 8
  %107 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i64 @is_hdcp_supported(%struct.drm_i915_private* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %97
  %112 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %113 = call i32 @intel_hdcp_init(%struct.intel_connector* %112, i32* @intel_hdmi_hdcp_shim)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %111
  br label %119

119:                                              ; preds = %118, %97
  %120 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %121 = call i64 @IS_G45(%struct.drm_i915_private* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = load i32, i32* @PEG_BAND_GAP_DATA, align 4
  %125 = call i32 @I915_READ(i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* @PEG_BAND_GAP_DATA, align 4
  %127 = load i32, i32* %12, align 4
  %128 = and i32 %127, -16
  %129 = or i32 %128, 13
  %130 = call i32 @I915_WRITE(i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %123, %119
  %132 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %133 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @port_identifier(i32 %135)
  %137 = call i32 @cec_notifier_get_conn(i32 %134, i32 %136)
  %138 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %139 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %141 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %131
  %145 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %146

146:                                              ; preds = %43, %79, %144, %131
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hdmi_ddc_pin(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_hpd_pin_default(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hdmi_add_properties(%struct.intel_hdmi*, %struct.drm_connector*) #1

declare dso_local i32 @intel_connector_attach_encoder(%struct.intel_connector*, %struct.intel_encoder*) #1

declare dso_local i64 @is_hdcp_supported(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_hdcp_init(%struct.intel_connector*, i32*) #1

declare dso_local i64 @IS_G45(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @cec_notifier_get_conn(i32, i32) #1

declare dso_local i32 @port_identifier(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
