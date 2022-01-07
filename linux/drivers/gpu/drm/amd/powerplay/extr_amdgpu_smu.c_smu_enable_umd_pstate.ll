; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_enable_umd_pstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_enable_umd_pstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, i32, %struct.smu_dpm_context }
%struct.smu_dpm_context = type { i32, i32, i32, i32 }

@AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AMD_IP_BLOCK_TYPE_GFX = common dso_local global i32 0, align 4
@AMD_CG_STATE_UNGATE = common dso_local global i32 0, align 4
@AMD_PG_STATE_UNGATE = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_EXIT = common dso_local global i32 0, align 4
@AMD_CG_STATE_GATE = common dso_local global i32 0, align 4
@AMD_PG_STATE_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @smu_enable_umd_pstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_enable_umd_pstate(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smu_context*, align 8
  %8 = alloca %struct.smu_dpm_context*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD, align 4
  %10 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.smu_context*
  store %struct.smu_context* %17, %struct.smu_context** %7, align 8
  %18 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %19 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %18, i32 0, i32 2
  store %struct.smu_dpm_context* %19, %struct.smu_dpm_context** %8, align 8
  %20 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %21 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %8, align 8
  %26 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %99

32:                                               ; preds = %24
  %33 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %8, align 8
  %34 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %32
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %8, align 8
  %47 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %8, align 8
  %50 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %8, align 8
  %52 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  %53 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %54 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AMD_IP_BLOCK_TYPE_GFX, align 4
  %57 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %58 = call i32 @amdgpu_device_ip_set_clockgating_state(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %60 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AMD_IP_BLOCK_TYPE_GFX, align 4
  %63 = load i32, i32* @AMD_PG_STATE_UNGATE, align 4
  %64 = call i32 @amdgpu_device_ip_set_powergating_state(i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %45, %39
  br label %98

66:                                               ; preds = %32
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %97, label %72

72:                                               ; preds = %66
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_EXIT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %8, align 8
  %79 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %8, align 8
  %84 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %83, i32 0, i32 2
  store i32 0, i32* %84, align 4
  %85 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %86 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AMD_IP_BLOCK_TYPE_GFX, align 4
  %89 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %90 = call i32 @amdgpu_device_ip_set_clockgating_state(i32 %87, i32 %88, i32 %89)
  %91 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %92 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @AMD_IP_BLOCK_TYPE_GFX, align 4
  %95 = load i32, i32* @AMD_PG_STATE_GATE, align 4
  %96 = call i32 @amdgpu_device_ip_set_powergating_state(i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %82, %66
  br label %98

98:                                               ; preds = %97, %65
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %29
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @amdgpu_device_ip_set_clockgating_state(i32, i32, i32) #1

declare dso_local i32 @amdgpu_device_ip_set_powergating_state(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
