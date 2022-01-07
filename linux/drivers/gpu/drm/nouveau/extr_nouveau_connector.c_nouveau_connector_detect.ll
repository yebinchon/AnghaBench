; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_connector = type { i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.nouveau_encoder = type { %struct.TYPE_7__*, %struct.i2c_adapter* }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs* }
%struct.drm_encoder_helper_funcs = type { i64 (%struct.drm_encoder.0*, %struct.drm_connector.1*)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_connector.1 = type opaque

@connector_status_disconnected = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VGA_SWITCHEROO_CAN_SWITCH_DDC = common dso_local global i32 0, align 4
@DCB_CONNECTOR_LVDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"DDC responded, but no EDID for %s\0A\00", align 1
@DCB_OUTPUT_TMDS = common dso_local global i32 0, align 4
@DCB_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i64 0, align 8
@nouveau_tv_disable = common dso_local global i32 0, align 4
@DCB_OUTPUT_TV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @nouveau_connector_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_connector*, align 8
  %9 = alloca %struct.nouveau_encoder*, align 8
  %10 = alloca %struct.nouveau_encoder*, align 8
  %11 = alloca %struct.i2c_adapter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.drm_encoder*, align 8
  %16 = alloca %struct.drm_encoder_helper_funcs*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %18 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %17, i32 0, i32 1
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %6, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %20)
  store %struct.nouveau_drm* %21, %struct.nouveau_drm** %7, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %22)
  store %struct.nouveau_connector* %23, %struct.nouveau_connector** %8, align 8
  store %struct.nouveau_encoder* null, %struct.nouveau_encoder** %9, align 8
  %24 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %24, i32* %14, align 4
  %25 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %26 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %31 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %30, %struct.TYPE_8__* null)
  %32 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %33 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call i32 @kfree(%struct.TYPE_8__* %34)
  %36 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %37 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %36, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %37, align 8
  br label %38

38:                                               ; preds = %29, %2
  %39 = call i64 (...) @drm_kms_helper_is_poll_worker()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pm_runtime_get_noresume(i32 %44)
  br label %61

46:                                               ; preds = %38
  %47 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pm_runtime_get_sync(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @EACCES, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %3, align 4
  br label %263

60:                                               ; preds = %53, %46
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %63 = call %struct.nouveau_encoder* @nouveau_connector_ddc_detect(%struct.drm_connector* %62)
  store %struct.nouveau_encoder* %63, %struct.nouveau_encoder** %9, align 8
  %64 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %65 = icmp ne %struct.nouveau_encoder* %64, null
  br i1 %65, label %66, label %198

66:                                               ; preds = %61
  %67 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %68 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %67, i32 0, i32 1
  %69 = load %struct.i2c_adapter*, %struct.i2c_adapter** %68, align 8
  store %struct.i2c_adapter* %69, %struct.i2c_adapter** %11, align 8
  %70 = icmp ne %struct.i2c_adapter* %69, null
  br i1 %70, label %71, label %198

71:                                               ; preds = %66
  %72 = call i32 (...) @vga_switcheroo_handler_flags()
  %73 = load i32, i32* @VGA_SWITCHEROO_CAN_SWITCH_DDC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %78 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DCB_CONNECTOR_LVDS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %84 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %85 = call %struct.TYPE_8__* @drm_get_edid_switcheroo(%struct.drm_connector* %83, %struct.i2c_adapter* %84)
  %86 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %87 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %86, i32 0, i32 1
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %87, align 8
  br label %94

88:                                               ; preds = %76, %71
  %89 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %90 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %91 = call %struct.TYPE_8__* @drm_get_edid(%struct.drm_connector* %89, %struct.i2c_adapter* %90)
  %92 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %93 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %92, i32 0, i32 1
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %93, align 8
  br label %94

94:                                               ; preds = %88, %82
  %95 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %96 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %97 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %95, %struct.TYPE_8__* %98)
  %100 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %101 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = icmp ne %struct.TYPE_8__* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %94
  %105 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %106 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %107 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @NV_ERROR(%struct.nouveau_drm* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %210

110:                                              ; preds = %94
  store %struct.nouveau_encoder* null, %struct.nouveau_encoder** %10, align 8
  %111 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %112 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %120 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  %121 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %119, i32 %120)
  store %struct.nouveau_encoder* %121, %struct.nouveau_encoder** %10, align 8
  br label %122

122:                                              ; preds = %118, %110
  %123 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %124 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %132 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  %133 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %131, i32 %132)
  store %struct.nouveau_encoder* %133, %struct.nouveau_encoder** %10, align 8
  br label %134

134:                                              ; preds = %130, %122
  %135 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %136 = icmp ne %struct.nouveau_encoder* %135, null
  br i1 %136, label %137, label %186

137:                                              ; preds = %134
  %138 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %139 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %138, i32 0, i32 0
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %137
  %146 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %147 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %146, i32 0, i32 0
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %169, label %153

153:                                              ; preds = %145, %137
  %154 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %155 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %186

161:                                              ; preds = %153
  %162 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %163 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %162, i32 0, i32 0
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %161, %145
  %170 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %171 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %170, i32 0, i32 1
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %169
  %179 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  store i32 %179, i32* %12, align 4
  br label %182

