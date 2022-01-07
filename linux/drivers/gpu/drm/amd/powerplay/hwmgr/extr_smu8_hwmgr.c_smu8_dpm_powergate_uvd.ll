; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_dpm_powergate_uvd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_dpm_powergate_uvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.smu8_hwmgr* }
%struct.smu8_hwmgr = type { i32 }

@AMD_IP_BLOCK_TYPE_UVD = common dso_local global i32 0, align 4
@AMD_PG_STATE_GATE = common dso_local global i32 0, align 4
@AMD_CG_STATE_GATE = common dso_local global i32 0, align 4
@AMD_CG_STATE_UNGATE = common dso_local global i32 0, align 4
@AMD_PG_STATE_UNGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, i32)* @smu8_dpm_powergate_uvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu8_dpm_powergate_uvd(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu8_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 1
  %8 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %7, align 8
  store %struct.smu8_hwmgr* %8, %struct.smu8_hwmgr** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %5, align 8
  %11 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AMD_IP_BLOCK_TYPE_UVD, align 4
  %19 = load i32, i32* @AMD_PG_STATE_GATE, align 4
  %20 = call i32 @amdgpu_device_ip_set_powergating_state(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AMD_IP_BLOCK_TYPE_UVD, align 4
  %25 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %26 = call i32 @amdgpu_device_ip_set_clockgating_state(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %28 = call i32 @smu8_dpm_update_uvd_dpm(%struct.pp_hwmgr* %27, i32 1)
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %30 = call i32 @smu8_dpm_powerdown_uvd(%struct.pp_hwmgr* %29)
  br label %48

31:                                               ; preds = %2
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %33 = call i32 @smu8_dpm_powerup_uvd(%struct.pp_hwmgr* %32)
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %35 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AMD_IP_BLOCK_TYPE_UVD, align 4
  %38 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %39 = call i32 @amdgpu_device_ip_set_clockgating_state(i32 %36, i32 %37, i32 %38)
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %41 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @AMD_IP_BLOCK_TYPE_UVD, align 4
  %44 = load i32, i32* @AMD_PG_STATE_UNGATE, align 4
  %45 = call i32 @amdgpu_device_ip_set_powergating_state(i32 %42, i32 %43, i32 %44)
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %47 = call i32 @smu8_dpm_update_uvd_dpm(%struct.pp_hwmgr* %46, i32 0)
  br label %48

48:                                               ; preds = %31, %14
  ret void
}

declare dso_local i32 @amdgpu_device_ip_set_powergating_state(i32, i32, i32) #1

declare dso_local i32 @amdgpu_device_ip_set_clockgating_state(i32, i32, i32) #1

declare dso_local i32 @smu8_dpm_update_uvd_dpm(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smu8_dpm_powerdown_uvd(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu8_dpm_powerup_uvd(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
