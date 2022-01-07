; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_powergate_vcn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_powergate_vcn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64 }
%struct.smu10_hwmgr = type { i32 }

@AMD_IP_BLOCK_TYPE_VCN = common dso_local global i32 0, align 4
@AMD_PG_STATE_GATE = common dso_local global i32 0, align 4
@PPSMC_MSG_PowerDownVcn = common dso_local global i32 0, align 4
@PPSMC_MSG_PowerUpVcn = common dso_local global i32 0, align 4
@AMD_PG_STATE_UNGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, i32)* @smu10_powergate_vcn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu10_powergate_vcn(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu10_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.smu10_hwmgr*
  store %struct.smu10_hwmgr* %9, %struct.smu10_hwmgr** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @AMD_IP_BLOCK_TYPE_VCN, align 4
  %17 = load i32, i32* @AMD_PG_STATE_GATE, align 4
  %18 = call i32 @amdgpu_device_ip_set_powergating_state(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %20 = load i32, i32* @PPSMC_MSG_PowerDownVcn, align 4
  %21 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %19, i32 %20, i32 0)
  %22 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %5, align 8
  %23 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %26 = load i32, i32* @PPSMC_MSG_PowerUpVcn, align 4
  %27 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %25, i32 %26, i32 0)
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %29 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AMD_IP_BLOCK_TYPE_VCN, align 4
  %32 = load i32, i32* @AMD_PG_STATE_UNGATE, align 4
  %33 = call i32 @amdgpu_device_ip_set_powergating_state(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %5, align 8
  %35 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %24, %12
  ret void
}

declare dso_local i32 @amdgpu_device_ip_set_powergating_state(i32, i32, i32) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
