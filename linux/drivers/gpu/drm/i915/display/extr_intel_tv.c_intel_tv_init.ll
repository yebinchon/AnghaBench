; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8* }
%struct.drm_i915_private = type { %struct.drm_device }
%struct.drm_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.drm_connector = type { i32, i32, i32, %struct.drm_connector_state* }
%struct.drm_connector_state = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.intel_tv = type { i32, %struct.intel_encoder }
%struct.intel_encoder = type { i32, %struct.TYPE_11__, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.intel_connector = type { i32, i32, %struct.drm_connector }

@tv_modes = common dso_local global %struct.TYPE_10__* null, align 8
@TV_CTL = common dso_local global i32 0, align 4
@TV_FUSE_STATE_MASK = common dso_local global i32 0, align 4
@TV_FUSE_STATE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Integrated TV is not present.\0A\00", align 1
@TV_DAC = common dso_local global i32 0, align 4
@TVDAC_STATE_CHG_EN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@intel_tv_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_SVIDEO = common dso_local global i32 0, align 4
@intel_tv_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TVDAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"TV\00", align 1
@intel_tv_compute_config = common dso_local global i32 0, align 4
@intel_tv_get_config = common dso_local global i32 0, align 4
@intel_tv_pre_enable = common dso_local global i32 0, align 4
@intel_enable_tv = common dso_local global i32 0, align 4
@intel_disable_tv = common dso_local global i32 0, align 4
@intel_tv_get_hw_state = common dso_local global i32 0, align 4
@intel_connector_get_hw_state = common dso_local global i32 0, align 4
@INTEL_OUTPUT_TVOUT = common dso_local global i32 0, align 4
@POWER_DOMAIN_PORT_OTHER = common dso_local global i32 0, align 4
@PORT_NONE = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_Unknown = common dso_local global i32 0, align 4
@intel_tv_connector_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_tv_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.intel_tv*, align 8
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca %struct.intel_connector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.drm_connector_state*, align 8
  %16 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  store %struct.drm_device* %18, %struct.drm_device** %3, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tv_modes, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %19)
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i8*, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* @TV_CTL, align 4
  %25 = call i32 @I915_READ(i32 %24)
  %26 = load i32, i32* @TV_FUSE_STATE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @TV_FUSE_STATE_DISABLED, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 1, i32* %16, align 4
  br label %264

