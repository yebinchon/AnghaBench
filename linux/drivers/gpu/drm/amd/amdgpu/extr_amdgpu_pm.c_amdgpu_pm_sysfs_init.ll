; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_pm_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_pm_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_6__, i32, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.pp_hwmgr* }
%struct.pp_hwmgr = type { i64 }

@DRIVER_NAME = common dso_local global i32 0, align 4
@hwmon_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to register hwmon device: %d\0A\00", align 1
@dev_attr_power_dpm_state = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to create device file for dpm state\0A\00", align 1
@dev_attr_power_dpm_force_performance_level = common dso_local global i32 0, align 4
@dev_attr_pp_num_states = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"failed to create device file pp_num_states\0A\00", align 1
@dev_attr_pp_cur_state = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to create device file pp_cur_state\0A\00", align 1
@dev_attr_pp_force_state = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"failed to create device file pp_force_state\0A\00", align 1
@dev_attr_pp_table = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to create device file pp_table\0A\00", align 1
@dev_attr_pp_dpm_sclk = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"failed to create device file pp_dpm_sclk\0A\00", align 1
@dev_attr_pp_dpm_mclk = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"failed to create device file pp_dpm_mclk\0A\00", align 1
@CHIP_VEGA10 = common dso_local global i64 0, align 8
@dev_attr_pp_dpm_socclk = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"failed to create device file pp_dpm_socclk\0A\00", align 1
@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@dev_attr_pp_dpm_dcefclk = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"failed to create device file pp_dpm_dcefclk\0A\00", align 1
@CHIP_VEGA20 = common dso_local global i64 0, align 8
@dev_attr_pp_dpm_fclk = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"failed to create device file pp_dpm_fclk\0A\00", align 1
@dev_attr_pp_dpm_pcie = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [42 x i8] c"failed to create device file pp_dpm_pcie\0A\00", align 1
@dev_attr_pp_sclk_od = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"failed to create device file pp_sclk_od\0A\00", align 1
@dev_attr_pp_mclk_od = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"failed to create device file pp_mclk_od\0A\00", align 1
@dev_attr_pp_power_profile_mode = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [52 x i8] c"failed to create device file\09pp_power_profile_mode\0A\00", align 1
@dev_attr_pp_od_clk_voltage = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [48 x i8] c"failed to create device file\09pp_od_clk_voltage\0A\00", align 1
@dev_attr_gpu_busy_percent = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [45 x i8] c"failed to create device file\09gpu_busy_level\0A\00", align 1
@AMD_IS_APU = common dso_local global i32 0, align 4
@dev_attr_mem_busy_percent = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [47 x i8] c"failed to create device file\09mem_busy_percent\0A\00", align 1
@dev_attr_pcie_bw = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [38 x i8] c"failed to create device file pcie_bw\0A\00", align 1
@dev_attr_unique_id = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [40 x i8] c"failed to create device file unique_id\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Failed to register debugfs file for dpm!\0A\00", align 1
@dev_attr_pp_features = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [42 x i8] c"failed to create device file\09pp_features\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_pm_sysfs_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  store %struct.pp_hwmgr* %9, %struct.pp_hwmgr** %4, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %364

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %364

23:                                               ; preds = %16
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DRIVER_NAME, align 4
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = load i32, i32* @hwmon_groups, align 4
  %30 = call i32 @hwmon_device_register_with_groups(i32 %26, i32 %27, %struct.amdgpu_device* %28, i32 %29)
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %23
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %364

52:                                               ; preds = %23
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @device_create_file(i32 %55, i32* @dev_attr_power_dpm_state)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %364

62:                                               ; preds = %52
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @device_create_file(i32 %65, i32* @dev_attr_power_dpm_force_performance_level)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %364

72:                                               ; preds = %62
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @device_create_file(i32 %75, i32* @dev_attr_pp_num_states)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %364

82:                                               ; preds = %72
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @device_create_file(i32 %85, i32* @dev_attr_pp_cur_state)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %364

92:                                               ; preds = %82
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @device_create_file(i32 %95, i32* @dev_attr_pp_force_state)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %364

102:                                              ; preds = %92
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @device_create_file(i32 %105, i32* @dev_attr_pp_table)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %364

112:                                              ; preds = %102
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @device_create_file(i32 %115, i32* @dev_attr_pp_dpm_sclk)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %2, align 4
  br label %364

122:                                              ; preds = %112
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @device_create_file(i32 %125, i32* @dev_attr_pp_dpm_mclk)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* %2, align 4
  br label %364

132:                                              ; preds = %122
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @CHIP_VEGA10, align 8
  %137 = icmp sge i64 %135, %136
  br i1 %137, label %138, label %166

138:                                              ; preds = %132
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @device_create_file(i32 %141, i32* @dev_attr_pp_dpm_socclk)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %147 = load i32, i32* %5, align 4
  store i32 %147, i32* %2, align 4
  br label %364

148:                                              ; preds = %138
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %150 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @CHIP_ARCTURUS, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %148
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @device_create_file(i32 %157, i32* @dev_attr_pp_dpm_dcefclk)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %163 = load i32, i32* %5, align 4
  store i32 %163, i32* %2, align 4
  br label %364

164:                                              ; preds = %154
  br label %165

165:                                              ; preds = %164, %148
  br label %166

166:                                              ; preds = %165, %132
  %167 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %168 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @CHIP_VEGA20, align 8
  %171 = icmp sge i64 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %166
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %174 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @device_create_file(i32 %175, i32* @dev_attr_pp_dpm_fclk)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %181 = load i32, i32* %5, align 4
  store i32 %181, i32* %2, align 4
  br label %364

