; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_force_nbp_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_force_nbp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.sumo_power_info = type { i32 }
%struct.sumo_ps = type { i32 }

@SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE = common dso_local global i32 0, align 4
@CG_SCLK_DPM_CTRL_3 = common dso_local global i32 0, align 4
@FORCE_NB_PSTATE_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @sumo_force_nbp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_force_nbp_state(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.sumo_power_info*, align 8
  %6 = alloca %struct.sumo_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %7)
  store %struct.sumo_power_info* %8, %struct.sumo_power_info** %5, align 8
  %9 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %10 = call %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps* %9)
  store %struct.sumo_ps* %10, %struct.sumo_ps** %6, align 8
  %11 = load %struct.sumo_power_info*, %struct.sumo_power_info** %5, align 8
  %12 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %2
  %16 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %17 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i32, i32* @CG_SCLK_DPM_CTRL_3, align 4
  %24 = load i32, i32* @FORCE_NB_PSTATE_1, align 4
  %25 = load i32, i32* @FORCE_NB_PSTATE_1, align 4
  %26 = xor i32 %25, -1
  %27 = call i32 @WREG32_P(i32 %23, i32 %24, i32 %26)
  br label %33

28:                                               ; preds = %15
  %29 = load i32, i32* @CG_SCLK_DPM_CTRL_3, align 4
  %30 = load i32, i32* @FORCE_NB_PSTATE_1, align 4
  %31 = xor i32 %30, -1
  %32 = call i32 @WREG32_P(i32 %29, i32 0, i32 %31)
  br label %33

33:                                               ; preds = %28, %22
  br label %34

34:                                               ; preds = %33, %2
  ret void
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
