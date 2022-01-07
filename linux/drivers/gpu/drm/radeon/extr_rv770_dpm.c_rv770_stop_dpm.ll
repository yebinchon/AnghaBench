; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_stop_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_stop_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@PPSMC_MSG_TwoLevelsDisabled = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Could not force DPM to low.\0A\00", align 1
@GENERAL_PWRMGT = common dso_local global i32 0, align 4
@GLOBAL_PWRMGT_EN = common dso_local global i32 0, align 4
@SCLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@SCLK_PWRMGT_OFF = common dso_local global i32 0, align 4
@MCLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@MPLL_PWRMGT_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv770_stop_dpm(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = load i32, i32* @PPSMC_MSG_TwoLevelsDisabled, align 4
  %6 = call i64 @rv770_send_msg_to_smc(%struct.radeon_device* %4, i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @PPSMC_Result_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* @GENERAL_PWRMGT, align 4
  %14 = load i32, i32* @GLOBAL_PWRMGT_EN, align 4
  %15 = xor i32 %14, -1
  %16 = call i32 @WREG32_P(i32 %13, i32 0, i32 %15)
  %17 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %18 = load i32, i32* @SCLK_PWRMGT_OFF, align 4
  %19 = load i32, i32* @SCLK_PWRMGT_OFF, align 4
  %20 = xor i32 %19, -1
  %21 = call i32 @WREG32_P(i32 %17, i32 %18, i32 %20)
  %22 = load i32, i32* @MCLK_PWRMGT_CNTL, align 4
  %23 = load i32, i32* @MPLL_PWRMGT_OFF, align 4
  %24 = load i32, i32* @MPLL_PWRMGT_OFF, align 4
  %25 = xor i32 %24, -1
  %26 = call i32 @WREG32_P(i32 %22, i32 %23, i32 %25)
  ret void
}

declare dso_local i64 @rv770_send_msg_to_smc(%struct.radeon_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
