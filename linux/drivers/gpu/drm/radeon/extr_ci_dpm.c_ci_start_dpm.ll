; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_start_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_start_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i32 }

@GENERAL_PWRMGT = common dso_local global i32 0, align 4
@GLOBAL_PWRMGT_EN = common dso_local global i32 0, align 4
@SCLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@DYNAMIC_PM_EN = common dso_local global i32 0, align 4
@SMU7_SoftRegisters = common dso_local global i32 0, align 4
@VoltageChangeTimeout = common dso_local global i32 0, align 4
@BIF_LNCNT_RESET = common dso_local global i32 0, align 4
@RESET_LNCNT_EN = common dso_local global i32 0, align 4
@PPSMC_MSG_Voltage_Cntl_Enable = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_PCIeDPM_Enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_start_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_start_dpm(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %8)
  store %struct.ci_power_info* %9, %struct.ci_power_info** %4, align 8
  %10 = load i32, i32* @GENERAL_PWRMGT, align 4
  %11 = call i32 @RREG32_SMC(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @GLOBAL_PWRMGT_EN, align 4
  %13 = load i32, i32* %7, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @GENERAL_PWRMGT, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @WREG32_SMC(i32 %15, i32 %16)
  %18 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %19 = call i32 @RREG32_SMC(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @DYNAMIC_PM_EN, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @WREG32_SMC(i32 %23, i32 %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = load i32, i32* @SMU7_SoftRegisters, align 4
  %28 = load i32, i32* @VoltageChangeTimeout, align 4
  %29 = call i32 @offsetof(i32 %27, i32 %28)
  %30 = call i32 @ci_write_smc_soft_register(%struct.radeon_device* %26, i32 %29, i32 4096)
  %31 = load i32, i32* @BIF_LNCNT_RESET, align 4
  %32 = load i32, i32* @RESET_LNCNT_EN, align 4
  %33 = xor i32 %32, -1
  %34 = call i32 @WREG32_P(i32 %31, i32 0, i32 %33)
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = load i32, i32* @PPSMC_MSG_Voltage_Cntl_Enable, align 4
  %37 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %35, i32 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @PPSMC_Result_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %68

44:                                               ; preds = %1
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = call i32 @ci_enable_sclk_mclk_dpm(%struct.radeon_device* %45, i32 1)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %68

51:                                               ; preds = %44
  %52 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %53 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %51
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = load i32, i32* @PPSMC_MSG_PCIeDPM_Enable, align 4
  %59 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %57, i32 %58)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @PPSMC_Result_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %51
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %63, %49, %41
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @ci_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i64 @ci_send_msg_to_smc(%struct.radeon_device*, i32) #1

declare dso_local i32 @ci_enable_sclk_mclk_dpm(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