180:                                              ; preds = %169
  %181 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %180, %178
  %183 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %184 = load i32, i32* %12, align 4
  %185 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %183, i32 %184)
  store %struct.nouveau_encoder* %185, %struct.nouveau_encoder** %9, align 8
  br label %186

186:                                              ; preds = %182, %161, %153, %134
  %187 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %188 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %189 = call i32 @nouveau_connector_set_encoder(%struct.drm_connector* %187, %struct.nouveau_encoder* %188)
  %190 = load i64, i64* @connector_status_connected, align 8
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %14, align 4
  %192 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %193 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %192, i32 0, i32 2
  %194 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %195 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %194, i32 0, i32 1
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = call i32 @drm_dp_cec_set_edid(i32* %193, %struct.TYPE_8__* %196)
  br label %253

198:                                              ; preds = %66, %61
  %199 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %200 = call %struct.nouveau_encoder* @nouveau_connector_of_detect(%struct.drm_connector* %199)
  store %struct.nouveau_encoder* %200, %struct.nouveau_encoder** %9, align 8
  %201 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %202 = icmp ne %struct.nouveau_encoder* %201, null
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %205 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %206 = call i32 @nouveau_connector_set_encoder(%struct.drm_connector* %204, %struct.nouveau_encoder* %205)
  %207 = load i64, i64* @connector_status_connected, align 8
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %14, align 4
  br label %253

209:                                              ; preds = %198
  br label %210

210:                                              ; preds = %209, %104
  %211 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %212 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  %213 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %211, i32 %212)
  store %struct.nouveau_encoder* %213, %struct.nouveau_encoder** %9, align 8
  %214 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %215 = icmp ne %struct.nouveau_encoder* %214, null
  br i1 %215, label %223, label %216

216:                                              ; preds = %210
  %217 = load i32, i32* @nouveau_tv_disable, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %216
  %220 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %221 = load i32, i32* @DCB_OUTPUT_TV, align 4
  %222 = call %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %220, i32 %221)
  store %struct.nouveau_encoder* %222, %struct.nouveau_encoder** %9, align 8
  br label %223

223:                                              ; preds = %219, %216, %210
  %224 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %225 = icmp ne %struct.nouveau_encoder* %224, null
  br i1 %225, label %226, label %252

226:                                              ; preds = %223
  %227 = load i32, i32* %5, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %252

229:                                              ; preds = %226
  %230 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %231 = call %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder* %230)
  store %struct.drm_encoder* %231, %struct.drm_encoder** %15, align 8
  %232 = load %struct.drm_encoder*, %struct.drm_encoder** %15, align 8
  %233 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %232, i32 0, i32 0
  %234 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %233, align 8
  store %struct.drm_encoder_helper_funcs* %234, %struct.drm_encoder_helper_funcs** %16, align 8
  %235 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %16, align 8
  %236 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %235, i32 0, i32 0
  %237 = load i64 (%struct.drm_encoder.0*, %struct.drm_connector.1*)*, i64 (%struct.drm_encoder.0*, %struct.drm_connector.1*)** %236, align 8
  %238 = load %struct.drm_encoder*, %struct.drm_encoder** %15, align 8
  %239 = bitcast %struct.drm_encoder* %238 to %struct.drm_encoder.0*
  %240 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %241 = bitcast %struct.drm_connector* %240 to %struct.drm_connector.1*
  %242 = call i64 %237(%struct.drm_encoder.0* %239, %struct.drm_connector.1* %241)
  %243 = load i64, i64* @connector_status_connected, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %229
  %246 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %247 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %9, align 8
  %248 = call i32 @nouveau_connector_set_encoder(%struct.drm_connector* %246, %struct.nouveau_encoder* %247)
  %249 = load i64, i64* @connector_status_connected, align 8
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %14, align 4
  br label %253

251:                                              ; preds = %229
  br label %252

252:                                              ; preds = %251, %226, %223
  br label %253

253:                                              ; preds = %252, %245, %203, %186
  %254 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %255 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @pm_runtime_mark_last_busy(i32 %256)
  %258 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %259 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @pm_runtime_put_autosuspend(i32 %260)
  %262 = load i32, i32* %14, align 4
  store i32 %262, i32* %3, align 4
  br label %263

263:                                              ; preds = %253, %58
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

declare dso_local i64 @drm_kms_helper_is_poll_worker(...) #1

declare dso_local i32 @pm_runtime_get_noresume(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.nouveau_encoder* @nouveau_connector_ddc_detect(%struct.drm_connector*) #1

declare dso_local i32 @vga_switcheroo_handler_flags(...) #1

declare dso_local %struct.TYPE_8__* @drm_get_edid_switcheroo(%struct.drm_connector*, %struct.i2c_adapter*) #1

declare dso_local %struct.TYPE_8__* @drm_get_edid(%struct.drm_connector*, %struct.i2c_adapter*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local %struct.nouveau_encoder* @find_encoder(%struct.drm_connector*, i32) #1

declare dso_local i32 @nouveau_connector_set_encoder(%struct.drm_connector*, %struct.nouveau_encoder*) #1

declare dso_local i32 @drm_dp_cec_set_edid(i32*, %struct.TYPE_8__*) #1

declare dso_local %struct.nouveau_encoder* @nouveau_connector_of_detect(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
