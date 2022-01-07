; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_freeze_sclk_mclk_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_freeze_sclk_mclk_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i32, i32, i32 }

@DPMTABLE_OD_UPDATE_SCLK = common dso_local global i32 0, align 4
@DPMTABLE_UPDATE_SCLK = common dso_local global i32 0, align 4
@PPSMC_MSG_SCLKDPM_FreezeLevel = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DPMTABLE_OD_UPDATE_MCLK = common dso_local global i32 0, align 4
@PPSMC_MSG_MCLKDPM_FreezeLevel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_freeze_sclk_mclk_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_freeze_sclk_mclk_dpm(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %6)
  store %struct.ci_power_info* %7, %struct.ci_power_info** %4, align 8
  %8 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %9 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %15 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %13
  %19 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %20 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DPMTABLE_OD_UPDATE_SCLK, align 4
  %23 = load i32, i32* @DPMTABLE_UPDATE_SCLK, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = load i32, i32* @PPSMC_MSG_SCLKDPM_FreezeLevel, align 4
  %30 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %28, i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @PPSMC_Result_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %62

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %18, %13
  %39 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %40 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %38
  %44 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %45 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DPMTABLE_OD_UPDATE_MCLK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = load i32, i32* @PPSMC_MSG_MCLKDPM_FreezeLevel, align 4
  %53 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %51, i32 %52)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @PPSMC_Result_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %62

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %43, %38
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %57, %34, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @ci_send_msg_to_smc(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
