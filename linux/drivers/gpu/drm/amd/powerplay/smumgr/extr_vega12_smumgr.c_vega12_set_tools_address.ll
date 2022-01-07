; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega12_smumgr.c_vega12_set_tools_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vega12_smumgr.c_vega12_set_tools_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.vega12_smumgr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@TABLE_PMSTATUSLOG = common dso_local global i64 0, align 8
@PPSMC_MSG_SetToolsDramAddrHigh = common dso_local global i32 0, align 4
@PPSMC_MSG_SetToolsDramAddrLow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega12_set_tools_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega12_set_tools_address(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega12_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.vega12_smumgr*
  store %struct.vega12_smumgr* %7, %struct.vega12_smumgr** %3, align 8
  %8 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %9 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %1
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %19 = load i32, i32* @PPSMC_MSG_SetToolsDramAddrHigh, align 4
  %20 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %21 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @upper_32_bits(i64 %27)
  %29 = call i32 @smu9_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %18, i32 %19, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %17
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %33 = load i32, i32* @PPSMC_MSG_SetToolsDramAddrLow, align 4
  %34 = load %struct.vega12_smumgr*, %struct.vega12_smumgr** %3, align 8
  %35 = getelementptr inbounds %struct.vega12_smumgr, %struct.vega12_smumgr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i64, i64* @TABLE_PMSTATUSLOG, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @lower_32_bits(i64 %41)
  %43 = call i32 @smu9_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %32, i32 %33, i32 %42)
  br label %44

44:                                               ; preds = %31, %17
  br label %45

45:                                               ; preds = %44, %1
  ret i32 0
}

declare dso_local i32 @smu9_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
