; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.radeon_ps*, %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i64 }

@.str = private unnamed_addr constant [56 x i8] c"rv770_restrict_performance_levels_before_switch failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"rv770_halt_smc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"rv770_upload_sw_state failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"rv770_resume_smc failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"rv770_set_sw_state failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv770_dpm_set_power_state(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %13, align 8
  store %struct.radeon_ps* %14, %struct.radeon_ps** %5, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
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
  br label %92

27:                                               ; preds = %1
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %30 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %31 = call i32 @rv770_set_uvd_clock_before_set_eng_clock(%struct.radeon_device* %28, %struct.radeon_ps* %29, %struct.radeon_ps* %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = call i32 @rv770_halt_smc(%struct.radeon_device* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %92

39:                                               ; preds = %27
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %42 = call i32 @rv770_upload_sw_state(%struct.radeon_device* %40, %struct.radeon_ps* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %92

48:                                               ; preds = %39
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %51 = call i32 @r7xx_program_memory_timing_parameters(%struct.radeon_device* %49, %struct.radeon_ps* %50)
  %52 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %53 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %59 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %60 = call i32 @rv770_program_dcodt_before_state_switch(%struct.radeon_device* %57, %struct.radeon_ps* %58, %struct.radeon_ps* %59)
  br label %61

61:                                               ; preds = %56, %48
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = call i32 @rv770_resume_smc(%struct.radeon_device* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %92

69:                                               ; preds = %61
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = call i32 @rv770_set_sw_state(%struct.radeon_device* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %92

77:                                               ; preds = %69
  %78 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %79 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %85 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %86 = call i32 @rv770_program_dcodt_after_state_switch(%struct.radeon_device* %83, %struct.radeon_ps* %84, %struct.radeon_ps* %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %90 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %91 = call i32 @rv770_set_uvd_clock_after_set_eng_clock(%struct.radeon_device* %88, %struct.radeon_ps* %89, %struct.radeon_ps* %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %87, %74, %66, %45, %36, %24
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_restrict_performance_levels_before_switch(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @rv770_set_uvd_clock_before_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_halt_smc(%struct.radeon_device*) #1

declare dso_local i32 @rv770_upload_sw_state(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @r7xx_program_memory_timing_parameters(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_program_dcodt_before_state_switch(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_resume_smc(%struct.radeon_device*) #1

declare dso_local i32 @rv770_set_sw_state(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_dcodt_after_state_switch(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_set_uvd_clock_after_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
