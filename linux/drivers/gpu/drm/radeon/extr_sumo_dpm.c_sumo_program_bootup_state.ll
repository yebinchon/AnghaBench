; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_bootup_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_bootup_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.sumo_power_info = type { i32 }

@CG_SCLK_DPM_CTRL_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @sumo_program_bootup_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_program_bootup_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.sumo_power_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %6)
  store %struct.sumo_power_info* %7, %struct.sumo_power_info** %3, align 8
  %8 = load i32, i32* @CG_SCLK_DPM_CTRL_4, align 4
  %9 = call i32 @RREG32(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %12 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %11, i32 0, i32 0
  %13 = call i32 @sumo_program_power_level(%struct.radeon_device* %10, i32* %12, i32 0)
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, -256
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @CG_SCLK_DPM_CTRL_4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @WREG32(i32 %16, i32 %17)
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %26, %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @sumo_power_level_enable(%struct.radeon_device* %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %19

29:                                               ; preds = %19
  ret void
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @sumo_program_power_level(%struct.radeon_device*, i32*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @sumo_power_level_enable(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
