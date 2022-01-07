; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_debugfs_print_current_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_debugfs_print_current_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.seq_file = type { i32 }
%struct.kv_power_info = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4
@CURR_SCLK_INDEX_MASK = common dso_local global i64 0, align 8
@CURR_SCLK_INDEX_SHIFT = common dso_local global i64 0, align 8
@SMU__NUM_SCLK_DPM_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"invalid dpm profile %d\0A\00", align 1
@SMU_VOLTAGE_STATUS = common dso_local global i32 0, align 4
@SMU_VOLTAGE_CURRENT_LEVEL_MASK = common dso_local global i64 0, align 8
@SMU_VOLTAGE_CURRENT_LEVEL_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"uvd    %sabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"vce    %sabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"power level %d    sclk: %u vddc: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kv_dpm_debugfs_print_current_performance_level(%struct.radeon_device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.kv_power_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %10)
  store %struct.kv_power_info* %11, %struct.kv_power_info** %5, align 8
  %12 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %13 = call i64 @RREG32_SMC(i32 %12)
  %14 = load i64, i64* @CURR_SCLK_INDEX_MASK, align 8
  %15 = and i64 %13, %14
  %16 = load i64, i64* @CURR_SCLK_INDEX_SHIFT, align 8
  %17 = lshr i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @SMU__NUM_SCLK_DPM_STATE, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %65

25:                                               ; preds = %2
  %26 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %27 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @be32_to_cpu(i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* @SMU_VOLTAGE_STATUS, align 4
  %35 = call i64 @RREG32_SMC(i32 %34)
  %36 = load i64, i64* @SMU_VOLTAGE_CURRENT_LEVEL_MASK, align 8
  %37 = and i64 %35, %36
  %38 = load i64, i64* @SMU_VOLTAGE_CURRENT_LEVEL_SHIFT, align 8
  %39 = lshr i64 %37, %38
  store i64 %39, i64* %8, align 8
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = load i64, i64* %8, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @kv_convert_8bit_index_to_voltage(%struct.radeon_device* %40, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %46 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %53 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %54 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %59 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %61, i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %25, %21
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @RREG32_SMC(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @kv_convert_8bit_index_to_voltage(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
