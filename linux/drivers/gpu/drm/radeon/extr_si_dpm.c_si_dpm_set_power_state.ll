; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_dpm_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_dpm_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.evergreen_power_info = type { i64, i64, %struct.radeon_ps, %struct.radeon_ps }
%struct.radeon_ps = type { i32 }

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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_dpm_set_power_state(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.evergreen_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %8)
  store %struct.evergreen_power_info* %9, %struct.evergreen_power_info** %4, align 8
  %10 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %11 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %10, i32 0, i32 3
  store %struct.radeon_ps* %11, %struct.radeon_ps** %5, align 8
  %12 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %13 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %12, i32 0, i32 2
  store %struct.radeon_ps* %13, %struct.radeon_ps** %6, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call i32 @si_disable_ulv(%struct.radeon_device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %192

21:                                               ; preds = %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = call i32 @si_restrict_performance_levels_before_switch(%struct.radeon_device* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %192

29:                                               ; preds = %21
  %30 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %31 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %37 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %38 = call i32 @si_request_link_speed_change_before_state_change(%struct.radeon_device* %35, %struct.radeon_ps* %36, %struct.radeon_ps* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %42 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %43 = call i32 @ni_set_uvd_clock_before_set_eng_clock(%struct.radeon_device* %40, %struct.radeon_ps* %41, %struct.radeon_ps* %42)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %46 = call i32 @si_enable_power_containment(%struct.radeon_device* %44, %struct.radeon_ps* %45, i32 0)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %192

52:                                               ; preds = %39
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %55 = call i32 @si_enable_smc_cac(%struct.radeon_device* %53, %struct.radeon_ps* %54, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %192

61:                                               ; preds = %52
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = call i32 @si_halt_smc(%struct.radeon_device* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %192

69:                                               ; preds = %61
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %72 = call i32 @si_upload_sw_state(%struct.radeon_device* %70, %struct.radeon_ps* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %192

78:                                               ; preds = %69
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = call i32 @si_upload_smc_data(%struct.radeon_device* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %192

86:                                               ; preds = %78
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = call i32 @si_upload_ulv_state(%struct.radeon_device* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %192

94:                                               ; preds = %86
  %95 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %96 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %102 = call i32 @si_upload_mc_reg_table(%struct.radeon_device* %100, %struct.radeon_ps* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %192

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %94
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %112 = call i32 @si_program_memory_timing_parameters(%struct.radeon_device* %110, %struct.radeon_ps* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %192

118:                                              ; preds = %109
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %121 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %122 = call i32 @si_set_pcie_lane_width_in_smc(%struct.radeon_device* %119, %struct.radeon_ps* %120, %struct.radeon_ps* %121)
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = call i32 @si_resume_smc(%struct.radeon_device* %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %192

130:                                              ; preds = %118
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = call i32 @si_set_sw_state(%struct.radeon_device* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %192

138:                                              ; preds = %130
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %141 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %142 = call i32 @ni_set_uvd_clock_after_set_eng_clock(%struct.radeon_device* %139, %struct.radeon_ps* %140, %struct.radeon_ps* %141)
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %145 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %146 = call i32 @si_set_vce_clock(%struct.radeon_device* %143, %struct.radeon_ps* %144, %struct.radeon_ps* %145)
  %147 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %148 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %138
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %154 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %155 = call i32 @si_notify_link_speed_change_after_state_change(%struct.radeon_device* %152, %struct.radeon_ps* %153, %struct.radeon_ps* %154)
  br label %156

156:                                              ; preds = %151, %138
  %157 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %158 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %159 = call i32 @si_set_power_state_conditionally_enable_ulv(%struct.radeon_device* %157, %struct.radeon_ps* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0))
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %2, align 4
  br label %192

165:                                              ; preds = %156
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %168 = call i32 @si_enable_smc_cac(%struct.radeon_device* %166, %struct.radeon_ps* %167, i32 1)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %2, align 4
  br label %192

174:                                              ; preds = %165
  %175 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %176 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %177 = call i32 @si_enable_power_containment(%struct.radeon_device* %175, %struct.radeon_ps* %176, i32 1)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %182 = load i32, i32* %7, align 4
  store i32 %182, i32* %2, align 4
  br label %192

183:                                              ; preds = %174
  %184 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %185 = call i32 @si_power_control_set_level(%struct.radeon_device* %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %190 = load i32, i32* %7, align 4
  store i32 %190, i32* %2, align 4
  br label %192

191:                                              ; preds = %183
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %191, %188, %180, %171, %162, %135, %127, %115, %105, %91, %83, %75, %66, %58, %49, %26, %18
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @si_disable_ulv(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @si_restrict_performance_levels_before_switch(%struct.radeon_device*) #1

declare dso_local i32 @si_request_link_speed_change_before_state_change(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @ni_set_uvd_clock_before_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @si_enable_power_containment(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @si_enable_smc_cac(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @si_halt_smc(%struct.radeon_device*) #1

declare dso_local i32 @si_upload_sw_state(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @si_upload_smc_data(%struct.radeon_device*) #1

declare dso_local i32 @si_upload_ulv_state(%struct.radeon_device*) #1

declare dso_local i32 @si_upload_mc_reg_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @si_program_memory_timing_parameters(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @si_set_pcie_lane_width_in_smc(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @si_resume_smc(%struct.radeon_device*) #1

declare dso_local i32 @si_set_sw_state(%struct.radeon_device*) #1

declare dso_local i32 @ni_set_uvd_clock_after_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @si_set_vce_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @si_notify_link_speed_change_after_state_change(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @si_set_power_state_conditionally_enable_ulv(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @si_power_control_set_level(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
