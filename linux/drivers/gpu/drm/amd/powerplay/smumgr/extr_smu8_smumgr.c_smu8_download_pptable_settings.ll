; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_download_pptable_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_download_pptable_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu8_smumgr* }
%struct.smu8_smumgr = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.SMU8_Fusion_ClkTable = type { i32 }

@SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE = common dso_local global i64 0, align 8
@PPSMC_MSG_SetClkTableAddrHi = common dso_local global i32 0, align 4
@PPSMC_MSG_SetClkTableAddrLo = common dso_local global i32 0, align 4
@PPSMC_MSG_ExecuteJob = common dso_local global i32 0, align 4
@PPSMC_MSG_ClkTableXferToDram = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i8**)* @smu8_download_pptable_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_download_pptable_settings(%struct.pp_hwmgr* %0, i8** %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.smu8_smumgr*, align 8
  %6 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 0
  %9 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %8, align 8
  store %struct.smu8_smumgr* %9, %struct.smu8_smumgr** %5, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %28, %2
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %13 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %18 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %31

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %10

31:                                               ; preds = %26, %10
  %32 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %33 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.SMU8_Fusion_ClkTable*
  %40 = bitcast %struct.SMU8_Fusion_ClkTable* %39 to i8*
  %41 = load i8**, i8*** %4, align 8
  store i8* %40, i8** %41, align 8
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %43 = load i32, i32* @PPSMC_MSG_SetClkTableAddrHi, align 4
  %44 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %45 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @upper_32_bits(i32 %50)
  %52 = call i32 @smu8_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %42, i32 %43, i32 %51)
  %53 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %54 = load i32, i32* @PPSMC_MSG_SetClkTableAddrLo, align 4
  %55 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %56 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @lower_32_bits(i32 %61)
  %63 = call i32 @smu8_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %53, i32 %54, i32 %62)
  %64 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %65 = load i32, i32* @PPSMC_MSG_ExecuteJob, align 4
  %66 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %67 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @smu8_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %64, i32 %65, i32 %68)
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %71 = load i32, i32* @PPSMC_MSG_ClkTableXferToDram, align 4
  %72 = call i32 @smu8_send_msg_to_smc(%struct.pp_hwmgr* %70, i32 %71)
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
