; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_dpm_en_umd_pstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_dpm_en_umd_pstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i32, i32 }

@AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i32 0, align 4
@AMD_IP_BLOCK_TYPE_GFX = common dso_local global i32 0, align 4
@AMD_CG_STATE_UNGATE = common dso_local global i32 0, align 4
@AMD_PG_STATE_UNGATE = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_EXIT = common dso_local global i32 0, align 4
@AMD_CG_STATE_GATE = common dso_local global i32 0, align 4
@AMD_PG_STATE_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, i32*)* @pp_dpm_en_umd_pstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_dpm_en_umd_pstate(%struct.pp_hwmgr* %0, i32* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD, align 4
  %7 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %30 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 2
  store i32 1, i32* %32, align 4
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AMD_IP_BLOCK_TYPE_GFX, align 4
  %37 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %38 = call i32 @amdgpu_device_ip_set_clockgating_state(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AMD_IP_BLOCK_TYPE_GFX, align 4
  %43 = load i32, i32* @AMD_PG_STATE_UNGATE, align 4
  %44 = call i32 @amdgpu_device_ip_set_powergating_state(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %25, %19
  br label %78

46:                                               ; preds = %2
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %77, label %52

52:                                               ; preds = %46
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_EXIT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %59 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %4, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %64 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %63, i32 0, i32 2
  store i32 0, i32* %64, align 4
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %66 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AMD_IP_BLOCK_TYPE_GFX, align 4
  %69 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %70 = call i32 @amdgpu_device_ip_set_clockgating_state(i32 %67, i32 %68, i32 %69)
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %72 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AMD_IP_BLOCK_TYPE_GFX, align 4
  %75 = load i32, i32* @AMD_PG_STATE_GATE, align 4
  %76 = call i32 @amdgpu_device_ip_set_powergating_state(i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %62, %46
  br label %78

78:                                               ; preds = %77, %45
  ret void
}

declare dso_local i32 @amdgpu_device_ip_set_clockgating_state(i32, i32, i32) #1

declare dso_local i32 @amdgpu_device_ip_set_powergating_state(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
