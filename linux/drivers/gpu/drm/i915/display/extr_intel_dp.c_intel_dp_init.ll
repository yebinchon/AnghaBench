; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i32, i32, i32, %struct.TYPE_2__, %struct.intel_encoder }
%struct.TYPE_2__ = type { i32 }
%struct.intel_encoder = type { i32, i32, i64, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.intel_connector = type { i32, i32, i32, %struct.TYPE_2__, %struct.intel_encoder }

@GFP_KERNEL = common dso_local global i32 0, align 4
@intel_dp_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"DP %c\00", align 1
@intel_dp_hotplug = common dso_local global i32 0, align 4
@intel_dp_compute_config = common dso_local global i32 0, align 4
@intel_dp_get_hw_state = common dso_local global i32 0, align 4
@intel_dp_get_config = common dso_local global i32 0, align 4
@intel_panel_update_backlight = common dso_local global i32 0, align 4
@intel_dp_encoder_suspend = common dso_local global i32 0, align 4
@chv_dp_pre_pll_enable = common dso_local global i32 0, align 4
@chv_pre_enable_dp = common dso_local global i32 0, align 4
@vlv_enable_dp = common dso_local global i8* null, align 8
@vlv_disable_dp = common dso_local global i8* null, align 8
@chv_post_disable_dp = common dso_local global i32 0, align 4
@chv_dp_post_pll_disable = common dso_local global i32 0, align 4
@vlv_dp_pre_pll_enable = common dso_local global i32 0, align 4
@vlv_pre_enable_dp = common dso_local global i32 0, align 4
@vlv_post_disable_dp = common dso_local global i32 0, align 4
@g4x_pre_enable_dp = common dso_local global i32 0, align 4
@g4x_enable_dp = common dso_local global i8* null, align 8
@g4x_disable_dp = common dso_local global i8* null, align 8
@g4x_post_disable_dp = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DP = common dso_local global i32 0, align 4
@PORT_D = common dso_local global i32 0, align 4
@intel_dp_hpd_pulse = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dp_init(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_digital_port*, align 8
  %9 = alloca %struct.intel_encoder*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca %struct.intel_connector*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.intel_digital_port* @kzalloc(i32 104, i32 %12)
  store %struct.intel_digital_port* %13, %struct.intel_digital_port** %8, align 8
  %14 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %15 = icmp ne %struct.intel_digital_port* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %182

17:                                               ; preds = %3
  %18 = call %struct.intel_digital_port* (...) @intel_connector_alloc()
  %19 = bitcast %struct.intel_digital_port* %18 to %struct.intel_connector*
  store %struct.intel_connector* %19, %struct.intel_connector** %11, align 8
  %20 = load %struct.intel_connector*, %struct.intel_connector** %11, align 8
  %21 = icmp ne %struct.intel_connector* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %179

23:                                               ; preds = %17
  %24 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %25 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %24, i32 0, i32 4
  store %struct.intel_encoder* %25, %struct.intel_encoder** %9, align 8
  %26 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %27 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %26, i32 0, i32 17
  store %struct.drm_encoder* %27, %struct.drm_encoder** %10, align 8
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %31 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %30, i32 0, i32 17
  %32 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @port_name(i32 %33)
  %35 = call i64 @drm_encoder_init(i32* %29, %struct.drm_encoder* %31, i32* @intel_dp_enc_funcs, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %175

38:                                               ; preds = %23
  %39 = load i32, i32* @intel_dp_hotplug, align 4
  %40 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %41 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %40, i32 0, i32 16
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @intel_dp_compute_config, align 4
  %43 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %44 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %43, i32 0, i32 15
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @intel_dp_get_hw_state, align 4
  %46 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %47 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %46, i32 0, i32 14
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @intel_dp_get_config, align 4
  %49 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %50 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %49, i32 0, i32 13
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @intel_panel_update_backlight, align 4
  %52 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %53 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %52, i32 0, i32 12
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @intel_dp_encoder_suspend, align 4
  %55 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %56 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 4
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %58 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %38
  %61 = load i32, i32* @chv_dp_pre_pll_enable, align 4
  %62 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %63 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @chv_pre_enable_dp, align 4
  %65 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %66 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** @vlv_enable_dp, align 8
  %68 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %69 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @vlv_disable_dp, align 8
  %71 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %72 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @chv_post_disable_dp, align 4
  %74 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %75 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @chv_dp_post_pll_disable, align 4
  %77 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %78 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %77, i32 0, i32 10
  store i32 %76, i32* %78, align 8
  br label %113

79:                                               ; preds = %38
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %81 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load i32, i32* @vlv_dp_pre_pll_enable, align 4
  %85 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %86 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %85, i32 0, i32 9
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @vlv_pre_enable_dp, align 4
  %88 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %89 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 8
  %90 = load i8*, i8** @vlv_enable_dp, align 8
  %91 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %92 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %91, i32 0, i32 7
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** @vlv_disable_dp, align 8
  %94 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %95 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %94, i32 0, i32 6
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @vlv_post_disable_dp, align 4
  %97 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %98 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 8
  br label %112

99:                                               ; preds = %79
  %100 = load i32, i32* @g4x_pre_enable_dp, align 4
  %101 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %102 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 8
  %103 = load i8*, i8** @g4x_enable_dp, align 8
  %104 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %105 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %104, i32 0, i32 7
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** @g4x_disable_dp, align 8
  %107 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %108 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %107, i32 0, i32 6
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @g4x_post_disable_dp, align 4
  %110 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %111 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %99, %83
  br label %113

113:                                              ; preds = %112, %60
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %116 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  %118 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %119 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %118, i32 0, i32 0
  store i32 4, i32* %119, align 8
  %120 = load i32, i32* @INTEL_OUTPUT_DP, align 4
  %121 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %122 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @intel_port_to_power_domain(i32 %123)
  %125 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %126 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %128 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %113
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @PORT_D, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %136 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %135, i32 0, i32 0
  store i32 4, i32* %136, align 8
  br label %140

137:                                              ; preds = %130
  %138 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %139 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %138, i32 0, i32 0
  store i32 3, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %134
  br label %144

141:                                              ; preds = %113
  %142 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %143 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %142, i32 0, i32 0
  store i32 7, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %140
  %145 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %146 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %145, i32 0, i32 2
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.intel_encoder*, %struct.intel_encoder** %9, align 8
  %149 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @intel_dp_hpd_pulse, align 4
  %151 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %152 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @PORT_A, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %158 = call i32 @intel_infoframe_init(%struct.intel_digital_port* %157)
  br label %159

159:                                              ; preds = %156, %144
  %160 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @intel_bios_port_aux_ch(%struct.drm_i915_private* %160, i32 %161)
  %163 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %164 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %166 = load %struct.intel_connector*, %struct.intel_connector** %11, align 8
  %167 = bitcast %struct.intel_connector* %166 to %struct.intel_digital_port*
  %168 = call i32 @intel_dp_init_connector(%struct.intel_digital_port* %165, %struct.intel_digital_port* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %159
  br label %172

171:                                              ; preds = %159
  store i32 1, i32* %4, align 4
  br label %182

172:                                              ; preds = %170
  %173 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %174 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %173)
  br label %175

175:                                              ; preds = %172, %37
  %176 = load %struct.intel_connector*, %struct.intel_connector** %11, align 8
  %177 = bitcast %struct.intel_connector* %176 to %struct.intel_digital_port*
  %178 = call i32 @kfree(%struct.intel_digital_port* %177)
  br label %179

179:                                              ; preds = %175, %22
  %180 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %181 = call i32 @kfree(%struct.intel_digital_port* %180)
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %179, %171, %16
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local %struct.intel_digital_port* @kzalloc(i32, i32) #1

declare dso_local %struct.intel_digital_port* @intel_connector_alloc(...) #1

declare dso_local i64 @drm_encoder_init(i32*, %struct.drm_encoder*, i32*, i32, i8*, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_port_to_power_domain(i32) #1

declare dso_local i32 @intel_infoframe_init(%struct.intel_digital_port*) #1

declare dso_local i32 @intel_bios_port_aux_ch(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_dp_init_connector(%struct.intel_digital_port*, %struct.intel_digital_port*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

declare dso_local i32 @kfree(%struct.intel_digital_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
