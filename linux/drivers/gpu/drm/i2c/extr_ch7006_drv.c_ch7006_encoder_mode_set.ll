; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch7006_tv_norm_info = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.ch7006_priv = type { i64, %struct.TYPE_2__, %struct.ch7006_mode*, %struct.ch7006_state, %struct.ch7006_encoder_params }
%struct.TYPE_2__ = type { i32* }
%struct.ch7006_mode = type { i32 }
%struct.ch7006_state = type { i32* }
%struct.ch7006_encoder_params = type { i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@ch7006_tv_norms = common dso_local global %struct.ch7006_tv_norm_info* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CH7006_DISPMODE = common dso_local global i64 0, align 8
@CH7006_BWIDTH = common dso_local global i64 0, align 8
@CH7006_INPUT_FORMAT_FORMAT = common dso_local global i32 0, align 4
@CH7006_INPUT_FORMAT = common dso_local global i64 0, align 8
@CH7006_CLKMODE_SUBC_LOCK = common dso_local global i32 0, align 4
@CH7006_CLKMODE_XCM = common dso_local global i32 0, align 4
@CH7006_CLKMODE_PCM = common dso_local global i32 0, align 4
@CH7006_CLKMODE = common dso_local global i64 0, align 8
@CH7006_CLKMODE_MASTER = common dso_local global i32 0, align 4
@CH7006_CLKMODE_POS_EDGE = common dso_local global i32 0, align 4
@CH7006_POV_START_ACTIVE_8 = common dso_local global i32 0, align 4
@CH7006_POV = common dso_local global i64 0, align 8
@CH7006_START_ACTIVE_0 = common dso_local global i32 0, align 4
@CH7006_START_ACTIVE = common dso_local global i64 0, align 8
@CH7006_INPUT_SYNC = common dso_local global i64 0, align 8
@CH7006_INPUT_SYNC_OUTPUT = common dso_local global i32 0, align 4
@CH7006_INPUT_SYNC_EMBEDDED = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@CH7006_INPUT_SYNC_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@CH7006_INPUT_SYNC_PHSYNC = common dso_local global i32 0, align 4
@CH7006_DETECT = common dso_local global i64 0, align 8
@CH7006_BCLKOUT = common dso_local global i64 0, align 8
@CH7006_SUBC_INC3 = common dso_local global i64 0, align 8
@CH7006_SUBC_INC3_POUT_3_3V = common dso_local global i32 0, align 4
@CH7006_SUBC_INC4 = common dso_local global i64 0, align 8
@CH7006_SUBC_INC4_DS_INPUT = common dso_local global i32 0, align 4
@CH7006_PLL_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @ch7006_encoder_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch7006_encoder_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.ch7006_priv*, align 8
  %9 = alloca %struct.ch7006_encoder_params*, align 8
  %10 = alloca %struct.ch7006_state*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ch7006_mode*, align 8
  %13 = alloca %struct.ch7006_tv_norm_info*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %16 = call %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %7, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %17)
  store %struct.ch7006_priv* %18, %struct.ch7006_priv** %8, align 8
  %19 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %20 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %19, i32 0, i32 4
  store %struct.ch7006_encoder_params* %20, %struct.ch7006_encoder_params** %9, align 8
  %21 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %22 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %21, i32 0, i32 3
  store %struct.ch7006_state* %22, %struct.ch7006_state** %10, align 8
  %23 = load %struct.ch7006_state*, %struct.ch7006_state** %10, align 8
  %24 = getelementptr inbounds %struct.ch7006_state, %struct.ch7006_state* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %27 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %26, i32 0, i32 2
  %28 = load %struct.ch7006_mode*, %struct.ch7006_mode** %27, align 8
  store %struct.ch7006_mode* %28, %struct.ch7006_mode** %12, align 8
  %29 = load %struct.ch7006_tv_norm_info*, %struct.ch7006_tv_norm_info** @ch7006_tv_norms, align 8
  %30 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %31 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.ch7006_tv_norm_info, %struct.ch7006_tv_norm_info* %29, i64 %32
  store %struct.ch7006_tv_norm_info* %33, %struct.ch7006_tv_norm_info** %13, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %35 = call i32 @ch7006_dbg(%struct.i2c_client* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ch7006_tv_norm_info*, %struct.ch7006_tv_norm_info** %13, align 8
  %37 = getelementptr inbounds %struct.ch7006_tv_norm_info, %struct.ch7006_tv_norm_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ch7006_mode*, %struct.ch7006_mode** %12, align 8
  %40 = getelementptr inbounds %struct.ch7006_mode, %struct.ch7006_mode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %38, %41
  %43 = load i32*, i32** %11, align 8
  %44 = load i64, i64* @CH7006_DISPMODE, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i64, i64* @CH7006_BWIDTH, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* @CH7006_INPUT_FORMAT_FORMAT, align 4
  %50 = load %struct.ch7006_encoder_params*, %struct.ch7006_encoder_params** %9, align 8
  %51 = getelementptr inbounds %struct.ch7006_encoder_params, %struct.ch7006_encoder_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @bitf(i32 %49, i32 %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* @CH7006_INPUT_FORMAT, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @CH7006_CLKMODE_SUBC_LOCK, align 4
  %58 = load i32, i32* @CH7006_CLKMODE_XCM, align 4
  %59 = load %struct.ch7006_encoder_params*, %struct.ch7006_encoder_params** %9, align 8
  %60 = getelementptr inbounds %struct.ch7006_encoder_params, %struct.ch7006_encoder_params* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bitf(i32 %58, i32 %61)
  %63 = or i32 %57, %62
  %64 = load i32, i32* @CH7006_CLKMODE_PCM, align 4
  %65 = load %struct.ch7006_encoder_params*, %struct.ch7006_encoder_params** %9, align 8
  %66 = getelementptr inbounds %struct.ch7006_encoder_params, %struct.ch7006_encoder_params* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @bitf(i32 %64, i32 %67)
  %69 = or i32 %63, %68
  %70 = load i32*, i32** %11, align 8
  %71 = load i64, i64* @CH7006_CLKMODE, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load %struct.ch7006_encoder_params*, %struct.ch7006_encoder_params** %9, align 8
  %74 = getelementptr inbounds %struct.ch7006_encoder_params, %struct.ch7006_encoder_params* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %3
  %78 = load i32, i32* @CH7006_CLKMODE_MASTER, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i64, i64* @CH7006_CLKMODE, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %77, %3
  %85 = load %struct.ch7006_encoder_params*, %struct.ch7006_encoder_params** %9, align 8
  %86 = getelementptr inbounds %struct.ch7006_encoder_params, %struct.ch7006_encoder_params* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* @CH7006_CLKMODE_POS_EDGE, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = load i64, i64* @CH7006_CLKMODE, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %89, %84
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, -8
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, -8
  %105 = sub nsw i32 %100, %104
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* @CH7006_POV_START_ACTIVE_8, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @bitf(i32 %106, i32 %107)
  %109 = load i32*, i32** %11, align 8
  %110 = load i64, i64* @CH7006_POV, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @CH7006_START_ACTIVE_0, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @bitf(i32 %112, i32 %113)
  %115 = load i32*, i32** %11, align 8
  %116 = load i64, i64* @CH7006_START_ACTIVE, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %114, i32* %117, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = load i64, i64* @CH7006_INPUT_SYNC, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 0, i32* %120, align 4
  %121 = load %struct.ch7006_encoder_params*, %struct.ch7006_encoder_params** %9, align 8
  %122 = getelementptr inbounds %struct.ch7006_encoder_params, %struct.ch7006_encoder_params* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %96
  %126 = load i32, i32* @CH7006_INPUT_SYNC_OUTPUT, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = load i64, i64* @CH7006_INPUT_SYNC, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %126
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %125, %96
  %133 = load %struct.ch7006_encoder_params*, %struct.ch7006_encoder_params** %9, align 8
  %134 = getelementptr inbounds %struct.ch7006_encoder_params, %struct.ch7006_encoder_params* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i32, i32* @CH7006_INPUT_SYNC_EMBEDDED, align 4
  %139 = load i32*, i32** %11, align 8
  %140 = load i64, i64* @CH7006_INPUT_SYNC, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %138
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %137, %132
  %145 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %146 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load i32, i32* @CH7006_INPUT_SYNC_PVSYNC, align 4
  %153 = load i32*, i32** %11, align 8
  %154 = load i64, i64* @CH7006_INPUT_SYNC, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %152
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %151, %144
  %159 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %160 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = load i32, i32* @CH7006_INPUT_SYNC_PHSYNC, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = load i64, i64* @CH7006_INPUT_SYNC, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %166
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %165, %158
  %173 = load i32*, i32** %11, align 8
  %174 = load i64, i64* @CH7006_DETECT, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32 0, i32* %175, align 4
  %176 = load i32*, i32** %11, align 8
  %177 = load i64, i64* @CH7006_BCLKOUT, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32 0, i32* %178, align 4
  %179 = load i32*, i32** %11, align 8
  %180 = load i64, i64* @CH7006_SUBC_INC3, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32 0, i32* %181, align 4
  %182 = load %struct.ch7006_encoder_params*, %struct.ch7006_encoder_params** %9, align 8
  %183 = getelementptr inbounds %struct.ch7006_encoder_params, %struct.ch7006_encoder_params* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %172
  %187 = load i32, i32* @CH7006_SUBC_INC3_POUT_3_3V, align 4
  %188 = load i32*, i32** %11, align 8
  %189 = load i64, i64* @CH7006_SUBC_INC3, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %187
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %186, %172
  %194 = load i32*, i32** %11, align 8
  %195 = load i64, i64* @CH7006_SUBC_INC4, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32 0, i32* %196, align 4
  %197 = load %struct.ch7006_encoder_params*, %struct.ch7006_encoder_params** %9, align 8
  %198 = getelementptr inbounds %struct.ch7006_encoder_params, %struct.ch7006_encoder_params* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %193
  %202 = load i32, i32* @CH7006_SUBC_INC4_DS_INPUT, align 4
  %203 = load i32*, i32** %11, align 8
  %204 = load i64, i64* @CH7006_SUBC_INC4, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %202
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %201, %193
  %209 = load %struct.ch7006_priv*, %struct.ch7006_priv** %8, align 8
  %210 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i64, i64* @CH7006_PLL_CONTROL, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %11, align 8
  %217 = load i64, i64* @CH7006_PLL_CONTROL, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32 %215, i32* %218, align 4
  %219 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %220 = call i32 @ch7006_setup_levels(%struct.drm_encoder* %219)
  %221 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %222 = call i32 @ch7006_setup_subcarrier(%struct.drm_encoder* %221)
  %223 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %224 = call i32 @ch7006_setup_pll(%struct.drm_encoder* %223)
  %225 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %226 = call i32 @ch7006_setup_power_state(%struct.drm_encoder* %225)
  %227 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %228 = call i32 @ch7006_setup_properties(%struct.drm_encoder* %227)
  %229 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %230 = load %struct.ch7006_state*, %struct.ch7006_state** %10, align 8
  %231 = call i32 @ch7006_state_load(%struct.i2c_client* %229, %struct.ch7006_state* %230)
  ret void
}

declare dso_local %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder*) #1

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_dbg(%struct.i2c_client*, i8*) #1

declare dso_local i32 @bitf(i32, i32) #1

declare dso_local i32 @ch7006_setup_levels(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_setup_subcarrier(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_setup_pll(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_setup_power_state(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_setup_properties(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_state_load(%struct.i2c_client*, %struct.ch7006_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
