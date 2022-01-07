; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_dpm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_dpm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.evergreen_power_info = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cypress_construct_voltage_tables failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cypress_get_mvdd_configuration failed\0A\00", align 1
@ATOM_PP_PLATFORM_CAP_BACKBIAS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"rv770_upload_firmware failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cypress_get_table_locations failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"cypress_populate_mc_reg_table failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"cypress_notify_smc_display_change failed\0A\00", align 1
@RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_dpm_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %10)
  store %struct.evergreen_power_info* %11, %struct.evergreen_power_info** %5, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %15, align 8
  store %struct.radeon_ps* %16, %struct.radeon_ps** %6, align 8
  %17 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %18 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = call i32 @btc_cg_clock_gating_default(%struct.radeon_device* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = call i64 @btc_dpm_enabled(%struct.radeon_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %243

31:                                               ; preds = %24
  %32 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %33 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @btc_mg_clock_gating_default(%struct.radeon_device* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %41 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = call i32 @btc_ls_clock_gating_default(%struct.radeon_device* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %49 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = call i32 @rv770_enable_voltage_control(%struct.radeon_device* %53, i32 1)
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = call i32 @cypress_construct_voltage_tables(%struct.radeon_device* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %243

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %47
  %64 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %65 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = call i32 @cypress_get_mvdd_configuration(%struct.radeon_device* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %243

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %63
  %78 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %79 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = call i32 @btc_initialize_mc_reg_table(%struct.radeon_device* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %89 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %77
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ATOM_PP_PLATFORM_CAP_BACKBIAS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = call i32 @rv770_enable_backbias(%struct.radeon_device* %101, i32 1)
  br label %103

103:                                              ; preds = %100, %91
  %104 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %105 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = call i32 @cypress_enable_spread_spectrum(%struct.radeon_device* %109, i32 1)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %113 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = call i32 @rv770_enable_thermal_protection(%struct.radeon_device* %117, i32 1)
  br label %119

119:                                              ; preds = %116, %111
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = call i32 @rv770_setup_bsp(%struct.radeon_device* %120)
  %122 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %123 = call i32 @rv770_program_git(%struct.radeon_device* %122)
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = call i32 @rv770_program_tp(%struct.radeon_device* %124)
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = call i32 @rv770_program_tpp(%struct.radeon_device* %126)
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = call i32 @rv770_program_sstp(%struct.radeon_device* %128)
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = call i32 @rv770_program_engine_speed_parameters(%struct.radeon_device* %130)
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = call i32 @cypress_enable_display_gap(%struct.radeon_device* %132)
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = call i32 @rv770_program_vc(%struct.radeon_device* %134)
  %136 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %137 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %119
  %141 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %142 = call i32 @btc_enable_dynamic_pcie_gen2(%struct.radeon_device* %141, i32 1)
  br label %143

143:                                              ; preds = %140, %119
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = call i32 @rv770_upload_firmware(%struct.radeon_device* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %2, align 4
  br label %243

151:                                              ; preds = %143
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = call i32 @cypress_get_table_locations(%struct.radeon_device* %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %243

159:                                              ; preds = %151
  %160 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %161 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %162 = call i32 @btc_init_smc_table(%struct.radeon_device* %160, %struct.radeon_ps* %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %2, align 4
  br label %243

167:                                              ; preds = %159
  %168 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %169 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %167
  %173 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %174 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %175 = call i32 @cypress_populate_mc_reg_table(%struct.radeon_device* %173, %struct.radeon_ps* %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %180 = load i32, i32* %7, align 4
  store i32 %180, i32* %2, align 4
  br label %243

181:                                              ; preds = %172
  br label %182

182:                                              ; preds = %181, %167
  %183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %184 = call i32 @cypress_program_response_times(%struct.radeon_device* %183)
  %185 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %186 = call i32 @r7xx_start_smc(%struct.radeon_device* %185)
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = call i32 @cypress_notify_smc_display_change(%struct.radeon_device* %187, i32 0)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %182
  %192 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %2, align 4
  br label %243

194:                                              ; preds = %182
  %195 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %196 = call i32 @cypress_enable_sclk_control(%struct.radeon_device* %195, i32 1)
  %197 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %198 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %194
  %202 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %203 = call i32 @cypress_enable_mclk_control(%struct.radeon_device* %202, i32 1)
  br label %204

204:                                              ; preds = %201, %194
  %205 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %206 = call i32 @cypress_start_dpm(%struct.radeon_device* %205)
  %207 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %208 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %213 = call i32 @btc_cg_clock_gating_enable(%struct.radeon_device* %212, i32 1)
  br label %214

214:                                              ; preds = %211, %204
  %215 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %216 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %221 = call i32 @btc_mg_clock_gating_enable(%struct.radeon_device* %220, i32 1)
  br label %222

222:                                              ; preds = %219, %214
  %223 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %224 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %229 = call i32 @btc_ls_clock_gating_enable(%struct.radeon_device* %228, i32 1)
  br label %230

230:                                              ; preds = %227, %222
  %231 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %232 = load i32, i32* @RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, align 4
  %233 = call i32 @rv770_enable_auto_throttle_source(%struct.radeon_device* %231, i32 %232, i32 1)
  %234 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %235 = call i32 @btc_init_stutter_mode(%struct.radeon_device* %234)
  %236 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %237 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %238 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 1
  %241 = load %struct.radeon_ps*, %struct.radeon_ps** %240, align 8
  %242 = call i32 @btc_update_current_ps(%struct.radeon_device* %236, %struct.radeon_ps* %241)
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %230, %191, %178, %165, %156, %148, %73, %59, %28
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @btc_cg_clock_gating_default(%struct.radeon_device*) #1

declare dso_local i64 @btc_dpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @btc_mg_clock_gating_default(%struct.radeon_device*) #1

declare dso_local i32 @btc_ls_clock_gating_default(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_voltage_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_construct_voltage_tables(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @cypress_get_mvdd_configuration(%struct.radeon_device*) #1

declare dso_local i32 @btc_initialize_mc_reg_table(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_backbias(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_enable_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_setup_bsp(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_git(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_tp(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_tpp(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_sstp(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_engine_speed_parameters(%struct.radeon_device*) #1

declare dso_local i32 @cypress_enable_display_gap(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_vc(%struct.radeon_device*) #1

declare dso_local i32 @btc_enable_dynamic_pcie_gen2(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_upload_firmware(%struct.radeon_device*) #1

declare dso_local i32 @cypress_get_table_locations(%struct.radeon_device*) #1

declare dso_local i32 @btc_init_smc_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @cypress_populate_mc_reg_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @cypress_program_response_times(%struct.radeon_device*) #1

declare dso_local i32 @r7xx_start_smc(%struct.radeon_device*) #1

declare dso_local i32 @cypress_notify_smc_display_change(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_enable_sclk_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_enable_mclk_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_start_dpm(%struct.radeon_device*) #1

declare dso_local i32 @btc_cg_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @btc_mg_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @btc_ls_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_enable_auto_throttle_source(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @btc_init_stutter_mode(%struct.radeon_device*) #1

declare dso_local i32 @btc_update_current_ps(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
