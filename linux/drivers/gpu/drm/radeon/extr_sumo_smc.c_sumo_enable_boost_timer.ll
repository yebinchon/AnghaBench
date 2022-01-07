; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_smc.c_sumo_enable_boost_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_smc.c_sumo_enable_boost_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.sumo_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@RCU_LCLK_SCALING_CNTL = common dso_local global i32 0, align 4
@LCLK_SCALING_TIMER_PRESCALER_MASK = common dso_local global i32 0, align 4
@LCLK_SCALING_TIMER_PRESCALER_SHIFT = common dso_local global i32 0, align 4
@RCU_GNB_PWR_REP_TIMER_CNTL = common dso_local global i32 0, align 4
@RCU_BOOST_MARGIN = common dso_local global i32 0, align 4
@RCU_THROTTLE_MARGIN = common dso_local global i32 0, align 4
@GNB_TDP_LIMIT = common dso_local global i32 0, align 4
@RCU_SclkDpmTdpLimitPG = common dso_local global i32 0, align 4
@SUMO_SMU_SERVICE_ROUTINE_GFX_SRV_ID_20 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sumo_enable_boost_timer(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.sumo_power_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %8)
  store %struct.sumo_power_info* %9, %struct.sumo_power_info** %3, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = call i32 @radeon_get_xclk(%struct.radeon_device* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @RCU_LCLK_SCALING_CNTL, align 4
  %13 = call i32 @RREG32_RCU(i32 %12)
  %14 = load i32, i32* @LCLK_SCALING_TIMER_PRESCALER_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @LCLK_SCALING_TIMER_PRESCALER_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sdiv i32 %18, 100
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @sumo_power_of_4(i32 %20)
  %22 = sdiv i32 %19, %21
  %23 = mul nsw i32 100, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 16
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 4
  %28 = or i32 %25, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @RCU_GNB_PWR_REP_TIMER_CNTL, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @WREG32_RCU(i32 %29, i32 %30)
  %32 = load i32, i32* @RCU_BOOST_MARGIN, align 4
  %33 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %34 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @WREG32_RCU(i32 %32, i32 %36)
  %38 = load i32, i32* @RCU_THROTTLE_MARGIN, align 4
  %39 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %40 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @WREG32_RCU(i32 %38, i32 %42)
  %44 = load i32, i32* @GNB_TDP_LIMIT, align 4
  %45 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %46 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @WREG32_RCU(i32 %44, i32 %48)
  %50 = load i32, i32* @RCU_SclkDpmTdpLimitPG, align 4
  %51 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %52 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @WREG32_RCU(i32 %50, i32 %54)
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = load i32, i32* @SUMO_SMU_SERVICE_ROUTINE_GFX_SRV_ID_20, align 4
  %58 = call i32 @sumo_send_msg_to_smu(%struct.radeon_device* %56, i32 %57)
  ret void
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_xclk(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_RCU(i32) #1

declare dso_local i32 @sumo_power_of_4(i32) #1

declare dso_local i32 @WREG32_RCU(i32, i32) #1

declare dso_local i32 @sumo_send_msg_to_smu(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
