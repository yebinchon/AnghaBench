; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_enable_spread_spectrum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_enable_spread_spectrum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.rv7xx_power_info = type { i64, i64 }

@GENERAL_PWRMGT = common dso_local global i32 0, align 4
@DYN_SPREAD_SPECTRUM_EN = common dso_local global i32 0, align 4
@CHIP_RV740 = common dso_local global i64 0, align 8
@CG_SPLL_SPREAD_SPECTRUM = common dso_local global i32 0, align 4
@SSEN = common dso_local global i32 0, align 4
@CG_MPLL_SPREAD_SPECTRUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @rv770_enable_spread_spectrum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_enable_spread_spectrum(%struct.radeon_device* %0, i32 %1) #0 {
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
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %12 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %11, i32 0, i32 1
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
  %22 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %23 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHIP_RV740, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = call i32 @rv740_enable_mclk_spread_spectrum(%struct.radeon_device* %33, i32 1)
  br label %35

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %21
  br label %59

37:                                               ; preds = %2
  %38 = load i32, i32* @CG_SPLL_SPREAD_SPECTRUM, align 4
  %39 = load i32, i32* @SSEN, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @WREG32_P(i32 %38, i32 0, i32 %40)
  %42 = load i32, i32* @GENERAL_PWRMGT, align 4
  %43 = load i32, i32* @DYN_SPREAD_SPECTRUM_EN, align 4
  %44 = xor i32 %43, -1
  %45 = call i32 @WREG32_P(i32 %42, i32 0, i32 %44)
  %46 = load i32, i32* @CG_MPLL_SPREAD_SPECTRUM, align 4
  %47 = load i32, i32* @SSEN, align 4
  %48 = xor i32 %47, -1
  %49 = call i32 @WREG32_P(i32 %46, i32 0, i32 %48)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CHIP_RV740, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %37
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = call i32 @rv740_enable_mclk_spread_spectrum(%struct.radeon_device* %56, i32 0)
  br label %58

58:                                               ; preds = %55, %37
  br label %59

59:                                               ; preds = %58, %36
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @rv740_enable_mclk_spread_spectrum(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
