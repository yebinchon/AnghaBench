; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_dpm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_dpm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.evergreen_power_info = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cypress_construct_voltage_tables failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cypress_get_mvdd_configuration failed\0A\00", align 1
@ATOM_PP_PLATFORM_CAP_BACKBIAS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"rv770_upload_firmware failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cypress_get_table_locations failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"cypress_init_smc_table failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"cypress_populate_mc_reg_table failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"cypress_notify_smc_display_change failed\0A\00", align 1
@RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_dpm_enable(%struct.radeon_device* %0) #0 {
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
  %23 = call i32 @rv770_restore_cgcg(%struct.radeon_device* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = call i64 @rv770_dpm_enabled(%struct.radeon_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %219

31:                                               ; preds = %24
  %32 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %33 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @rv770_enable_voltage_control(%struct.radeon_device* %37, i32 1)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = call i32 @cypress_construct_voltage_tables(%struct.radeon_device* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %219

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %49 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = call i32 @cypress_get_mvdd_configuration(%struct.radeon_device* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %219

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %47
  %62 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %63 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = call i32 @cypress_set_mc_reg_address_table(%struct.radeon_device* %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %71 = call i32 @cypress_force_mc_use_s0(%struct.radeon_device* %69, %struct.radeon_ps* %70)
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = call i32 @cypress_initialize_mc_reg_table(%struct.radeon_device* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %78 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %66
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %82 = call i32 @cypress_force_mc_use_s1(%struct.radeon_device* %80, %struct.radeon_ps* %81)
  br label %83

83:                                               ; preds = %79, %61
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ATOM_PP_PLATFORM_CAP_BACKBIAS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = call i32 @rv770_enable_backbias(%struct.radeon_device* %93, i32 1)
  br label %95

95:                                               ; preds = %92, %83
  %96 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %97 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = call i32 @cypress_enable_spread_spectrum(%struct.radeon_device* %101, i32 1)
  br label %103

103:                                              ; preds = %100, %95
  %104 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %105 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = call i32 @rv770_enable_thermal_protection(%struct.radeon_device* %109, i32 1)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = call i32 @rv770_setup_bsp(%struct.radeon_device* %112)
  %114 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %115 = call i32 @rv770_program_git(%struct.radeon_device* %114)
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = call i32 @rv770_program_tp(%struct.radeon_device* %116)
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = call i32 @rv770_program_tpp(%struct.radeon_device* %118)
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = call i32 @rv770_program_sstp(%struct.radeon_device* %120)
  %122 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %123 = call i32 @rv770_program_engine_speed_parameters(%struct.radeon_device* %122)
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = call i32 @cypress_enable_display_gap(%struct.radeon_device* %124)
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = call i32 @rv770_program_vc(%struct.radeon_device* %126)
  %128 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %129 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %111
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = call i32 @cypress_enable_dynamic_pcie_gen2(%struct.radeon_device* %133, i32 1)
  br label %135

135:                                              ; preds = %132, %111
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = call i32 @rv770_upload_firmware(%struct.radeon_device* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %2, align 4
  br label %219

143:                                              ; preds = %135
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = call i32 @cypress_get_table_locations(%struct.radeon_device* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %2, align 4
  br label %219

151:                                              ; preds = %143
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %154 = call i32 @cypress_init_smc_table(%struct.radeon_device* %152, %struct.radeon_ps* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %2, align 4
  br label %219

160:                                              ; preds = %151
  %161 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %162 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %160
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %168 = call i32 @cypress_populate_mc_reg_table(%struct.radeon_device* %166, %struct.radeon_ps* %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %2, align 4
  br label %219

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174, %160
  %176 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %177 = call i32 @cypress_program_response_times(%struct.radeon_device* %176)
  %178 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %179 = call i32 @r7xx_start_smc(%struct.radeon_device* %178)
  %180 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %181 = call i32 @cypress_notify_smc_display_change(%struct.radeon_device* %180, i32 0)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %175
  %185 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %186 = load i32, i32* %7, align 4
  store i32 %186, i32* %2, align 4
  br label %219

187:                                              ; preds = %175
  %188 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %189 = call i32 @cypress_enable_sclk_control(%struct.radeon_device* %188, i32 1)
  %190 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %191 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %187
  %195 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %196 = call i32 @cypress_enable_mclk_control(%struct.radeon_device* %195, i32 1)
  br label %197

197:                                              ; preds = %194, %187
  %198 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %199 = call i32 @cypress_start_dpm(%struct.radeon_device* %198)
  %200 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %201 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %197
  %205 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %206 = call i32 @cypress_gfx_clock_gating_enable(%struct.radeon_device* %205, i32 1)
  br label %207

207:                                              ; preds = %204, %197
  %208 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %209 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %214 = call i32 @cypress_mg_clock_gating_enable(%struct.radeon_device* %213, i32 1)
  br label %215

215:                                              ; preds = %212, %207
  %216 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %217 = load i32, i32* @RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, align 4
  %218 = call i32 @rv770_enable_auto_throttle_source(%struct.radeon_device* %216, i32 %217, i32 1)
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %215, %184, %171, %157, %148, %140, %57, %43, %28
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_restore_cgcg(%struct.radeon_device*) #1

declare dso_local i64 @rv770_dpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_voltage_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_construct_voltage_tables(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @cypress_get_mvdd_configuration(%struct.radeon_device*) #1

declare dso_local i32 @cypress_set_mc_reg_address_table(%struct.radeon_device*) #1

declare dso_local i32 @cypress_force_mc_use_s0(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @cypress_initialize_mc_reg_table(%struct.radeon_device*) #1

declare dso_local i32 @cypress_force_mc_use_s1(%struct.radeon_device*, %struct.radeon_ps*) #1

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

declare dso_local i32 @cypress_enable_dynamic_pcie_gen2(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_upload_firmware(%struct.radeon_device*) #1

declare dso_local i32 @cypress_get_table_locations(%struct.radeon_device*) #1

declare dso_local i32 @cypress_init_smc_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @cypress_populate_mc_reg_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @cypress_program_response_times(%struct.radeon_device*) #1

declare dso_local i32 @r7xx_start_smc(%struct.radeon_device*) #1

declare dso_local i32 @cypress_notify_smc_display_change(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_enable_sclk_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_enable_mclk_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_start_dpm(%struct.radeon_device*) #1

declare dso_local i32 @cypress_gfx_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_mg_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_enable_auto_throttle_source(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
