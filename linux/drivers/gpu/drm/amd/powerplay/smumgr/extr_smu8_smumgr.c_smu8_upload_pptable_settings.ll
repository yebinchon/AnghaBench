; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_upload_pptable_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_upload_pptable_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu8_smumgr* }
%struct.smu8_smumgr = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE = common dso_local global i64 0, align 8
@PPSMC_MSG_SetClkTableAddrHi = common dso_local global i32 0, align 4
@PPSMC_MSG_SetClkTableAddrLo = common dso_local global i32 0, align 4
@PPSMC_MSG_ExecuteJob = common dso_local global i32 0, align 4
@PPSMC_MSG_ClkTableXferToSmu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_upload_pptable_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_upload_pptable_settings(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu8_smumgr*, align 8
  %4 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %6, align 8
  store %struct.smu8_smumgr* %7, %struct.smu8_smumgr** %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %11 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %16 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %29

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %8

29:                                               ; preds = %24, %8
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %31 = load i32, i32* @PPSMC_MSG_SetClkTableAddrHi, align 4
  %32 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %33 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @upper_32_bits(i32 %38)
  %40 = call i32 @smu8_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %30, i32 %31, i32 %39)
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %42 = load i32, i32* @PPSMC_MSG_SetClkTableAddrLo, align 4
  %43 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %44 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @lower_32_bits(i32 %49)
  %51 = call i32 @smu8_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %41, i32 %42, i32 %50)
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %53 = load i32, i32* @PPSMC_MSG_ExecuteJob, align 4
  %54 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %3, align 8
  %55 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @smu8_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %52, i32 %53, i32 %56)
  %58 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %59 = load i32, i32* @PPSMC_MSG_ClkTableXferToSmu, align 4
  %60 = call i32 @smu8_send_msg_to_smc(%struct.pp_hwmgr* %58, i32 %59)
  ret i32 0
}

declare dso_local i32 @smu8_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @smu8_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
