; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_enable_spread_spectrum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_enable_spread_spectrum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i64 }

@GENERAL_PWRMGT = common dso_local global i32 0, align 4
@DYN_SPREAD_SPECTRUM_EN = common dso_local global i32 0, align 4
@CG_SPLL_SPREAD_SPECTRUM = common dso_local global i32 0, align 4
@SSEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @si_enable_spread_spectrum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_enable_spread_spectrum(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rv7xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %6)
  store %struct.rv7xx_power_info* %7, %struct.rv7xx_power_info** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %12 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @GENERAL_PWRMGT, align 4
  %17 = load i32, i32* @DYN_SPREAD_SPECTRUM_EN, align 4
  %18 = load i32, i32* @DYN_SPREAD_SPECTRUM_EN, align 4
  %19 = xor i32 %18, -1
  %20 = call i32 @WREG32_P(i32 %16, i32 %17, i32 %19)
  br label %21

21:                                               ; preds = %15, %10
  br label %31

22:                                               ; preds = %2
  %23 = load i32, i32* @CG_SPLL_SPREAD_SPECTRUM, align 4
  %24 = load i32, i32* @SSEN, align 4
  %25 = xor i32 %24, -1
  %26 = call i32 @WREG32_P(i32 %23, i32 0, i32 %25)
  %27 = load i32, i32* @GENERAL_PWRMGT, align 4
  %28 = load i32, i32* @DYN_SPREAD_SPECTRUM_EN, align 4
  %29 = xor i32 %28, -1
  %30 = call i32 @WREG32_P(i32 %27, i32 0, i32 %29)
  br label %31

31:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
