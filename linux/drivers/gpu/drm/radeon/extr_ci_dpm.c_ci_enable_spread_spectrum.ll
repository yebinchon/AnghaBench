; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_spread_spectrum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_spread_spectrum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i64 }

@GENERAL_PWRMGT = common dso_local global i32 0, align 4
@DYN_SPREAD_SPECTRUM_EN = common dso_local global i32 0, align 4
@CG_SPLL_SPREAD_SPECTRUM = common dso_local global i32 0, align 4
@SSEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @ci_enable_spread_spectrum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_enable_spread_spectrum(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ci_power_info*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %7)
  store %struct.ci_power_info* %8, %struct.ci_power_info** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %13 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i32, i32* @GENERAL_PWRMGT, align 4
  %18 = call i32 @RREG32_SMC(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @DYN_SPREAD_SPECTRUM_EN, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @GENERAL_PWRMGT, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @WREG32_SMC(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %11
  br label %45

26:                                               ; preds = %2
  %27 = load i32, i32* @CG_SPLL_SPREAD_SPECTRUM, align 4
  %28 = call i32 @RREG32_SMC(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @SSEN, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @CG_SPLL_SPREAD_SPECTRUM, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @WREG32_SMC(i32 %33, i32 %34)
  %36 = load i32, i32* @GENERAL_PWRMGT, align 4
  %37 = call i32 @RREG32_SMC(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @DYN_SPREAD_SPECTRUM_EN, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @GENERAL_PWRMGT, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @WREG32_SMC(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %26, %25
  ret void
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
