; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_dpm_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_dpm_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.evergreen_power_info = type { i64, i64, i64, %struct.radeon_ps, %struct.radeon_ps }
%struct.radeon_ps = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"rv770_restrict_performance_levels_before_switch failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"rv770_halt_smc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"cypress_upload_sw_state failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cypress_upload_mc_reg_table failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"rv770_resume_smc failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"rv770_set_sw_state failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"btc_set_power_state_conditionally_enable_ulv failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_dpm_set_power_state(%struct.radeon_device* %0) #0 {
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
  %11 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %10, i32 0, i32 4
  store %struct.radeon_ps* %11, %struct.radeon_ps** %5, align 8
  %12 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %13 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %12, i32 0, i32 3
  store %struct.radeon_ps* %13, %struct.radeon_ps** %6, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call i32 @btc_disable_ulv(%struct.radeon_device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = call i32 @btc_set_boot_state_timing(%struct.radeon_device* %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @rv770_restrict_performance_levels_before_switch(%struct.radeon_device* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %126

25:                                               ; preds = %1
  %26 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %27 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %33 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %34 = call i32 @cypress_notify_link_speed_change_before_state_change(%struct.radeon_device* %31, %struct.radeon_ps* %32, %struct.radeon_ps* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %38 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %39 = call i32 @rv770_set_uvd_clock_before_set_eng_clock(%struct.radeon_device* %36, %struct.radeon_ps* %37, %struct.radeon_ps* %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = call i32 @rv770_halt_smc(%struct.radeon_device* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %126

47:                                               ; preds = %35
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %50 = call i32 @btc_set_at_for_uvd(%struct.radeon_device* %48, %struct.radeon_ps* %49)
  %51 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %52 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %58 = call i32 @btc_notify_uvd_to_smc(%struct.radeon_device* %56, %struct.radeon_ps* %57)
  br label %59

59:                                               ; preds = %55, %47
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %62 = call i32 @cypress_upload_sw_state(%struct.radeon_device* %60, %struct.radeon_ps* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %126

68:                                               ; preds = %59
  %69 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %70 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %76 = call i32 @cypress_upload_mc_reg_table(%struct.radeon_device* %74, %struct.radeon_ps* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %126

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %68
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %86 = call i32 @cypress_program_memory_timing_parameters(%struct.radeon_device* %84, %struct.radeon_ps* %85)
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = call i32 @rv770_resume_smc(%struct.radeon_device* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %126

94:                                               ; preds = %83
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = call i32 @rv770_set_sw_state(%struct.radeon_device* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %126

102:                                              ; preds = %94
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %105 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %106 = call i32 @rv770_set_uvd_clock_after_set_eng_clock(%struct.radeon_device* %103, %struct.radeon_ps* %104, %struct.radeon_ps* %105)
  %107 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %108 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %102
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %114 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %115 = call i32 @cypress_notify_link_speed_change_after_state_change(%struct.radeon_device* %112, %struct.radeon_ps* %113, %struct.radeon_ps* %114)
  br label %116

116:                                              ; preds = %111, %102
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %119 = call i32 @btc_set_power_state_conditionally_enable_ulv(%struct.radeon_device* %117, %struct.radeon_ps* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %2, align 4
  br label %126

125:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %122, %99, %91, %79, %65, %44, %22
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @btc_disable_ulv(%struct.radeon_device*) #1

declare dso_local i32 @btc_set_boot_state_timing(%struct.radeon_device*) #1

declare dso_local i32 @rv770_restrict_performance_levels_before_switch(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @cypress_notify_link_speed_change_before_state_change(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_set_uvd_clock_before_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_halt_smc(%struct.radeon_device*) #1

declare dso_local i32 @btc_set_at_for_uvd(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @btc_notify_uvd_to_smc(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @cypress_upload_sw_state(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @cypress_upload_mc_reg_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @cypress_program_memory_timing_parameters(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_resume_smc(%struct.radeon_device*) #1

declare dso_local i32 @rv770_set_sw_state(%struct.radeon_device*) #1

declare dso_local i32 @rv770_set_uvd_clock_after_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @cypress_notify_link_speed_change_after_state_change(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @btc_set_power_state_conditionally_enable_ulv(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
