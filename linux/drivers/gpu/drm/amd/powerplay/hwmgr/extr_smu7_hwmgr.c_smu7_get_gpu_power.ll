; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_gpu_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_gpu_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_GetCurrPkgPwr = common dso_local global i32 0, align 4
@mmSMC_MSG_ARG_0 = common dso_local global i32 0, align 4
@PPSMC_MSG_PmStatusLogStart = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@ixSMU_PM_STATUS_95 = common dso_local global i32 0, align 4
@PPSMC_MSG_PmStatusLogSample = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64*)* @smu7_get_gpu_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_get_gpu_power(%struct.pp_hwmgr* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %15 = load i32, i32* @PPSMC_MSG_GetCurrPkgPwr, align 4
  %16 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %14, i32 %15, i32 0)
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @mmSMC_MSG_ARG_0, align 4
  %21 = call i64 @cgs_read_register(i32 %19, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64*, i64** %5, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %61

27:                                               ; preds = %13
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %29 = load i32, i32* @PPSMC_MSG_PmStatusLogStart, align 4
  %30 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %28, i32 %29)
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %35 = load i32, i32* @ixSMU_PM_STATUS_95, align 4
  %36 = call i32 @cgs_write_ind_register(i32 %33, i32 %34, i32 %35, i32 0)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %55, %27
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 10
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = call i32 @msleep(i32 500)
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %43 = load i32, i32* @PPSMC_MSG_PmStatusLogSample, align 4
  %44 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %42, i32 %43)
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %46 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %49 = load i32, i32* @ixSMU_PM_STATUS_95, align 4
  %50 = call i64 @cgs_read_ind_register(i32 %47, i32 %48, i32 %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %58

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %37

58:                                               ; preds = %53, %37
  %59 = load i64, i64* %7, align 8
  %60 = load i64*, i64** %5, align 8
  store i64 %59, i64* %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %26, %10
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i64 @cgs_read_register(i32, i32) #1

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @cgs_write_ind_register(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @cgs_read_ind_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
