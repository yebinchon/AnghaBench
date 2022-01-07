; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_dpm_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_dpm_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.evergreen_power_info = type { i64, i64, %struct.radeon_ps, %struct.radeon_ps }
%struct.radeon_ps = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"ni_restrict_performance_levels_before_switch failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ni_enable_power_containment failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ni_enable_smc_cac failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"rv770_halt_smc failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ni_upload_sw_state failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"ni_upload_mc_reg_table failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"ni_program_memory_timing_parameters failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"rv770_resume_smc failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"rv770_set_sw_state failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"ni_power_control_set_level failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_dpm_set_power_state(%struct.radeon_device* %0) #0 {
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
  %15 = call i32 @ni_restrict_performance_levels_before_switch(%struct.radeon_device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %140

21:                                               ; preds = %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %24 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %25 = call i32 @ni_set_uvd_clock_before_set_eng_clock(%struct.radeon_device* %22, %struct.radeon_ps* %23, %struct.radeon_ps* %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %28 = call i32 @ni_enable_power_containment(%struct.radeon_device* %26, %struct.radeon_ps* %27, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %140

34:                                               ; preds = %21
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %37 = call i32 @ni_enable_smc_cac(%struct.radeon_device* %35, %struct.radeon_ps* %36, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %140

43:                                               ; preds = %34
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = call i32 @rv770_halt_smc(%struct.radeon_device* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %140

51:                                               ; preds = %43
  %52 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %53 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %59 = call i32 @btc_notify_uvd_to_smc(%struct.radeon_device* %57, %struct.radeon_ps* %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %63 = call i32 @ni_upload_sw_state(%struct.radeon_device* %61, %struct.radeon_ps* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %140

69:                                               ; preds = %60
  %70 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %71 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %77 = call i32 @ni_upload_mc_reg_table(%struct.radeon_device* %75, %struct.radeon_ps* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %140

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %69
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %87 = call i32 @ni_program_memory_timing_parameters(%struct.radeon_device* %85, %struct.radeon_ps* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %140

93:                                               ; preds = %84
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = call i32 @rv770_resume_smc(%struct.radeon_device* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %140

101:                                              ; preds = %93
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = call i32 @rv770_set_sw_state(%struct.radeon_device* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %140

109:                                              ; preds = %101
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %112 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %113 = call i32 @ni_set_uvd_clock_after_set_eng_clock(%struct.radeon_device* %110, %struct.radeon_ps* %111, %struct.radeon_ps* %112)
  %114 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %115 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %116 = call i32 @ni_enable_smc_cac(%struct.radeon_device* %114, %struct.radeon_ps* %115, i32 1)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %140

122:                                              ; preds = %109
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %125 = call i32 @ni_enable_power_containment(%struct.radeon_device* %123, %struct.radeon_ps* %124, i32 1)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %140

131:                                              ; preds = %122
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = call i32 @ni_power_control_set_level(%struct.radeon_device* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %2, align 4
  br label %140

139:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %136, %128, %119, %106, %98, %90, %80, %66, %48, %40, %31, %18
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ni_restrict_performance_levels_before_switch(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @ni_set_uvd_clock_before_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @ni_enable_power_containment(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @ni_enable_smc_cac(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @rv770_halt_smc(%struct.radeon_device*) #1

declare dso_local i32 @btc_notify_uvd_to_smc(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @ni_upload_sw_state(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @ni_upload_mc_reg_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @ni_program_memory_timing_parameters(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_resume_smc(%struct.radeon_device*) #1

declare dso_local i32 @rv770_set_sw_state(%struct.radeon_device*) #1

declare dso_local i32 @ni_set_uvd_clock_after_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @ni_power_control_set_level(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
