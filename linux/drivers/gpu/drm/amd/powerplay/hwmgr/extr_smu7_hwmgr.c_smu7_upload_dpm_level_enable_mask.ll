; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_upload_dpm_level_enable_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_upload_dpm_level_enable_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@PP_TABLE_V1 = common dso_local global i64 0, align 8
@PPSMC_MSG_SCLKDPM_SetEnabledMask = common dso_local global i32 0, align 4
@PPSMC_MSG_MCLKDPM_SetEnabledMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_upload_dpm_level_enable_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_upload_dpm_level_enable_mask(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %7, %struct.smu7_hwmgr** %3, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PP_TABLE_V1, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = call i32 @phm_apply_dal_min_voltage_request(%struct.pp_hwmgr* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %23 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %29 = load i32, i32* @PPSMC_MSG_SCLKDPM_SetEnabledMask, align 4
  %30 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %31 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %28, i32 %29, i64 %33)
  br label %35

35:                                               ; preds = %27, %21
  br label %36

36:                                               ; preds = %35, %16
  %37 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %38 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  %42 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %43 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %49 = load i32, i32* @PPSMC_MSG_MCLKDPM_SetEnabledMask, align 4
  %50 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %51 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %48, i32 %49, i64 %53)
  br label %55

55:                                               ; preds = %47, %41
  br label %56

56:                                               ; preds = %55, %36
  ret i32 0
}

declare dso_local i32 @phm_apply_dal_min_voltage_request(%struct.pp_hwmgr*) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
