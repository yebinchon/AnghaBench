; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.intel_encoder }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.intel_encoder = type { i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_connector = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@intel_hdmi_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HDMI %c\00", align 1
@intel_hdmi_hotplug = common dso_local global i32 0, align 4
@intel_hdmi_compute_config = common dso_local global i32 0, align 4
@pch_disable_hdmi = common dso_local global i32 0, align 4
@pch_post_disable_hdmi = common dso_local global i32 0, align 4
@g4x_disable_hdmi = common dso_local global i32 0, align 4
@intel_hdmi_get_hw_state = common dso_local global i32 0, align 4
@intel_hdmi_get_config = common dso_local global i32 0, align 4
@chv_hdmi_pre_pll_enable = common dso_local global i32 0, align 4
@chv_hdmi_pre_enable = common dso_local global i32 0, align 4
@vlv_enable_hdmi = common dso_local global i8* null, align 8
@chv_hdmi_post_disable = common dso_local global i32 0, align 4
@chv_hdmi_post_pll_disable = common dso_local global i32 0, align 4
@vlv_hdmi_pre_pll_enable = common dso_local global i32 0, align 4
@vlv_hdmi_pre_enable = common dso_local global i32 0, align 4
@vlv_hdmi_post_disable = common dso_local global i32 0, align 4
@intel_hdmi_pre_enable = common dso_local global i32 0, align 4
@cpt_enable_hdmi = common dso_local global i8* null, align 8
@ibx_enable_hdmi = common dso_local global i8* null, align 8
@g4x_enable_hdmi = common dso_local global i8* null, align 8
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@PORT_D = common dso_local global i32 0, align 4
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@INVALID_MMIO_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_hdmi_init(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_digital_port*, align 8
  %8 = alloca %struct.intel_encoder*, align 8
  %9 = alloca %struct.intel_connector*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.intel_digital_port* @kzalloc(i32 88, i32 %10)
  store %struct.intel_digital_port* %11, %struct.intel_digital_port** %7, align 8
  %12 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %13 = icmp ne %struct.intel_digital_port* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %186

15:                                               ; preds = %3
  %16 = call %struct.intel_connector* (...) @intel_connector_alloc()
  store %struct.intel_connector* %16, %struct.intel_connector** %9, align 8
  %17 = load %struct.intel_connector*, %struct.intel_connector** %9, align 8
  %18 = icmp ne %struct.intel_connector* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %21 = call i32 @kfree(%struct.intel_digital_port* %20)
  br label %186

22:                                               ; preds = %15
  %23 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %24 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %23, i32 0, i32 4
  store %struct.intel_encoder* %24, %struct.intel_encoder** %8, align 8
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %28 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %27, i32 0, i32 15
  %29 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @port_name(i32 %30)
  %32 = call i32 @drm_encoder_init(i32* %26, i32* %28, i32* @intel_hdmi_enc_funcs, i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @intel_hdmi_hotplug, align 4
  %34 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %35 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %34, i32 0, i32 14
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @intel_hdmi_compute_config, align 4
  %37 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %38 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %37, i32 0, i32 13
  store i32 %36, i32* %38, align 4
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %40 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %22
  %43 = load i32, i32* @pch_disable_hdmi, align 4
  %44 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %45 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %44, i32 0, i32 12
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @pch_post_disable_hdmi, align 4
  %47 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %48 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  br label %53

49:                                               ; preds = %22
  %50 = load i32, i32* @g4x_disable_hdmi, align 4
  %51 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %52 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i32, i32* @intel_hdmi_get_hw_state, align 4
  %55 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %56 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @intel_hdmi_get_config, align 4
  %58 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %59 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %58, i32 0, i32 10
  store i32 %57, i32* %59, align 8
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %61 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %53
  %64 = load i32, i32* @chv_hdmi_pre_pll_enable, align 4
  %65 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %66 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @chv_hdmi_pre_enable, align 4
  %68 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %69 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** @vlv_enable_hdmi, align 8
  %71 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %72 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @chv_hdmi_post_disable, align 4
  %74 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %75 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @chv_hdmi_post_pll_disable, align 4
  %77 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %78 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 4
  br label %122

79:                                               ; preds = %53
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %81 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load i32, i32* @vlv_hdmi_pre_pll_enable, align 4
  %85 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %86 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @vlv_hdmi_pre_enable, align 4
  %88 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %89 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load i8*, i8** @vlv_enable_hdmi, align 8
  %91 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %92 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @vlv_hdmi_post_disable, align 4
  %94 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %95 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  br label %121

96:                                               ; preds = %79
  %97 = load i32, i32* @intel_hdmi_pre_enable, align 4
  %98 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %99 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %101 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i8*, i8** @cpt_enable_hdmi, align 8
  %105 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %106 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  br label %120

107:                                              ; preds = %96
  %108 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %109 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i8*, i8** @ibx_enable_hdmi, align 8
  %113 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %114 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  br label %119

115:                                              ; preds = %107
  %116 = load i8*, i8** @g4x_enable_hdmi, align 8
  %117 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %118 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %117, i32 0, i32 5
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %111
  br label %120

120:                                              ; preds = %119, %103
  br label %121

121:                                              ; preds = %120, %83
  br label %122

122:                                              ; preds = %121, %63
  %123 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %124 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %125 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @intel_port_to_power_domain(i32 %126)
  %128 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %129 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %132 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %134 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %122
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @PORT_D, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %142 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %141, i32 0, i32 2
  store i32 4, i32* %142, align 8
  br label %146

143:                                              ; preds = %136
  %144 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %145 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %144, i32 0, i32 2
  store i32 3, i32* %145, align 8
  br label %146

146:                                              ; preds = %143, %140
  br label %150

147:                                              ; preds = %122
  %148 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %149 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %148, i32 0, i32 2
  store i32 7, i32* %149, align 8
  br label %150

150:                                              ; preds = %147, %146
  %151 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %152 = shl i32 1, %151
  %153 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %154 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %156 = call i64 @IS_G4X(%struct.drm_i915_private* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %150
  %159 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %160 = shl i32 1, %159
  %161 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %162 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %158, %150
  %166 = load i32, i32* %5, align 4
  %167 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %168 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 4
  %170 = load i32, i32* @INVALID_MMIO_REG, align 4
  %171 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %172 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 8
  %174 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %175 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %174, i32 0, i32 0
  store i32 4, i32* %175, align 8
  %176 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %177 = call i32 @intel_infoframe_init(%struct.intel_digital_port* %176)
  %178 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @intel_bios_port_aux_ch(%struct.drm_i915_private* %178, i32 %179)
  %181 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %182 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %184 = load %struct.intel_connector*, %struct.intel_connector** %9, align 8
  %185 = call i32 @intel_hdmi_init_connector(%struct.intel_digital_port* %183, %struct.intel_connector* %184)
  br label %186

186:                                              ; preds = %165, %19, %14
  ret void
}

declare dso_local %struct.intel_digital_port* @kzalloc(i32, i32) #1

declare dso_local %struct.intel_connector* @intel_connector_alloc(...) #1

declare dso_local i32 @kfree(%struct.intel_digital_port*) #1

declare dso_local i32 @drm_encoder_init(i32*, i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_port_to_power_domain(i32) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_infoframe_init(%struct.intel_digital_port*) #1

declare dso_local i32 @intel_bios_port_aux_ch(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_hdmi_init_connector(%struct.intel_digital_port*, %struct.intel_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
