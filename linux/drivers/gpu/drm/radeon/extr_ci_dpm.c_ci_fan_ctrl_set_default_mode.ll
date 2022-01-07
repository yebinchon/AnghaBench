; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_fan_ctrl_set_default_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_fan_ctrl_set_default_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i32, i32, i32 }

@CG_FDO_CTRL2 = common dso_local global i32 0, align 4
@FDO_PWM_MODE_MASK = common dso_local global i32 0, align 4
@TMIN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @ci_fan_ctrl_set_default_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_fan_ctrl_set_default_mode(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.ci_power_info*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %5)
  store %struct.ci_power_info* %6, %struct.ci_power_info** %3, align 8
  %7 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %8 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @CG_FDO_CTRL2, align 4
  %13 = call i32 @RREG32_SMC(i32 %12)
  %14 = load i32, i32* @FDO_PWM_MODE_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %18 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @FDO_PWM_MODE(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @CG_FDO_CTRL2, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @WREG32_SMC(i32 %23, i32 %24)
  %26 = load i32, i32* @CG_FDO_CTRL2, align 4
  %27 = call i32 @RREG32_SMC(i32 %26)
  %28 = load i32, i32* @TMIN_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  store i32 %30, i32* %4, align 4
  %31 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %32 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @TMIN(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @CG_FDO_CTRL2, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @WREG32_SMC(i32 %37, i32 %38)
  %40 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %41 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %11, %1
  ret void
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @FDO_PWM_MODE(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @TMIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
