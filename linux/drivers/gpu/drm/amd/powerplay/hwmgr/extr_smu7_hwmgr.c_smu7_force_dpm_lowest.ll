; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_force_dpm_lowest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_force_dpm_lowest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@PPSMC_MSG_SCLKDPM_SetEnabledMask = common dso_local global i32 0, align 4
@PPSMC_MSG_MCLKDPM_SetEnabledMask = common dso_local global i32 0, align 4
@PPSMC_MSG_PCIeDPM_ForceLevel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_force_dpm_lowest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_force_dpm_lowest(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %8, %struct.smu7_hwmgr** %3, align 8
  %9 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %1
  %14 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %21 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @phm_get_lowest_enabled_level(%struct.pp_hwmgr* %20, i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %27 = load i32, i32* @PPSMC_MSG_SCLKDPM_SetEnabledMask, align 4
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 1, %28
  %30 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %26, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %19, %13
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %32
  %38 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %39 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %45 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %46 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @phm_get_lowest_enabled_level(%struct.pp_hwmgr* %44, i64 %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %51 = load i32, i32* @PPSMC_MSG_MCLKDPM_SetEnabledMask, align 4
  %52 = load i32, i32* %4, align 4
  %53 = shl i32 1, %52
  %54 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %50, i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %43, %37
  br label %56

56:                                               ; preds = %55, %32
  %57 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %58 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %56
  %62 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %63 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %69 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %70 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @phm_get_lowest_enabled_level(%struct.pp_hwmgr* %68, i64 %72)
  store i32 %73, i32* %4, align 4
  %74 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %75 = load i32, i32* @PPSMC_MSG_PCIeDPM_ForceLevel, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %67, %61
  br label %79

79:                                               ; preds = %78, %56
  ret i32 0
}

declare dso_local i32 @phm_get_lowest_enabled_level(%struct.pp_hwmgr*, i64) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