31:                                               ; preds = %1
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = call i32 @intel_bios_is_tv_present(%struct.drm_i915_private* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %264

37:                                               ; preds = %31
  %38 = load i32, i32* @TV_DAC, align 4
  %39 = call i32 @I915_READ(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @TV_DAC, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @I915_WRITE(i32 %40, i32 %43)
  %45 = load i32, i32* @TV_DAC, align 4
  %46 = call i32 @I915_READ(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @TV_DAC, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = call i32 @I915_WRITE(i32 %47, i32 %51)
  %53 = load i32, i32* @TV_DAC, align 4
  %54 = call i32 @I915_READ(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @TV_DAC, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @I915_WRITE(i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %37
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %37
  store i32 1, i32* %16, align 4
  br label %264

68:                                               ; preds = %62
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.intel_tv* @kzalloc(i32 64, i32 %69)
  store %struct.intel_tv* %70, %struct.intel_tv** %5, align 8
  %71 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %72 = icmp ne %struct.intel_tv* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  store i32 1, i32* %16, align 4
  br label %264

74:                                               ; preds = %68
  %75 = call %struct.intel_connector* (...) @intel_connector_alloc()
  store %struct.intel_connector* %75, %struct.intel_connector** %7, align 8
  %76 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %77 = icmp ne %struct.intel_connector* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %80 = call i32 @kfree(%struct.intel_tv* %79)
  store i32 1, i32* %16, align 4
  br label %264

81:                                               ; preds = %74
  %82 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %83 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %82, i32 0, i32 1
  store %struct.intel_encoder* %83, %struct.intel_encoder** %6, align 8
  %84 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %85 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %84, i32 0, i32 2
  store %struct.drm_connector* %85, %struct.drm_connector** %4, align 8
  %86 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %87 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %86, i32 0, i32 3
  %88 = load %struct.drm_connector_state*, %struct.drm_connector_state** %87, align 8
  store %struct.drm_connector_state* %88, %struct.drm_connector_state** %15, align 8
  %89 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %90 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %91 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %93 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %94 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %95 = call i32 @drm_connector_init(%struct.drm_device* %92, %struct.drm_connector* %93, i32* @intel_tv_connector_funcs, i32 %94)
  %96 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %97 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %98 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %97, i32 0, i32 1
  %99 = load i32, i32* @DRM_MODE_ENCODER_TVDAC, align 4
  %100 = call i32 @drm_encoder_init(%struct.drm_device* %96, %struct.TYPE_11__* %98, i32* @intel_tv_enc_funcs, i32 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @intel_tv_compute_config, align 4
  %102 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %103 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %102, i32 0, i32 11
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @intel_tv_get_config, align 4
  %105 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %106 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %105, i32 0, i32 10
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @intel_tv_pre_enable, align 4
  %108 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %109 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %108, i32 0, i32 9
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @intel_enable_tv, align 4
  %111 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %112 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %111, i32 0, i32 8
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @intel_disable_tv, align 4
  %114 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %115 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @intel_tv_get_hw_state, align 4
  %117 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %118 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @intel_connector_get_hw_state, align 4
  %120 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %121 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %123 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %124 = call i32 @intel_connector_attach_encoder(%struct.intel_connector* %122, %struct.intel_encoder* %123)
  %125 = load i32, i32* @INTEL_OUTPUT_TVOUT, align 4
  %126 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %127 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* @POWER_DOMAIN_PORT_OTHER, align 4
  %129 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %130 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @PORT_NONE, align 4
  %132 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %133 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  %134 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %135 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %134, i32 0, i32 0
  store i32 3, i32* %135, align 8
  %136 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %137 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %136, i32 0, i32 2
  store i64 0, i64* %137, align 8
  %138 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %139 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  store i32 3, i32* %140, align 4
  %141 = load i32, i32* @DRM_MODE_CONNECTOR_Unknown, align 4
  %142 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %143 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.drm_connector_state*, %struct.drm_connector_state** %15, align 8
  %145 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  store i32 54, i32* %147, align 4
  %148 = load %struct.drm_connector_state*, %struct.drm_connector_state** %15, align 8
  %149 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  store i32 36, i32* %151, align 4
  %152 = load %struct.drm_connector_state*, %struct.drm_connector_state** %15, align 8
  %153 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  store i32 46, i32* %155, align 4
  %156 = load %struct.drm_connector_state*, %struct.drm_connector_state** %15, align 8
  %157 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 3
  store i32 37, i32* %159, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load %struct.drm_connector_state*, %struct.drm_connector_state** %15, align 8
  %162 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 4
  %164 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %165 = call i32 @drm_connector_helper_add(%struct.drm_connector* %164, i32* @intel_tv_connector_helper_funcs)
  %166 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %167 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  %168 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %169 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %168, i32 0, i32 1
  store i32 0, i32* %169, align 4
  store i32 0, i32* %13, align 4
  br label %170

170:                                              ; preds = %198, %81
  %171 = load i32, i32* %13, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tv_modes, align 8
  %173 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %172)
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %201

175:                                              ; preds = %170
  %176 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %177 = call i64 @IS_GEN(%struct.drm_i915_private* %176, i32 3)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %175
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tv_modes, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %201

188:                                              ; preds = %179, %175
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tv_modes, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %23, i64 %196
  store i8* %194, i8** %197, align 8
  br label %198

198:                                              ; preds = %188
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %170

201:                                              ; preds = %187, %170
  %202 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @drm_mode_create_tv_properties(%struct.drm_device* %202, i32 %203, i8** %23)
  %205 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %206 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %205, i32 0, i32 2
  %207 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %208 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.drm_connector_state*, %struct.drm_connector_state** %15, align 8
  %212 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @drm_object_attach_property(i32* %206, i32 %210, i32 %214)
  %216 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %217 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %216, i32 0, i32 2
  %218 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %219 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.drm_connector_state*, %struct.drm_connector_state** %15, align 8
  %223 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @drm_object_attach_property(i32* %217, i32 %221, i32 %226)
  %228 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %229 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %228, i32 0, i32 2
  %230 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %231 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.drm_connector_state*, %struct.drm_connector_state** %15, align 8
  %235 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @drm_object_attach_property(i32* %229, i32 %233, i32 %238)
  %240 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %241 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %240, i32 0, i32 2
  %242 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %243 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.drm_connector_state*, %struct.drm_connector_state** %15, align 8
  %247 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @drm_object_attach_property(i32* %241, i32 %245, i32 %250)
  %252 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %253 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %252, i32 0, i32 2
  %254 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %255 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.drm_connector_state*, %struct.drm_connector_state** %15, align 8
  %259 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @drm_object_attach_property(i32* %253, i32 %257, i32 %262)
  store i32 0, i32* %16, align 4
  br label %264

264:                                              ; preds = %201, %78, %73, %67, %35, %30
  %265 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %265)
  %266 = load i32, i32* %16, align 4
  switch i32 %266, label %268 [
    i32 0, label %267
    i32 1, label %267
  ]

267:                                              ; preds = %264, %264
  ret void

268:                                              ; preds = %264
  unreachable
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @intel_bios_is_tv_present(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local %struct.intel_tv* @kzalloc(i32, i32) #1

declare dso_local %struct.intel_connector* @intel_connector_alloc(...) #1

declare dso_local i32 @kfree(%struct.intel_tv*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.TYPE_11__*, i32*, i32, i8*) #1

declare dso_local i32 @intel_connector_attach_encoder(%struct.intel_connector*, %struct.intel_encoder*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @drm_mode_create_tv_properties(%struct.drm_device*, i32, i8**) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
