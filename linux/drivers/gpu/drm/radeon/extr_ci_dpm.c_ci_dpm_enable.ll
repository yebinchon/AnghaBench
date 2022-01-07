; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_dpm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_dpm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.ci_power_info = type { i64, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CISLANDS_VOLTAGE_CONTROL_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"ci_construct_voltage_tables failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ci_upload_firmware failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ci_process_firmware_header failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"ci_initial_switch_from_arb_f0_to_f1 failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ci_init_smc_table failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"ci_init_arb_table_index failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"ci_populate_initial_mc_reg_table failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"ci_populate_pm_base failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"ci_notify_smc_display_change failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"ci_enable_ulv failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"ci_enable_ds_master_switch failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"ci_start_dpm failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"ci_enable_didt failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"ci_enable_smc_cac failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"ci_enable_power_containment failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"ci_power_control_set_level failed\0A\00", align 1
@RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [41 x i8] c"ci_enable_thermal_based_sclk_dpm failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ci_dpm_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %7)
  store %struct.ci_power_info* %8, %struct.ci_power_info** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %12, align 8
  store %struct.radeon_ps* %13, %struct.radeon_ps** %5, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call i64 @ci_is_smc_running(%struct.radeon_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %222

20:                                               ; preds = %1
  %21 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %22 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CISLANDS_VOLTAGE_CONTROL_NONE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = call i32 @ci_enable_voltage_control(%struct.radeon_device* %27)
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @ci_construct_voltage_tables(%struct.radeon_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %222

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %39 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = call i32 @ci_initialize_mc_reg_table(%struct.radeon_device* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %49 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %53 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = call i32 @ci_enable_spread_spectrum(%struct.radeon_device* %57, i32 1)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %61 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = call i32 @ci_enable_thermal_protection(%struct.radeon_device* %65, i32 1)
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = call i32 @ci_program_sstp(%struct.radeon_device* %68)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = call i32 @ci_enable_display_gap(%struct.radeon_device* %70)
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = call i32 @ci_program_vc(%struct.radeon_device* %72)
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = call i32 @ci_upload_firmware(%struct.radeon_device* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %222

81:                                               ; preds = %67
  %82 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %83 = call i32 @ci_process_firmware_header(%struct.radeon_device* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %222

89:                                               ; preds = %81
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = call i32 @ci_initial_switch_from_arb_f0_to_f1(%struct.radeon_device* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %222

97:                                               ; preds = %89
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = call i32 @ci_init_smc_table(%struct.radeon_device* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %222

105:                                              ; preds = %97
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = call i32 @ci_init_arb_table_index(%struct.radeon_device* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %222

113:                                              ; preds = %105
  %114 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %115 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = call i32 @ci_populate_initial_mc_reg_table(%struct.radeon_device* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %222

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %113
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = call i32 @ci_populate_pm_base(%struct.radeon_device* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %2, align 4
  br label %222

135:                                              ; preds = %127
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = call i32 @ci_dpm_start_smc(%struct.radeon_device* %136)
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = call i32 @ci_enable_vr_hot_gpio_interrupt(%struct.radeon_device* %138)
  %140 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %141 = call i32 @ci_notify_smc_display_change(%struct.radeon_device* %140, i32 0)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %135
  %145 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %2, align 4
  br label %222

147:                                              ; preds = %135
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = call i32 @ci_enable_sclk_control(%struct.radeon_device* %148, i32 1)
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = call i32 @ci_enable_ulv(%struct.radeon_device* %150, i32 1)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %222

157:                                              ; preds = %147
  %158 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %159 = call i32 @ci_enable_ds_master_switch(%struct.radeon_device* %158, i32 1)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %2, align 4
  br label %222

165:                                              ; preds = %157
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = call i32 @ci_start_dpm(%struct.radeon_device* %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %2, align 4
  br label %222

173:                                              ; preds = %165
  %174 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %175 = call i32 @ci_enable_didt(%struct.radeon_device* %174, i32 1)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %2, align 4
  br label %222

181:                                              ; preds = %173
  %182 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %183 = call i32 @ci_enable_smc_cac(%struct.radeon_device* %182, i32 1)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %2, align 4
  br label %222

189:                                              ; preds = %181
  %190 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %191 = call i32 @ci_enable_power_containment(%struct.radeon_device* %190, i32 1)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %196 = load i32, i32* %6, align 4
  store i32 %196, i32* %2, align 4
  br label %222

197:                                              ; preds = %189
  %198 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %199 = call i32 @ci_power_control_set_level(%struct.radeon_device* %198)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  %204 = load i32, i32* %6, align 4
  store i32 %204, i32* %2, align 4
  br label %222

205:                                              ; preds = %197
  %206 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %207 = load i32, i32* @RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, align 4
  %208 = call i32 @ci_enable_auto_throttle_source(%struct.radeon_device* %206, i32 %207, i32 1)
  %209 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %210 = call i32 @ci_enable_thermal_based_sclk_dpm(%struct.radeon_device* %209, i32 1)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  %215 = load i32, i32* %6, align 4
  store i32 %215, i32* %2, align 4
  br label %222

216:                                              ; preds = %205
  %217 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %218 = call i32 @ci_thermal_start_thermal_controller(%struct.radeon_device* %217)
  %219 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %220 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %221 = call i32 @ci_update_current_ps(%struct.radeon_device* %219, %struct.radeon_ps* %220)
  store i32 0, i32* %2, align 4
  br label %222

222:                                              ; preds = %216, %213, %202, %194, %186, %178, %170, %162, %154, %144, %132, %123, %110, %102, %94, %86, %78, %33, %17
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @ci_is_smc_running(%struct.radeon_device*) #1

declare dso_local i32 @ci_enable_voltage_control(%struct.radeon_device*) #1

declare dso_local i32 @ci_construct_voltage_tables(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @ci_initialize_mc_reg_table(%struct.radeon_device*) #1

declare dso_local i32 @ci_enable_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_program_sstp(%struct.radeon_device*) #1

declare dso_local i32 @ci_enable_display_gap(%struct.radeon_device*) #1

declare dso_local i32 @ci_program_vc(%struct.radeon_device*) #1

declare dso_local i32 @ci_upload_firmware(%struct.radeon_device*) #1

declare dso_local i32 @ci_process_firmware_header(%struct.radeon_device*) #1

declare dso_local i32 @ci_initial_switch_from_arb_f0_to_f1(%struct.radeon_device*) #1

declare dso_local i32 @ci_init_smc_table(%struct.radeon_device*) #1

declare dso_local i32 @ci_init_arb_table_index(%struct.radeon_device*) #1

declare dso_local i32 @ci_populate_initial_mc_reg_table(%struct.radeon_device*) #1

declare dso_local i32 @ci_populate_pm_base(%struct.radeon_device*) #1

declare dso_local i32 @ci_dpm_start_smc(%struct.radeon_device*) #1

declare dso_local i32 @ci_enable_vr_hot_gpio_interrupt(%struct.radeon_device*) #1

declare dso_local i32 @ci_notify_smc_display_change(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_enable_sclk_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_enable_ulv(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_enable_ds_master_switch(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_start_dpm(%struct.radeon_device*) #1

declare dso_local i32 @ci_enable_didt(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_enable_smc_cac(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_enable_power_containment(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_power_control_set_level(%struct.radeon_device*) #1

declare dso_local i32 @ci_enable_auto_throttle_source(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @ci_enable_thermal_based_sclk_dpm(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_thermal_start_thermal_controller(%struct.radeon_device*) #1

declare dso_local i32 @ci_update_current_ps(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
