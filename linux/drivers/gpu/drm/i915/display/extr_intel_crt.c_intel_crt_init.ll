; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32 }
%struct.drm_connector = type { i32, i64 }
%struct.intel_crt = type { %struct.TYPE_2__, i64, i32, %struct.intel_connector* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_connector = type { i32, i32, %struct.drm_connector }

@PCH_ADPA = common dso_local global i32 0, align 4
@VLV_ADPA = common dso_local global i32 0, align 4
@ADPA = common dso_local global i32 0, align 4
@ADPA_DAC_ENABLE = common dso_local global i32 0, align 4
@ADPA_HSYNC_CNTL_DISABLE = common dso_local global i32 0, align 4
@ADPA_VSYNC_CNTL_DISABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@intel_crt_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@intel_crt_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"CRT\00", align 1
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DVO = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@POWER_DOMAIN_PORT_CRT = common dso_local global i32 0, align 4
@intel_spurious_crt_detect = common dso_local global i32 0, align 4
@HPD_CRT = common dso_local global i32 0, align 4
@intel_encoder_hotplug = common dso_local global i32 0, align 4
@PORT_E = common dso_local global i32 0, align 4
@hsw_crt_get_config = common dso_local global i32 0, align 4
@intel_ddi_get_hw_state = common dso_local global i32 0, align 4
@hsw_crt_compute_config = common dso_local global i32 0, align 4
@hsw_pre_pll_enable_crt = common dso_local global i32 0, align 4
@hsw_pre_enable_crt = common dso_local global i32 0, align 4
@hsw_enable_crt = common dso_local global i32 0, align 4
@hsw_disable_crt = common dso_local global i32 0, align 4
@hsw_post_disable_crt = common dso_local global i32 0, align 4
@pch_crt_compute_config = common dso_local global i32 0, align 4
@pch_disable_crt = common dso_local global i32 0, align 4
@pch_post_disable_crt = common dso_local global i32 0, align 4
@intel_crt_compute_config = common dso_local global i32 0, align 4
@intel_disable_crt = common dso_local global i32 0, align 4
@PORT_NONE = common dso_local global i32 0, align 4
@intel_crt_get_config = common dso_local global i32 0, align 4
@intel_crt_get_hw_state = common dso_local global i32 0, align 4
@intel_enable_crt = common dso_local global i32 0, align 4
@intel_connector_get_hw_state = common dso_local global i32 0, align 4
@intel_crt_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@FDI_RX_POLARITY_REVERSED_LPT = common dso_local global i32 0, align 4
@FDI_RX_LINK_REVERSAL_OVERRIDE = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_crt_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.intel_crt*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @PCH_ADPA, align 4
  store i32 %13, i32* %6, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @VLV_ADPA, align 4
  store i32 %19, i32* %6, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @ADPA, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %20, %18
  br label %23

23:                                               ; preds = %22, %12
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @I915_READ(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ADPA_HSYNC_CNTL_DISABLE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @ADPA_VSYNC_CNTL_DISABLE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @I915_WRITE(i32 %31, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @I915_READ(i32 %40)
  %42 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %264

46:                                               ; preds = %30
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @I915_WRITE(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %23
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.intel_crt* @kzalloc(i32 88, i32 %51)
  store %struct.intel_crt* %52, %struct.intel_crt** %4, align 8
  %53 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %54 = icmp ne %struct.intel_crt* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %264

56:                                               ; preds = %50
  %57 = call %struct.intel_connector* (...) @intel_connector_alloc()
  store %struct.intel_connector* %57, %struct.intel_connector** %5, align 8
  %58 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %59 = icmp ne %struct.intel_connector* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %62 = call i32 @kfree(%struct.intel_crt* %61)
  br label %264

63:                                               ; preds = %56
  %64 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %65 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %64, i32 0, i32 2
  store %struct.drm_connector* %65, %struct.drm_connector** %3, align 8
  %66 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %67 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %68 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %67, i32 0, i32 3
  store %struct.intel_connector* %66, %struct.intel_connector** %68, align 8
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %70 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %69, i32 0, i32 1
  %71 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %72 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %71, i32 0, i32 2
  %73 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %74 = call i32 @drm_connector_init(i32* %70, %struct.drm_connector* %72, i32* @intel_crt_connector_funcs, i32 %73)
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %76 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %75, i32 0, i32 1
  %77 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %78 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* @DRM_MODE_ENCODER_DAC, align 4
  %81 = call i32 @drm_encoder_init(i32* %76, i32* %79, i32* @intel_crt_enc_funcs, i32 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %83 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %84 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %83, i32 0, i32 0
  %85 = call i32 @intel_connector_attach_encoder(%struct.intel_connector* %82, %struct.TYPE_2__* %84)
  %86 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %87 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %88 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 15
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @INTEL_OUTPUT_DVO, align 4
  %91 = shl i32 1, %90
  %92 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %93 = shl i32 1, %92
  %94 = or i32 %91, %93
  %95 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %96 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %99 = call i64 @IS_I830(%struct.drm_i915_private* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %63
  %102 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %103 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  br label %109

105:                                              ; preds = %63
  %106 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %107 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 7, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %101
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %111 = call i64 @IS_GEN(%struct.drm_i915_private* %110, i32 2)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %115 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  br label %119

116:                                              ; preds = %109
  %117 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %118 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %113
  %120 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %121 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %124 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @POWER_DOMAIN_PORT_CRT, align 4
  %126 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %127 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 14
  store i32 %125, i32* %128, align 8
  %129 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %130 = call i64 @I915_HAS_HOTPLUG(%struct.drm_i915_private* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %119
  %133 = load i32, i32* @intel_spurious_crt_detect, align 4
  %134 = call i32 @dmi_check_system(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* @HPD_CRT, align 4
  %138 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %139 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 13
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* @intel_encoder_hotplug, align 4
  %142 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %143 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 12
  store i32 %141, i32* %144, align 8
  br label %145

145:                                              ; preds = %136, %132, %119
  %146 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %147 = call i64 @HAS_DDI(%struct.drm_i915_private* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %186

149:                                              ; preds = %145
  %150 = load i32, i32* @PORT_E, align 4
  %151 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %152 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 6
  store i32 %150, i32* %153, align 8
  %154 = load i32, i32* @hsw_crt_get_config, align 4
  %155 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %156 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 5
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* @intel_ddi_get_hw_state, align 4
  %159 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %160 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 4
  store i32 %158, i32* %161, align 8
  %162 = load i32, i32* @hsw_crt_compute_config, align 4
  %163 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %164 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 8
  store i32 %162, i32* %165, align 8
  %166 = load i32, i32* @hsw_pre_pll_enable_crt, align 4
  %167 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %168 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 11
  store i32 %166, i32* %169, align 4
  %170 = load i32, i32* @hsw_pre_enable_crt, align 4
  %171 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %172 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 10
  store i32 %170, i32* %173, align 8
  %174 = load i32, i32* @hsw_enable_crt, align 4
  %175 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %176 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 3
  store i32 %174, i32* %177, align 4
  %178 = load i32, i32* @hsw_disable_crt, align 4
  %179 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %180 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 7
  store i32 %178, i32* %181, align 4
  %182 = load i32, i32* @hsw_post_disable_crt, align 4
  %183 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %184 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 9
  store i32 %182, i32* %185, align 4
  br label %229

186:                                              ; preds = %145
  %187 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %188 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %186
  %191 = load i32, i32* @pch_crt_compute_config, align 4
  %192 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %193 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 8
  store i32 %191, i32* %194, align 8
  %195 = load i32, i32* @pch_disable_crt, align 4
  %196 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %197 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 7
  store i32 %195, i32* %198, align 4
  %199 = load i32, i32* @pch_post_disable_crt, align 4
  %200 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %201 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 9
  store i32 %199, i32* %202, align 4
  br label %212

203:                                              ; preds = %186
  %204 = load i32, i32* @intel_crt_compute_config, align 4
  %205 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %206 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 8
  store i32 %204, i32* %207, align 8
  %208 = load i32, i32* @intel_disable_crt, align 4
  %209 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %210 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 7
  store i32 %208, i32* %211, align 4
  br label %212

212:                                              ; preds = %203, %190
  %213 = load i32, i32* @PORT_NONE, align 4
  %214 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %215 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 6
  store i32 %213, i32* %216, align 8
  %217 = load i32, i32* @intel_crt_get_config, align 4
  %218 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %219 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 5
  store i32 %217, i32* %220, align 4
  %221 = load i32, i32* @intel_crt_get_hw_state, align 4
  %222 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %223 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 4
  store i32 %221, i32* %224, align 8
  %225 = load i32, i32* @intel_enable_crt, align 4
  %226 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %227 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 3
  store i32 %225, i32* %228, align 4
  br label %229

229:                                              ; preds = %212, %149
  %230 = load i32, i32* @intel_connector_get_hw_state, align 4
  %231 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %232 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %234 = call i32 @drm_connector_helper_add(%struct.drm_connector* %233, i32* @intel_crt_connector_helper_funcs)
  %235 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %236 = call i64 @I915_HAS_HOTPLUG(%struct.drm_i915_private* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %229
  %239 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %240 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %241 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  br label %242

242:                                              ; preds = %238, %229
  %243 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %244 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %243, i32 0, i32 1
  store i64 0, i64* %244, align 8
  %245 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %246 = call i64 @HAS_PCH_LPT(%struct.drm_i915_private* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %242
  %249 = load i32, i32* @FDI_RX_POLARITY_REVERSED_LPT, align 4
  %250 = load i32, i32* @FDI_RX_LINK_REVERSAL_OVERRIDE, align 4
  %251 = or i32 %249, %250
  store i32 %251, i32* %8, align 4
  %252 = load i32, i32* @PIPE_A, align 4
  %253 = call i32 @FDI_RX_CTL(i32 %252)
  %254 = call i32 @I915_READ(i32 %253)
  %255 = load i32, i32* %8, align 4
  %256 = and i32 %254, %255
  %257 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %258 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %248, %242
  %260 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %261 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 2
  %263 = call i32 @intel_crt_reset(i32* %262)
  br label %264

264:                                              ; preds = %259, %60, %55, %45
  ret void
}

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local %struct.intel_crt* @kzalloc(i32, i32) #1

declare dso_local %struct.intel_connector* @intel_connector_alloc(...) #1

declare dso_local i32 @kfree(%struct.intel_crt*) #1

declare dso_local i32 @drm_connector_init(i32*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_encoder_init(i32*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @intel_connector_attach_encoder(%struct.intel_connector*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @I915_HAS_HOTPLUG(%struct.drm_i915_private*) #1

declare dso_local i32 @dmi_check_system(i32) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i64 @HAS_PCH_LPT(%struct.drm_i915_private*) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i32 @intel_crt_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
