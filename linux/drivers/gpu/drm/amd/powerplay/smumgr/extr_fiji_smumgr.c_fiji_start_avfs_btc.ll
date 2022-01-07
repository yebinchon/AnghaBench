; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_start_avfs_btc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_start_avfs_btc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64 }
%struct.smu7_smumgr = type { i64 }

@PPSMC_MSG_PerformBtc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"[AVFS][Fiji_PerformBtc] PerformBTC SMU msg failed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mmCP_MEC_CNTL = common dso_local global i32 0, align 4
@mmGRBM_SOFT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @fiji_start_avfs_btc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_start_avfs_btc(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu7_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.smu7_smumgr*
  store %struct.smu7_smumgr* %8, %struct.smu7_smumgr** %4, align 8
  %9 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %10 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 0, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = load i32, i32* @PPSMC_MSG_PerformBtc, align 4
  %16 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %17 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @smu7_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %14, i32 %15, i64 %18)
  %20 = icmp ne i64 0, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %13
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %28 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @mmCP_MEC_CNTL, align 4
  %31 = call i32 @cgs_write_register(i32 %29, i32 %30, i32 1342177280)
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %36 = call i32 @cgs_write_register(i32 %34, i32 %35, i32 -1)
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %38 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %41 = call i32 @cgs_write_register(i32 %39, i32 %40, i32 0)
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @smu7_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i64) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @cgs_write_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