182:                                              ; preds = %172
  br label %183

183:                                              ; preds = %182, %166
  %184 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %185 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @CHIP_ARCTURUS, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %183
  %190 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %191 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @device_create_file(i32 %192, i32* @dev_attr_pp_dpm_pcie)
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %189
  %197 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %198 = load i32, i32* %5, align 4
  store i32 %198, i32* %2, align 4
  br label %364

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199, %183
  %201 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %202 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @device_create_file(i32 %203, i32* @dev_attr_pp_sclk_od)
  store i32 %204, i32* %5, align 4
  %205 = load i32, i32* %5, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %200
  %208 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %209 = load i32, i32* %5, align 4
  store i32 %209, i32* %2, align 4
  br label %364

210:                                              ; preds = %200
  %211 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %212 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @device_create_file(i32 %213, i32* @dev_attr_pp_mclk_od)
  store i32 %214, i32* %5, align 4
  %215 = load i32, i32* %5, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %210
  %218 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %219 = load i32, i32* %5, align 4
  store i32 %219, i32* %2, align 4
  br label %364

220:                                              ; preds = %210
  %221 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %222 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @device_create_file(i32 %223, i32* @dev_attr_pp_power_profile_mode)
  store i32 %224, i32* %5, align 4
  %225 = load i32, i32* %5, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %220
  %228 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0))
  %229 = load i32, i32* %5, align 4
  store i32 %229, i32* %2, align 4
  br label %364

230:                                              ; preds = %220
  %231 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %232 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %230
  %235 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %236 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %249, label %240

240:                                              ; preds = %234, %230
  %241 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %242 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %260, label %244

244:                                              ; preds = %240
  %245 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %246 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %244, %234
  %250 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %251 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @device_create_file(i32 %252, i32* @dev_attr_pp_od_clk_voltage)
  store i32 %253, i32* %5, align 4
  %254 = load i32, i32* %5, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %249
  %257 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  %258 = load i32, i32* %5, align 4
  store i32 %258, i32* %2, align 4
  br label %364

259:                                              ; preds = %249
  br label %260

260:                                              ; preds = %259, %244, %240
  %261 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %262 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @device_create_file(i32 %263, i32* @dev_attr_gpu_busy_percent)
  store i32 %264, i32* %5, align 4
  %265 = load i32, i32* %5, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %260
  %268 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0))
  %269 = load i32, i32* %5, align 4
  store i32 %269, i32* %2, align 4
  br label %364

270:                                              ; preds = %260
  %271 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %272 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @AMD_IS_APU, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %294, label %277

277:                                              ; preds = %270
  %278 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %279 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @CHIP_VEGA10, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %294

283:                                              ; preds = %277
  %284 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %285 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @device_create_file(i32 %286, i32* @dev_attr_mem_busy_percent)
  store i32 %287, i32* %5, align 4
  %288 = load i32, i32* %5, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %283
  %291 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0))
  %292 = load i32, i32* %5, align 4
  store i32 %292, i32* %2, align 4
  br label %364

293:                                              ; preds = %283
  br label %294

294:                                              ; preds = %293, %277, %270
  %295 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %296 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @AMD_IS_APU, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %312, label %301

301:                                              ; preds = %294
  %302 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %303 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @device_create_file(i32 %304, i32* @dev_attr_pcie_bw)
  store i32 %305, i32* %5, align 4
  %306 = load i32, i32* %5, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %301
  %309 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0))
  %310 = load i32, i32* %5, align 4
  store i32 %310, i32* %2, align 4
  br label %364

311:                                              ; preds = %301
  br label %312

312:                                              ; preds = %311, %294
  %313 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %314 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %313, i32 0, i32 4
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %312
  %318 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %319 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @device_create_file(i32 %320, i32* @dev_attr_unique_id)
  store i32 %321, i32* %5, align 4
  br label %322

322:                                              ; preds = %317, %312
  %323 = load i32, i32* %5, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0))
  %327 = load i32, i32* %5, align 4
  store i32 %327, i32* %2, align 4
  br label %364

328:                                              ; preds = %322
  %329 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %330 = call i32 @amdgpu_debugfs_pm_init(%struct.amdgpu_device* %329)
  store i32 %330, i32* %5, align 4
  %331 = load i32, i32* %5, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %328
  %334 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0))
  %335 = load i32, i32* %5, align 4
  store i32 %335, i32* %2, align 4
  br label %364

336:                                              ; preds = %328
  %337 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %338 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @CHIP_VEGA10, align 8
  %341 = icmp sge i64 %339, %340
  br i1 %341, label %342, label %360

342:                                              ; preds = %336
  %343 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %344 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @AMD_IS_APU, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %360, label %349

349:                                              ; preds = %342
  %350 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %351 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @device_create_file(i32 %352, i32* @dev_attr_pp_features)
  store i32 %353, i32* %5, align 4
  %354 = load i32, i32* %5, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %349
  %357 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0))
  %358 = load i32, i32* %5, align 4
  store i32 %358, i32* %2, align 4
  br label %364

359:                                              ; preds = %349
  br label %360

360:                                              ; preds = %359, %342, %336
  %361 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %362 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 0
  store i32 1, i32* %363, align 8
  store i32 0, i32* %2, align 4
  br label %364

364:                                              ; preds = %360, %356, %333, %325, %308, %290, %267, %256, %227, %217, %207, %196, %179, %161, %145, %129, %119, %109, %99, %89, %79, %69, %59, %40, %22, %15
  %365 = load i32, i32* %2, align 4
  ret i32 %365
}

declare dso_local i32 @hwmon_device_register_with_groups(i32, i32, %struct.amdgpu_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_debugfs_pm_init(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
