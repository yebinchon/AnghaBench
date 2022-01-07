; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_force_clock_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_force_clock_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.smu7_hwmgr = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_SCLKDPM_SetEnabledMask = common dso_local global i32 0, align 4
@PPSMC_MSG_MCLKDPM_SetEnabledMask = common dso_local global i32 0, align 4
@PPSMC_MSG_PCIeDPM_UnForceLevel = common dso_local global i32 0, align 4
@PPSMC_MSG_PCIeDPM_ForceLevel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i64)* @smu7_force_clock_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_force_clock_level(%struct.pp_hwmgr* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.smu7_hwmgr*, align 8
  %9 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %13, %struct.smu7_hwmgr** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %86

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %84 [
    i32 128, label %21
    i32 130, label %37
    i32 129, label %53
  ]

21:                                               ; preds = %19
  %22 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %23 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %28 = load i32, i32* @PPSMC_MSG_SCLKDPM_SetEnabledMask, align 4
  %29 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %30 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %32, %33
  %35 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %27, i32 %28, i64 %34)
  br label %36

36:                                               ; preds = %26, %21
  br label %85

37:                                               ; preds = %19
  %38 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %39 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %44 = load i32, i32* @PPSMC_MSG_MCLKDPM_SetEnabledMask, align 4
  %45 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %46 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = and i64 %48, %49
  %51 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %43, i32 %44, i64 %50)
  br label %52

52:                                               ; preds = %42, %37
  br label %85

53:                                               ; preds = %19
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %56 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = and i64 %54, %58
  store i64 %59, i64* %9, align 8
  %60 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %8, align 8
  %61 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %53
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @fls(i64 %65)
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @ffs(i64 %67)
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %72 = load i32, i32* @PPSMC_MSG_PCIeDPM_UnForceLevel, align 4
  %73 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %71, i32 %72)
  br label %82

74:                                               ; preds = %64
  %75 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %76 = load i32, i32* @PPSMC_MSG_PCIeDPM_ForceLevel, align 4
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @fls(i64 %77)
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %75, i32 %76, i64 %80)
  br label %82

82:                                               ; preds = %74, %70
  br label %83

83:                                               ; preds = %82, %53
  br label %85

84:                                               ; preds = %19
  br label %85

85:                                               ; preds = %84, %83, %52, %36
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %16
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i64) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
