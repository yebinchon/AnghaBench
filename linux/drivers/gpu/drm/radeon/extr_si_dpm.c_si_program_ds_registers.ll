; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_program_ds_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_program_ds_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.evergreen_power_info = type { i64 }

@MISC_CLK_CNTL = common dso_local global i32 0, align 4
@DEEP_SLEEP_CLK_SEL_MASK = common dso_local global i32 0, align 4
@CG_SPLL_AUTOSCALE_CNTL = common dso_local global i32 0, align 4
@AUTOSCALE_ON_SS_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_program_ds_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_program_ds_registers(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.evergreen_power_info*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %5)
  store %struct.evergreen_power_info* %6, %struct.evergreen_power_info** %3, align 8
  store i32 1, i32* %4, align 4
  %7 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %8 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @MISC_CLK_CNTL, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @DEEP_SLEEP_CLK_SEL(i32 %13)
  %15 = load i32, i32* @DEEP_SLEEP_CLK_SEL_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = call i32 @WREG32_P(i32 %12, i32 %14, i32 %16)
  %18 = load i32, i32* @CG_SPLL_AUTOSCALE_CNTL, align 4
  %19 = load i32, i32* @AUTOSCALE_ON_SS_CLEAR, align 4
  %20 = load i32, i32* @AUTOSCALE_ON_SS_CLEAR, align 4
  %21 = xor i32 %20, -1
  %22 = call i32 @WREG32_P(i32 %18, i32 %19, i32 %21)
  br label %23

23:                                               ; preds = %11, %1
  ret void
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @DEEP_SLEEP_CLK_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
