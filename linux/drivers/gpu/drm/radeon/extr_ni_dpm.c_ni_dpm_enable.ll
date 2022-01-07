; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_dpm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_dpm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i64, i64, i64, i64, i64, i64 }
%struct.evergreen_power_info = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cypress_construct_voltage_tables failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"rv770_upload_firmware failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ni_process_firmware_header failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"ni_initial_switch_from_arb_f0_to_f1 failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ni_init_smc_table failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"ni_init_smc_spll_table failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"ni_init_arb_table_index failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"ni_populate_mc_reg_table failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"ni_initialize_smc_cac_tables failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"ni_initialize_hardware_cac_manager failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"ni_populate_smc_tdp_limits failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"cypress_notify_smc_display_change failed\0A\00", align 1
@RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_dpm_enable(%struct.radeon_device* %0) #0 {
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
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %15, align 8
  store %struct.radeon_ps* %16, %struct.radeon_ps** %6, align 8
  %17 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %18 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = call i32 @ni_cg_clockgating_default(%struct.radeon_device* %22)
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
  br label %258

31:                                               ; preds = %24
  %32 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %33 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @ni_mg_clockgating_default(%struct.radeon_device* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %41 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = call i32 @ni_ls_clockgating_default(%struct.radeon_device* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %49 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %48, i32 0, i32 5
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
  br label %258

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %47
  %64 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %65 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = call i32 @ni_initialize_mc_reg_table(%struct.radeon_device* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %75 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76, %63
  %78 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %79 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = call i32 @cypress_enable_spread_spectrum(%struct.radeon_device* %83, i32 1)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %87 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = call i32 @rv770_enable_thermal_protection(%struct.radeon_device* %91, i32 1)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = call i32 @rv770_setup_bsp(%struct.radeon_device* %94)
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = call i32 @rv770_program_git(%struct.radeon_device* %96)
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = call i32 @rv770_program_tp(%struct.radeon_device* %98)
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = call i32 @rv770_program_tpp(%struct.radeon_device* %100)
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = call i32 @rv770_program_sstp(%struct.radeon_device* %102)
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = call i32 @cypress_enable_display_gap(%struct.radeon_device* %104)
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = call i32 @rv770_program_vc(%struct.radeon_device* %106)
  %108 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %109 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %93
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = call i32 @ni_enable_dynamic_pcie_gen2(%struct.radeon_device* %113, i32 1)
  br label %115

115:                                              ; preds = %112, %93
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = call i32 @rv770_upload_firmware(%struct.radeon_device* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %2, align 4
  br label %258

123:                                              ; preds = %115
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = call i32 @ni_process_firmware_header(%struct.radeon_device* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %258

131:                                              ; preds = %123
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = call i32 @ni_initial_switch_from_arb_f0_to_f1(%struct.radeon_device* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %2, align 4
  br label %258

139:                                              ; preds = %131
  %140 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %141 = call i32 @ni_init_smc_table(%struct.radeon_device* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %258

147:                                              ; preds = %139
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = call i32 @ni_init_smc_spll_table(%struct.radeon_device* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %2, align 4
  br label %258

155:                                              ; preds = %147
  %156 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %157 = call i32 @ni_init_arb_table_index(%struct.radeon_device* %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %2, align 4
  br label %258

163:                                              ; preds = %155
  %164 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %165 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %170 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %171 = call i32 @ni_populate_mc_reg_table(%struct.radeon_device* %169, %struct.radeon_ps* %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %176 = load i32, i32* %7, align 4
  store i32 %176, i32* %2, align 4
  br label %258

177:                                              ; preds = %168
  br label %178

178:                                              ; preds = %177, %163
  %179 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %180 = call i32 @ni_initialize_smc_cac_tables(%struct.radeon_device* %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %185 = load i32, i32* %7, align 4
  store i32 %185, i32* %2, align 4
  br label %258

186:                                              ; preds = %178
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = call i32 @ni_initialize_hardware_cac_manager(%struct.radeon_device* %187)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %2, align 4
  br label %258

194:                                              ; preds = %186
  %195 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %196 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %197 = call i32 @ni_populate_smc_tdp_limits(%struct.radeon_device* %195, %struct.radeon_ps* %196)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* %2, align 4
  br label %258

203:                                              ; preds = %194
  %204 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %205 = call i32 @ni_program_response_times(%struct.radeon_device* %204)
  %206 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %207 = call i32 @r7xx_start_smc(%struct.radeon_device* %206)
  %208 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %209 = call i32 @cypress_notify_smc_display_change(%struct.radeon_device* %208, i32 0)
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %203
  %213 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %214 = load i32, i32* %7, align 4
  store i32 %214, i32* %2, align 4
  br label %258

215:                                              ; preds = %203
  %216 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %217 = call i32 @cypress_enable_sclk_control(%struct.radeon_device* %216, i32 1)
  %218 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %219 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %215
  %223 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %224 = call i32 @cypress_enable_mclk_control(%struct.radeon_device* %223, i32 1)
  br label %225

225:                                              ; preds = %222, %215
  %226 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %227 = call i32 @cypress_start_dpm(%struct.radeon_device* %226)
  %228 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %229 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %234 = call i32 @ni_gfx_clockgating_enable(%struct.radeon_device* %233, i32 1)
  br label %235

235:                                              ; preds = %232, %225
  %236 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %237 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %242 = call i32 @ni_mg_clockgating_enable(%struct.radeon_device* %241, i32 1)
  br label %243

243:                                              ; preds = %240, %235
  %244 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %245 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %250 = call i32 @ni_ls_clockgating_enable(%struct.radeon_device* %249, i32 1)
  br label %251

251:                                              ; preds = %248, %243
  %252 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %253 = load i32, i32* @RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, align 4
  %254 = call i32 @rv770_enable_auto_throttle_source(%struct.radeon_device* %252, i32 %253, i32 1)
  %255 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %256 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %257 = call i32 @ni_update_current_ps(%struct.radeon_device* %255, %struct.radeon_ps* %256)
  store i32 0, i32* %2, align 4
  br label %258

258:                                              ; preds = %251, %212, %200, %191, %183, %174, %160, %152, %144, %136, %128, %120, %59, %28
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ni_cg_clockgating_default(%struct.radeon_device*) #1

declare dso_local i64 @btc_dpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @ni_mg_clockgating_default(%struct.radeon_device*) #1

declare dso_local i32 @ni_ls_clockgating_default(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_voltage_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_construct_voltage_tables(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @ni_initialize_mc_reg_table(%struct.radeon_device*) #1

declare dso_local i32 @cypress_enable_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_setup_bsp(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_git(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_tp(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_tpp(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_sstp(%struct.radeon_device*) #1

declare dso_local i32 @cypress_enable_display_gap(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_vc(%struct.radeon_device*) #1

declare dso_local i32 @ni_enable_dynamic_pcie_gen2(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_upload_firmware(%struct.radeon_device*) #1

declare dso_local i32 @ni_process_firmware_header(%struct.radeon_device*) #1

declare dso_local i32 @ni_initial_switch_from_arb_f0_to_f1(%struct.radeon_device*) #1

declare dso_local i32 @ni_init_smc_table(%struct.radeon_device*) #1

declare dso_local i32 @ni_init_smc_spll_table(%struct.radeon_device*) #1

declare dso_local i32 @ni_init_arb_table_index(%struct.radeon_device*) #1

declare dso_local i32 @ni_populate_mc_reg_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @ni_initialize_smc_cac_tables(%struct.radeon_device*) #1

declare dso_local i32 @ni_initialize_hardware_cac_manager(%struct.radeon_device*) #1

declare dso_local i32 @ni_populate_smc_tdp_limits(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @ni_program_response_times(%struct.radeon_device*) #1

declare dso_local i32 @r7xx_start_smc(%struct.radeon_device*) #1

declare dso_local i32 @cypress_notify_smc_display_change(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_enable_sclk_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_enable_mclk_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_start_dpm(%struct.radeon_device*) #1

declare dso_local i32 @ni_gfx_clockgating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @ni_mg_clockgating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @ni_ls_clockgating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_enable_auto_throttle_source(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @ni_update_current_ps(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
