; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_dpm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_dpm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i64, i64, i64, i64 }
%struct.evergreen_power_info = type { i32 }
%struct.si_power_info = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"si_construct_voltage_tables failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"si_upload_firmware failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"si_process_firmware_header failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"si_initial_switch_from_arb_f0_to_f1 failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"si_init_smc_table failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"si_init_smc_spll_table failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"si_init_arb_table_index failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"si_populate_mc_reg_table failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"si_initialize_smc_cac_tables failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"si_initialize_hardware_cac_manager failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"si_initialize_smc_dte_tables failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"si_populate_smc_tdp_limits failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"si_populate_smc_tdp_limits_2 failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"si_notify_smc_display_change failed\0A\00", align 1
@RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_dpm_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  %6 = alloca %struct.si_power_info*, align 8
  %7 = alloca %struct.radeon_ps*, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %9)
  store %struct.rv7xx_power_info* %10, %struct.rv7xx_power_info** %4, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %11)
  store %struct.evergreen_power_info* %12, %struct.evergreen_power_info** %5, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %13)
  store %struct.si_power_info* %14, %struct.si_power_info** %6, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.radeon_ps*, %struct.radeon_ps** %18, align 8
  store %struct.radeon_ps* %19, %struct.radeon_ps** %7, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i64 @si_is_smc_running(%struct.radeon_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %242

26:                                               ; preds = %1
  %27 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %28 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %33 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @si_enable_voltage_control(%struct.radeon_device* %37, i32 1)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %41 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = call i32 @si_get_mvdd_configuration(%struct.radeon_device* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %49 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %54 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52, %47
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = call i32 @si_construct_voltage_tables(%struct.radeon_device* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %242

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %52
  %67 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %68 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = call i32 @si_initialize_mc_reg_table(%struct.radeon_device* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %78 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79, %66
  %81 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %82 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = call i32 @si_enable_spread_spectrum(%struct.radeon_device* %86, i32 1)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %90 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = call i32 @si_enable_thermal_protection(%struct.radeon_device* %94, i32 1)
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = call i32 @si_setup_bsp(%struct.radeon_device* %97)
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = call i32 @si_program_git(%struct.radeon_device* %99)
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = call i32 @si_program_tp(%struct.radeon_device* %101)
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = call i32 @si_program_tpp(%struct.radeon_device* %103)
  %105 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %106 = call i32 @si_program_sstp(%struct.radeon_device* %105)
  %107 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %108 = call i32 @si_enable_display_gap(%struct.radeon_device* %107)
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = call i32 @si_program_vc(%struct.radeon_device* %109)
  %111 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %112 = call i32 @si_upload_firmware(%struct.radeon_device* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %96
  %116 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %2, align 4
  br label %242

118:                                              ; preds = %96
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = call i32 @si_process_firmware_header(%struct.radeon_device* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %242

126:                                              ; preds = %118
  %127 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %128 = call i32 @si_initial_switch_from_arb_f0_to_f1(%struct.radeon_device* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %2, align 4
  br label %242

134:                                              ; preds = %126
  %135 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %136 = call i32 @si_init_smc_table(%struct.radeon_device* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %2, align 4
  br label %242

142:                                              ; preds = %134
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = call i32 @si_init_smc_spll_table(%struct.radeon_device* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %2, align 4
  br label %242

150:                                              ; preds = %142
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = call i32 @si_init_arb_table_index(%struct.radeon_device* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %2, align 4
  br label %242

158:                                              ; preds = %150
  %159 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %160 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %158
  %164 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %165 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %166 = call i32 @si_populate_mc_reg_table(%struct.radeon_device* %164, %struct.radeon_ps* %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %2, align 4
  br label %242

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172, %158
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = call i32 @si_initialize_smc_cac_tables(%struct.radeon_device* %174)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %2, align 4
  br label %242

181:                                              ; preds = %173
  %182 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %183 = call i32 @si_initialize_hardware_cac_manager(%struct.radeon_device* %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %2, align 4
  br label %242

189:                                              ; preds = %181
  %190 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %191 = call i32 @si_initialize_smc_dte_tables(%struct.radeon_device* %190)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %2, align 4
  br label %242

197:                                              ; preds = %189
  %198 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %199 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %200 = call i32 @si_populate_smc_tdp_limits(%struct.radeon_device* %198, %struct.radeon_ps* %199)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %2, align 4
  br label %242

206:                                              ; preds = %197
  %207 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %208 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %209 = call i32 @si_populate_smc_tdp_limits_2(%struct.radeon_device* %207, %struct.radeon_ps* %208)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %2, align 4
  br label %242

215:                                              ; preds = %206
  %216 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %217 = call i32 @si_program_response_times(%struct.radeon_device* %216)
  %218 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %219 = call i32 @si_program_ds_registers(%struct.radeon_device* %218)
  %220 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %221 = call i32 @si_dpm_start_smc(%struct.radeon_device* %220)
  %222 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %223 = call i32 @si_notify_smc_display_change(%struct.radeon_device* %222, i32 0)
  store i32 %223, i32* %8, align 4
  %224 = load i32, i32* %8, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %215
  %227 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %228 = load i32, i32* %8, align 4
  store i32 %228, i32* %2, align 4
  br label %242

229:                                              ; preds = %215
  %230 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %231 = call i32 @si_enable_sclk_control(%struct.radeon_device* %230, i32 1)
  %232 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %233 = call i32 @si_start_dpm(%struct.radeon_device* %232)
  %234 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %235 = load i32, i32* @RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, align 4
  %236 = call i32 @si_enable_auto_throttle_source(%struct.radeon_device* %234, i32 %235, i32 1)
  %237 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %238 = call i32 @si_thermal_start_thermal_controller(%struct.radeon_device* %237)
  %239 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %240 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %241 = call i32 @ni_update_current_ps(%struct.radeon_device* %239, %struct.radeon_ps* %240)
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %229, %226, %212, %203, %194, %186, %178, %169, %155, %147, %139, %131, %123, %115, %62, %23
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @si_is_smc_running(%struct.radeon_device*) #1

declare dso_local i32 @si_enable_voltage_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_get_mvdd_configuration(%struct.radeon_device*) #1

declare dso_local i32 @si_construct_voltage_tables(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @si_initialize_mc_reg_table(%struct.radeon_device*) #1

declare dso_local i32 @si_enable_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_setup_bsp(%struct.radeon_device*) #1

declare dso_local i32 @si_program_git(%struct.radeon_device*) #1

declare dso_local i32 @si_program_tp(%struct.radeon_device*) #1

declare dso_local i32 @si_program_tpp(%struct.radeon_device*) #1

declare dso_local i32 @si_program_sstp(%struct.radeon_device*) #1

declare dso_local i32 @si_enable_display_gap(%struct.radeon_device*) #1

declare dso_local i32 @si_program_vc(%struct.radeon_device*) #1

declare dso_local i32 @si_upload_firmware(%struct.radeon_device*) #1

declare dso_local i32 @si_process_firmware_header(%struct.radeon_device*) #1

declare dso_local i32 @si_initial_switch_from_arb_f0_to_f1(%struct.radeon_device*) #1

declare dso_local i32 @si_init_smc_table(%struct.radeon_device*) #1

declare dso_local i32 @si_init_smc_spll_table(%struct.radeon_device*) #1

declare dso_local i32 @si_init_arb_table_index(%struct.radeon_device*) #1

declare dso_local i32 @si_populate_mc_reg_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @si_initialize_smc_cac_tables(%struct.radeon_device*) #1

declare dso_local i32 @si_initialize_hardware_cac_manager(%struct.radeon_device*) #1

declare dso_local i32 @si_initialize_smc_dte_tables(%struct.radeon_device*) #1

declare dso_local i32 @si_populate_smc_tdp_limits(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @si_populate_smc_tdp_limits_2(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @si_program_response_times(%struct.radeon_device*) #1

declare dso_local i32 @si_program_ds_registers(%struct.radeon_device*) #1

declare dso_local i32 @si_dpm_start_smc(%struct.radeon_device*) #1

declare dso_local i32 @si_notify_smc_display_change(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_sclk_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_start_dpm(%struct.radeon_device*) #1

declare dso_local i32 @si_enable_auto_throttle_source(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @si_thermal_start_thermal_controller(%struct.radeon_device*) #1

declare dso_local i32 @ni_update_current_ps(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
