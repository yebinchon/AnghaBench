; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_dpm_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_dpm_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps*, %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.evergreen_power_info = type { i64, i64 }

@.str = private unnamed_addr constant [56 x i8] c"rv770_restrict_performance_levels_before_switch failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"rv770_halt_smc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"cypress_upload_sw_state failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cypress_upload_mc_reg_table failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"rv770_resume_smc failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"rv770_set_sw_state failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_dpm_set_power_state(%struct.radeon_device* %0) #0 {
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
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %13, align 8
  store %struct.radeon_ps* %14, %struct.radeon_ps** %5, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.radeon_ps*, %struct.radeon_ps** %18, align 8
  store %struct.radeon_ps* %19, %struct.radeon_ps** %6, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @rv770_restrict_performance_levels_before_switch(%struct.radeon_device* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %107

27:                                               ; preds = %1
  %28 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %29 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %35 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %36 = call i32 @cypress_notify_link_speed_change_before_state_change(%struct.radeon_device* %33, %struct.radeon_ps* %34, %struct.radeon_ps* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %40 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %41 = call i32 @rv770_set_uvd_clock_before_set_eng_clock(%struct.radeon_device* %38, %struct.radeon_ps* %39, %struct.radeon_ps* %40)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = call i32 @rv770_halt_smc(%struct.radeon_device* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %107

49:                                               ; preds = %37
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %52 = call i32 @cypress_upload_sw_state(%struct.radeon_device* %50, %struct.radeon_ps* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %107

58:                                               ; preds = %49
  %59 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %60 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %66 = call i32 @cypress_upload_mc_reg_table(%struct.radeon_device* %64, %struct.radeon_ps* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %107

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %58
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %76 = call i32 @cypress_program_memory_timing_parameters(%struct.radeon_device* %74, %struct.radeon_ps* %75)
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = call i32 @rv770_resume_smc(%struct.radeon_device* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %107

84:                                               ; preds = %73
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = call i32 @rv770_set_sw_state(%struct.radeon_device* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %107

92:                                               ; preds = %84
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %95 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %96 = call i32 @rv770_set_uvd_clock_after_set_eng_clock(%struct.radeon_device* %93, %struct.radeon_ps* %94, %struct.radeon_ps* %95)
  %97 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %98 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %104 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %105 = call i32 @cypress_notify_link_speed_change_after_state_change(%struct.radeon_device* %102, %struct.radeon_ps* %103, %struct.radeon_ps* %104)
  br label %106

106:                                              ; preds = %101, %92
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %89, %81, %69, %55, %46, %24
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_restrict_performance_levels_before_switch(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @cypress_notify_link_speed_change_before_state_change(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_set_uvd_clock_before_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_halt_smc(%struct.radeon_device*) #1

declare dso_local i32 @cypress_upload_sw_state(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @cypress_upload_mc_reg_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @cypress_program_memory_timing_parameters(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_resume_smc(%struct.radeon_device*) #1

declare dso_local i32 @rv770_set_sw_state(%struct.radeon_device*) #1

declare dso_local i32 @rv770_set_uvd_clock_after_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @cypress_notify_link_speed_change_after_state_change(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
