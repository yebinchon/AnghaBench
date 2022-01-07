; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.evergreen_power_info = type { i64, i64, %struct.amdgpu_ps, %struct.amdgpu_ps }
%struct.amdgpu_ps = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"si_disable_ulv failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"si_restrict_performance_levels_before_switch failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"si_enable_power_containment failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"si_enable_smc_cac failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"si_halt_smc failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"si_upload_sw_state failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"si_upload_smc_data failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"si_upload_ulv_state failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"si_upload_mc_reg_table failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"si_program_memory_timing_parameters failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"si_resume_smc failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"si_set_sw_state failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"si_set_power_state_conditionally_enable_ulv failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"si_power_control_set_level failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @si_dpm_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_dpm_set_power_state(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  %6 = alloca %struct.amdgpu_ps*, align 8
  %7 = alloca %struct.amdgpu_ps*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %4, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device* %11)
  store %struct.evergreen_power_info* %12, %struct.evergreen_power_info** %5, align 8
  %13 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %14 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %13, i32 0, i32 3
  store %struct.amdgpu_ps* %14, %struct.amdgpu_ps** %6, align 8
  %15 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %16 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %15, i32 0, i32 2
  store %struct.amdgpu_ps* %16, %struct.amdgpu_ps** %7, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %18 = call i32 @si_disable_ulv(%struct.amdgpu_device* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %191

24:                                               ; preds = %1
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %26 = call i32 @si_restrict_performance_levels_before_switch(%struct.amdgpu_device* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %191

32:                                               ; preds = %24
  %33 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %34 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %39 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %40 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %41 = call i32 @si_request_link_speed_change_before_state_change(%struct.amdgpu_device* %38, %struct.amdgpu_ps* %39, %struct.amdgpu_ps* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %44 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %45 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %46 = call i32 @ni_set_uvd_clock_before_set_eng_clock(%struct.amdgpu_device* %43, %struct.amdgpu_ps* %44, %struct.amdgpu_ps* %45)
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %48 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %49 = call i32 @si_enable_power_containment(%struct.amdgpu_device* %47, %struct.amdgpu_ps* %48, i32 0)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %191

55:                                               ; preds = %42
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %57 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %58 = call i32 @si_enable_smc_cac(%struct.amdgpu_device* %56, %struct.amdgpu_ps* %57, i32 0)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %191

64:                                               ; preds = %55
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %66 = call i32 @si_halt_smc(%struct.amdgpu_device* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %191

72:                                               ; preds = %64
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %74 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %75 = call i32 @si_upload_sw_state(%struct.amdgpu_device* %73, %struct.amdgpu_ps* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %191

81:                                               ; preds = %72
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %83 = call i32 @si_upload_smc_data(%struct.amdgpu_device* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %191

89:                                               ; preds = %81
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %91 = call i32 @si_upload_ulv_state(%struct.amdgpu_device* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %2, align 4
  br label %191

97:                                               ; preds = %89
  %98 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %99 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %104 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %105 = call i32 @si_upload_mc_reg_table(%struct.amdgpu_device* %103, %struct.amdgpu_ps* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %2, align 4
  br label %191

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %97
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %114 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %115 = call i32 @si_program_memory_timing_parameters(%struct.amdgpu_device* %113, %struct.amdgpu_ps* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %2, align 4
  br label %191

121:                                              ; preds = %112
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %123 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %124 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %125 = call i32 @si_set_pcie_lane_width_in_smc(%struct.amdgpu_device* %122, %struct.amdgpu_ps* %123, %struct.amdgpu_ps* %124)
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %127 = call i32 @si_resume_smc(%struct.amdgpu_device* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %2, align 4
  br label %191

133:                                              ; preds = %121
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %135 = call i32 @si_set_sw_state(%struct.amdgpu_device* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %2, align 4
  br label %191

141:                                              ; preds = %133
  %142 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %143 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %144 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %145 = call i32 @ni_set_uvd_clock_after_set_eng_clock(%struct.amdgpu_device* %142, %struct.amdgpu_ps* %143, %struct.amdgpu_ps* %144)
  %146 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %147 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %141
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %152 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %153 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %154 = call i32 @si_notify_link_speed_change_after_state_change(%struct.amdgpu_device* %151, %struct.amdgpu_ps* %152, %struct.amdgpu_ps* %153)
  br label %155

155:                                              ; preds = %150, %141
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %157 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %158 = call i32 @si_set_power_state_conditionally_enable_ulv(%struct.amdgpu_device* %156, %struct.amdgpu_ps* %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0))
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %2, align 4
  br label %191

164:                                              ; preds = %155
  %165 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %166 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %167 = call i32 @si_enable_smc_cac(%struct.amdgpu_device* %165, %struct.amdgpu_ps* %166, i32 1)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %2, align 4
  br label %191

173:                                              ; preds = %164
  %174 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %175 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %176 = call i32 @si_enable_power_containment(%struct.amdgpu_device* %174, %struct.amdgpu_ps* %175, i32 1)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %2, align 4
  br label %191

182:                                              ; preds = %173
  %183 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %184 = call i32 @si_power_control_set_level(%struct.amdgpu_device* %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %2, align 4
  br label %191

190:                                              ; preds = %182
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %190, %187, %179, %170, %161, %138, %130, %118, %108, %94, %86, %78, %69, %61, %52, %29, %21
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @si_disable_ulv(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @si_restrict_performance_levels_before_switch(%struct.amdgpu_device*) #1

declare dso_local i32 @si_request_link_speed_change_before_state_change(%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.amdgpu_ps*) #1

declare dso_local i32 @ni_set_uvd_clock_before_set_eng_clock(%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.amdgpu_ps*) #1

declare dso_local i32 @si_enable_power_containment(%struct.amdgpu_device*, %struct.amdgpu_ps*, i32) #1

declare dso_local i32 @si_enable_smc_cac(%struct.amdgpu_device*, %struct.amdgpu_ps*, i32) #1

declare dso_local i32 @si_halt_smc(%struct.amdgpu_device*) #1

declare dso_local i32 @si_upload_sw_state(%struct.amdgpu_device*, %struct.amdgpu_ps*) #1

declare dso_local i32 @si_upload_smc_data(%struct.amdgpu_device*) #1

declare dso_local i32 @si_upload_ulv_state(%struct.amdgpu_device*) #1

declare dso_local i32 @si_upload_mc_reg_table(%struct.amdgpu_device*, %struct.amdgpu_ps*) #1

declare dso_local i32 @si_program_memory_timing_parameters(%struct.amdgpu_device*, %struct.amdgpu_ps*) #1

declare dso_local i32 @si_set_pcie_lane_width_in_smc(%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.amdgpu_ps*) #1

declare dso_local i32 @si_resume_smc(%struct.amdgpu_device*) #1

declare dso_local i32 @si_set_sw_state(%struct.amdgpu_device*) #1

declare dso_local i32 @ni_set_uvd_clock_after_set_eng_clock(%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.amdgpu_ps*) #1

declare dso_local i32 @si_notify_link_speed_change_after_state_change(%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.amdgpu_ps*) #1

declare dso_local i32 @si_set_power_state_conditionally_enable_ulv(%struct.amdgpu_device*, %struct.amdgpu_ps*) #1

declare dso_local i32 @si_power_control_set_level(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
