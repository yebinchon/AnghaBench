; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_program_ttt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_program_ttt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.trinity_power_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMU_SCLK_DPM_TTT = common dso_local global i32 0, align 4
@HT_MASK = common dso_local global i32 0, align 4
@LT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @trinity_program_ttt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_program_ttt(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.trinity_power_info*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %5)
  store %struct.trinity_power_info* %6, %struct.trinity_power_info** %3, align 8
  %7 = load i32, i32* @SMU_SCLK_DPM_TTT, align 4
  %8 = call i32 @RREG32_SMC(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @HT_MASK, align 4
  %10 = load i32, i32* @LT_MASK, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %16 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 49
  %19 = mul nsw i32 %18, 8
  %20 = call i32 @HT(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %24 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 49
  %27 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %28 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %26, %30
  %32 = mul nsw i32 %31, 8
  %33 = call i32 @LT(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @SMU_SCLK_DPM_TTT, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @WREG32_SMC(i32 %36, i32 %37)
  ret void
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @HT(i32) #1

declare dso_local i32 @LT(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
