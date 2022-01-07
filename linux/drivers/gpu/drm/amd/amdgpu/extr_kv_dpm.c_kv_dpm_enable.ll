; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.kv_power_info = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"kv_process_firmware_header failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"kv_program_bootup_state failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"kv_upload_dpm_settings failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"kv_populate_uvd_table failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"kv_populate_vce_table failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"kv_populate_samu_table failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"kv_populate_acp_table failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"kv_enable_auto_thermal_throttling failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"kv_enable_dpm_voltage_scaling failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"kv_set_dpm_interval failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"kv_set_dpm_boot_state failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"kv_enable_ulv failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"kv_enable_didt failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"kv_enable_smc_cac failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"amdgpu_kv_smc_bapm_enable failed\0A\00", align 1
@KV_TEMP_RANGE_MIN = common dso_local global i32 0, align 4
@KV_TEMP_RANGE_MAX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"kv_set_thermal_temperature_range failed\0A\00", align 1
@AMDGPU_THERMAL_IRQ_LOW_TO_HIGH = common dso_local global i32 0, align 4
@AMDGPU_THERMAL_IRQ_HIGH_TO_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @kv_dpm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_dpm_enable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.kv_power_info*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %6)
  store %struct.kv_power_info* %7, %struct.kv_power_info** %4, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = call i32 @kv_process_firmware_header(%struct.amdgpu_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %189

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = call i32 @kv_init_fps_limits(%struct.amdgpu_device* %16)
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = call i32 @kv_init_graphics_levels(%struct.amdgpu_device* %18)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = call i32 @kv_program_bootup_state(%struct.amdgpu_device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %189

27:                                               ; preds = %15
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = call i32 @kv_calculate_dfs_bypass_settings(%struct.amdgpu_device* %28)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = call i32 @kv_upload_dpm_settings(%struct.amdgpu_device* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %189

37:                                               ; preds = %27
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = call i32 @kv_populate_uvd_table(%struct.amdgpu_device* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %189

45:                                               ; preds = %37
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = call i32 @kv_populate_vce_table(%struct.amdgpu_device* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %189

53:                                               ; preds = %45
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %55 = call i32 @kv_populate_samu_table(%struct.amdgpu_device* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %189

61:                                               ; preds = %53
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = call i32 @kv_populate_acp_table(%struct.amdgpu_device* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %189

69:                                               ; preds = %61
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = call i32 @kv_program_vc(%struct.amdgpu_device* %70)
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %73 = call i32 @kv_start_am(%struct.amdgpu_device* %72)
  %74 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %75 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %80 = call i32 @kv_enable_auto_thermal_throttling(%struct.amdgpu_device* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %189

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %69
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %89 = call i32 @kv_enable_dpm_voltage_scaling(%struct.amdgpu_device* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %189

95:                                               ; preds = %87
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %97 = call i32 @kv_set_dpm_interval(%struct.amdgpu_device* %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %189

103:                                              ; preds = %95
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %105 = call i32 @kv_set_dpm_boot_state(%struct.amdgpu_device* %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %189

111:                                              ; preds = %103
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %113 = call i32 @kv_enable_ulv(%struct.amdgpu_device* %112, i32 1)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %189

119:                                              ; preds = %111
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %121 = call i32 @kv_start_dpm(%struct.amdgpu_device* %120)
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %123 = call i32 @kv_enable_didt(%struct.amdgpu_device* %122, i32 1)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %128 = load i32, i32* %5, align 4
  store i32 %128, i32* %2, align 4
  br label %189

129:                                              ; preds = %119
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %131 = call i32 @kv_enable_smc_cac(%struct.amdgpu_device* %130, i32 1)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %136 = load i32, i32* %5, align 4
  store i32 %136, i32* %2, align 4
  br label %189

137:                                              ; preds = %129
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %139 = call i32 @kv_reset_acp_boot_level(%struct.amdgpu_device* %138)
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %141 = call i32 @amdgpu_kv_smc_bapm_enable(%struct.amdgpu_device* %140, i32 0)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %189

147:                                              ; preds = %137
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %187

153:                                              ; preds = %147
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %155 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @amdgpu_is_internal_thermal_sensor(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %187

160:                                              ; preds = %153
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %162 = load i32, i32* @KV_TEMP_RANGE_MIN, align 4
  %163 = load i32, i32* @KV_TEMP_RANGE_MAX, align 4
  %164 = call i32 @kv_set_thermal_temperature_range(%struct.amdgpu_device* %161, i32 %162, i32 %163)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0))
  %169 = load i32, i32* %5, align 4
  store i32 %169, i32* %2, align 4
  br label %189

170:                                              ; preds = %160
  %171 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %173 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* @AMDGPU_THERMAL_IRQ_LOW_TO_HIGH, align 4
  %178 = call i32 @amdgpu_irq_get(%struct.amdgpu_device* %171, i32* %176, i32 %177)
  %179 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %180 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %181 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* @AMDGPU_THERMAL_IRQ_HIGH_TO_LOW, align 4
  %186 = call i32 @amdgpu_irq_get(%struct.amdgpu_device* %179, i32* %184, i32 %185)
  br label %187

187:                                              ; preds = %170, %153, %147
  %188 = load i32, i32* %5, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %187, %167, %144, %134, %126, %116, %108, %100, %92, %83, %66, %58, %50, %42, %34, %24, %12
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_process_firmware_header(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @kv_init_fps_limits(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_init_graphics_levels(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_program_bootup_state(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_calculate_dfs_bypass_settings(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_upload_dpm_settings(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_populate_uvd_table(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_populate_vce_table(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_populate_samu_table(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_populate_acp_table(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_program_vc(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_start_am(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_enable_auto_thermal_throttling(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_enable_dpm_voltage_scaling(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_set_dpm_interval(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_set_dpm_boot_state(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_enable_ulv(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_start_dpm(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_enable_didt(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_enable_smc_cac(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_reset_acp_boot_level(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_kv_smc_bapm_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i64 @amdgpu_is_internal_thermal_sensor(i32) #1

declare dso_local i32 @kv_set_thermal_temperature_range(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @amdgpu_irq_get(%struct.amdgpu_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
