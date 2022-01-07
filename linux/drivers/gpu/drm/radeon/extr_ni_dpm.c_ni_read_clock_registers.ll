; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_read_clock_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_read_clock_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ni_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@CG_SPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@CG_SPLL_FUNC_CNTL_2 = common dso_local global i32 0, align 4
@CG_SPLL_FUNC_CNTL_3 = common dso_local global i32 0, align 4
@CG_SPLL_FUNC_CNTL_4 = common dso_local global i32 0, align 4
@CG_SPLL_SPREAD_SPECTRUM = common dso_local global i32 0, align 4
@CG_SPLL_SPREAD_SPECTRUM_2 = common dso_local global i32 0, align 4
@MPLL_AD_FUNC_CNTL = common dso_local global i32 0, align 4
@MPLL_AD_FUNC_CNTL_2 = common dso_local global i32 0, align 4
@MPLL_DQ_FUNC_CNTL = common dso_local global i32 0, align 4
@MPLL_DQ_FUNC_CNTL_2 = common dso_local global i32 0, align 4
@MCLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@DLL_CNTL = common dso_local global i32 0, align 4
@MPLL_SS1 = common dso_local global i32 0, align 4
@MPLL_SS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @ni_read_clock_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_read_clock_registers(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.ni_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %4)
  store %struct.ni_power_info* %5, %struct.ni_power_info** %3, align 8
  %6 = load i32, i32* @CG_SPLL_FUNC_CNTL, align 4
  %7 = call i8* @RREG32(i32 %6)
  %8 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %9 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 13
  store i8* %7, i8** %10, align 8
  %11 = load i32, i32* @CG_SPLL_FUNC_CNTL_2, align 4
  %12 = call i8* @RREG32(i32 %11)
  %13 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %14 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 12
  store i8* %12, i8** %15, align 8
  %16 = load i32, i32* @CG_SPLL_FUNC_CNTL_3, align 4
  %17 = call i8* @RREG32(i32 %16)
  %18 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %19 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 11
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* @CG_SPLL_FUNC_CNTL_4, align 4
  %22 = call i8* @RREG32(i32 %21)
  %23 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %24 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 10
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* @CG_SPLL_SPREAD_SPECTRUM, align 4
  %27 = call i8* @RREG32(i32 %26)
  %28 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %29 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 9
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* @CG_SPLL_SPREAD_SPECTRUM_2, align 4
  %32 = call i8* @RREG32(i32 %31)
  %33 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %34 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 8
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @MPLL_AD_FUNC_CNTL, align 4
  %37 = call i8* @RREG32(i32 %36)
  %38 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %39 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 7
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* @MPLL_AD_FUNC_CNTL_2, align 4
  %42 = call i8* @RREG32(i32 %41)
  %43 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %44 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 6
  store i8* %42, i8** %45, align 8
  %46 = load i32, i32* @MPLL_DQ_FUNC_CNTL, align 4
  %47 = call i8* @RREG32(i32 %46)
  %48 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %49 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 5
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* @MPLL_DQ_FUNC_CNTL_2, align 4
  %52 = call i8* @RREG32(i32 %51)
  %53 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %54 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* @MCLK_PWRMGT_CNTL, align 4
  %57 = call i8* @RREG32(i32 %56)
  %58 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %59 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i8* %57, i8** %60, align 8
  %61 = load i32, i32* @DLL_CNTL, align 4
  %62 = call i8* @RREG32(i32 %61)
  %63 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %64 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i8* %62, i8** %65, align 8
  %66 = load i32, i32* @MPLL_SS1, align 4
  %67 = call i8* @RREG32(i32 %66)
  %68 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %69 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = load i32, i32* @MPLL_SS2, align 4
  %72 = call i8* @RREG32(i32 %71)
  %73 = load %struct.ni_power_info*, %struct.ni_power_info** %3, align 8
  %74 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  ret void
}

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local i8* @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
