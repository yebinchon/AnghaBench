; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_dpm_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_dpm_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i64, i64, %struct.radeon_ps, %struct.radeon_ps }
%struct.radeon_ps = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"ci_freeze_sclk_mclk_dpm failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"ci_populate_and_upload_sclk_mclk_dpm_levels failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ci_generate_dpm_level_enable_mask failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ci_update_vce_dpm failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"ci_update_sclk_t failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"ci_update_and_upload_mc_reg_table failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"ci_program_memory_timing_parameters failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"ci_unfreeze_sclk_mclk_dpm failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"ci_upload_dpm_level_enable_mask failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ci_dpm_set_power_state(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %8)
  store %struct.ci_power_info* %9, %struct.ci_power_info** %4, align 8
  %10 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %11 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %10, i32 0, i32 3
  store %struct.radeon_ps* %11, %struct.radeon_ps** %5, align 8
  %12 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %13 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %12, i32 0, i32 2
  store %struct.radeon_ps* %13, %struct.radeon_ps** %6, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %16 = call i32 @ci_find_dpm_states_clocks_in_dpm_table(%struct.radeon_device* %14, %struct.radeon_ps* %15)
  %17 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %18 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %24 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %25 = call i32 @ci_request_link_speed_change_before_state_change(%struct.radeon_device* %22, %struct.radeon_ps* %23, %struct.radeon_ps* %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = call i32 @ci_freeze_sclk_mclk_dpm(%struct.radeon_device* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %119

34:                                               ; preds = %26
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %37 = call i32 @ci_populate_and_upload_sclk_mclk_dpm_levels(%struct.radeon_device* %35, %struct.radeon_ps* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %119

43:                                               ; preds = %34
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %46 = call i32 @ci_generate_dpm_level_enable_mask(%struct.radeon_device* %44, %struct.radeon_ps* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %119

52:                                               ; preds = %43
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %55 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %56 = call i32 @ci_update_vce_dpm(%struct.radeon_device* %53, %struct.radeon_ps* %54, %struct.radeon_ps* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %119

62:                                               ; preds = %52
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = call i32 @ci_update_sclk_t(%struct.radeon_device* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %119

70:                                               ; preds = %62
  %71 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %72 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = call i32 @ci_update_and_upload_mc_reg_table(%struct.radeon_device* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %119

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %70
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = call i32 @ci_program_memory_timing_parameters(%struct.radeon_device* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %119

92:                                               ; preds = %84
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = call i32 @ci_unfreeze_sclk_mclk_dpm(%struct.radeon_device* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %119

100:                                              ; preds = %92
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = call i32 @ci_upload_dpm_level_enable_mask(%struct.radeon_device* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %119

108:                                              ; preds = %100
  %109 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %110 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %115 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %116 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %117 = call i32 @ci_notify_link_speed_change_after_state_change(%struct.radeon_device* %114, %struct.radeon_ps* %115, %struct.radeon_ps* %116)
  br label %118

118:                                              ; preds = %113, %108
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %105, %97, %89, %80, %67, %59, %49, %40, %31
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ci_find_dpm_states_clocks_in_dpm_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @ci_request_link_speed_change_before_state_change(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @ci_freeze_sclk_mclk_dpm(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @ci_populate_and_upload_sclk_mclk_dpm_levels(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @ci_generate_dpm_level_enable_mask(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @ci_update_vce_dpm(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @ci_update_sclk_t(%struct.radeon_device*) #1

declare dso_local i32 @ci_update_and_upload_mc_reg_table(%struct.radeon_device*) #1

declare dso_local i32 @ci_program_memory_timing_parameters(%struct.radeon_device*) #1

declare dso_local i32 @ci_unfreeze_sclk_mclk_dpm(%struct.radeon_device*) #1

declare dso_local i32 @ci_upload_dpm_level_enable_mask(%struct.radeon_device*) #1

declare dso_local i32 @ci_notify_link_speed_change_after_state_change(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
