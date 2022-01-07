; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_debugfs_print_current_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_debugfs_print_current_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.kv_power_info = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ixTARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4
@TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX_MASK = common dso_local global i64 0, align 8
@TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX__SHIFT = common dso_local global i64 0, align 8
@SMU__NUM_SCLK_DPM_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"invalid dpm profile %d\0A\00", align 1
@ixSMU_VOLTAGE_STATUS = common dso_local global i32 0, align 4
@SMU_VOLTAGE_STATUS__SMU_VOLTAGE_CURRENT_LEVEL_MASK = common dso_local global i64 0, align 8
@SMU_VOLTAGE_STATUS__SMU_VOLTAGE_CURRENT_LEVEL__SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"uvd    %sabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"vce    %sabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"power level %d    sclk: %u vddc: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.seq_file*)* @kv_dpm_debugfs_print_current_performance_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_dpm_debugfs_print_current_performance_level(i8* %0, %struct.seq_file* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.kv_power_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %5, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %14 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %13)
  store %struct.kv_power_info* %14, %struct.kv_power_info** %6, align 8
  %15 = load i32, i32* @ixTARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %16 = call i64 @RREG32_SMC(i32 %15)
  %17 = load i64, i64* @TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX_MASK, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX__SHIFT, align 8
  %20 = lshr i64 %18, %19
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @SMU__NUM_SCLK_DPM_STATE, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %68

28:                                               ; preds = %2
  %29 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %30 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @be32_to_cpu(i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* @ixSMU_VOLTAGE_STATUS, align 4
  %38 = call i64 @RREG32_SMC(i32 %37)
  %39 = load i64, i64* @SMU_VOLTAGE_STATUS__SMU_VOLTAGE_CURRENT_LEVEL_MASK, align 8
  %40 = and i64 %38, %39
  %41 = load i64, i64* @SMU_VOLTAGE_STATUS__SMU_VOLTAGE_CURRENT_LEVEL__SHIFT, align 8
  %42 = lshr i64 %40, %41
  store i64 %42, i64* %9, align 8
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %44 = load i64, i64* %9, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @kv_convert_8bit_index_to_voltage(%struct.amdgpu_device* %43, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %48 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %49 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %54 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %57 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %62 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %64, i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %28, %24
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i64 @RREG32_SMC(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @kv_convert_8bit_index_to_voltage(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
