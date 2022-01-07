; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_sclk_mclk_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_sclk_mclk_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i32, i32 }

@PPSMC_MSG_DPM_Enable = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_MCLKDPM_Enable = common dso_local global i32 0, align 4
@MC_SEQ_CNTL_3 = common dso_local global i32 0, align 4
@CAC_EN = common dso_local global i32 0, align 4
@LCAC_MC0_CNTL = common dso_local global i32 0, align 4
@LCAC_MC1_CNTL = common dso_local global i32 0, align 4
@LCAC_CPL_CNTL = common dso_local global i32 0, align 4
@PPSMC_MSG_DPM_Disable = common dso_local global i32 0, align 4
@PPSMC_MSG_MCLKDPM_Disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32)* @ci_enable_sclk_mclk_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_enable_sclk_mclk_dpm(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ci_power_info*, align 8
  %7 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %8)
  store %struct.ci_power_info* %9, %struct.ci_power_info** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %2
  %13 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %14 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = load i32, i32* @PPSMC_MSG_DPM_Enable, align 4
  %20 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %18, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @PPSMC_Result_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %97

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %12
  %29 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %30 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %62, label %33

33:                                               ; preds = %28
  %34 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %35 = load i32, i32* @PPSMC_MSG_MCLKDPM_Enable, align 4
  %36 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %34, i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @PPSMC_Result_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %97

43:                                               ; preds = %33
  %44 = load i32, i32* @MC_SEQ_CNTL_3, align 4
  %45 = load i32, i32* @CAC_EN, align 4
  %46 = load i32, i32* @CAC_EN, align 4
  %47 = xor i32 %46, -1
  %48 = call i32 @WREG32_P(i32 %44, i32 %45, i32 %47)
  %49 = load i32, i32* @LCAC_MC0_CNTL, align 4
  %50 = call i32 @WREG32_SMC(i32 %49, i32 5)
  %51 = load i32, i32* @LCAC_MC1_CNTL, align 4
  %52 = call i32 @WREG32_SMC(i32 %51, i32 5)
  %53 = load i32, i32* @LCAC_CPL_CNTL, align 4
  %54 = call i32 @WREG32_SMC(i32 %53, i32 1048581)
  %55 = call i32 @udelay(i32 10)
  %56 = load i32, i32* @LCAC_MC0_CNTL, align 4
  %57 = call i32 @WREG32_SMC(i32 %56, i32 4194309)
  %58 = load i32, i32* @LCAC_MC1_CNTL, align 4
  %59 = call i32 @WREG32_SMC(i32 %58, i32 4194309)
  %60 = load i32, i32* @LCAC_CPL_CNTL, align 4
  %61 = call i32 @WREG32_SMC(i32 %60, i32 5242885)
  br label %62

62:                                               ; preds = %43, %28
  br label %96

63:                                               ; preds = %2
  %64 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %65 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %63
  %69 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %70 = load i32, i32* @PPSMC_MSG_DPM_Disable, align 4
  %71 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %69, i32 %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @PPSMC_Result_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %97

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %63
  %80 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %81 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %79
  %85 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %86 = load i32, i32* @PPSMC_MSG_MCLKDPM_Disable, align 4
  %87 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %85, i32 %86)
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @PPSMC_Result_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %97

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %79
  br label %96

96:                                               ; preds = %95, %62
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %91, %75, %40, %24
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @ci_send_msg_to_smc(%struct.radeon_device*, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
