; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_baco.c_vega20_baco_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_baco.c_vega20_baco_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.amdgpu_device = type { i32 }

@BACO_STATE_IN = common dso_local global i32 0, align 4
@THM = common dso_local global i32 0, align 4
@mmTHM_BACO_CNTL = common dso_local global i32 0, align 4
@PPSMC_MSG_EnterBaco = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BACO_STATE_OUT = common dso_local global i32 0, align 4
@PPSMC_MSG_ExitBaco = common dso_local global i32 0, align 4
@clean_baco_tbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega20_baco_set_state(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %6, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %14 = call i32 @vega20_baco_get_state(%struct.pp_hwmgr* %13, i32* %7)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @BACO_STATE_IN, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i32, i32* @THM, align 4
  %25 = load i32, i32* @mmTHM_BACO_CNTL, align 4
  %26 = call i32 @RREG32_SOC15(i32 %24, i32 0, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, -2147483648
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @THM, align 4
  %30 = load i32, i32* @mmTHM_BACO_CNTL, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @WREG32_SOC15(i32 %29, i32 0, i32 %30, i32 %31)
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %34 = load i32, i32* @PPSMC_MSG_EnterBaco, align 4
  %35 = call i64 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %33, i32 %34, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %66

40:                                               ; preds = %23
  br label %65

41:                                               ; preds = %19
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @BACO_STATE_OUT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %47 = load i32, i32* @PPSMC_MSG_ExitBaco, align 4
  %48 = call i64 @smum_send_msg_to_smc(%struct.pp_hwmgr* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %66

53:                                               ; preds = %45
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %55 = load i32, i32* @clean_baco_tbl, align 4
  %56 = load i32, i32* @clean_baco_tbl, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = call i32 @soc15_baco_program_registers(%struct.pp_hwmgr* %54, i32 %55, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %66

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64, %40
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %60, %50, %37, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @vega20_baco_get_state(%struct.pp_hwmgr*, i32*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i64 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i64 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @soc15_baco_program_registers(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
