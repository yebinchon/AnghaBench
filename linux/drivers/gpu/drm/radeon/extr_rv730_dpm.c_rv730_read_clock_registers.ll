; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv730_dpm.c_rv730_read_clock_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv730_dpm.c_rv730_read_clock_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@CG_SPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@CG_SPLL_FUNC_CNTL_2 = common dso_local global i32 0, align 4
@CG_SPLL_FUNC_CNTL_3 = common dso_local global i32 0, align 4
@CG_SPLL_SPREAD_SPECTRUM = common dso_local global i32 0, align 4
@CG_SPLL_SPREAD_SPECTRUM_2 = common dso_local global i32 0, align 4
@TCI_MCLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@TCI_DLL_CNTL = common dso_local global i32 0, align 4
@CG_MPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@CG_MPLL_FUNC_CNTL_2 = common dso_local global i32 0, align 4
@CG_MPLL_FUNC_CNTL_3 = common dso_local global i32 0, align 4
@CG_TCI_MPLL_SPREAD_SPECTRUM = common dso_local global i32 0, align 4
@CG_TCI_MPLL_SPREAD_SPECTRUM_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv730_read_clock_registers(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %4)
  store %struct.rv7xx_power_info* %5, %struct.rv7xx_power_info** %3, align 8
  %6 = load i32, i32* @CG_SPLL_FUNC_CNTL, align 4
  %7 = call i8* @RREG32(i32 %6)
  %8 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %9 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 11
  store i8* %7, i8** %11, align 8
  %12 = load i32, i32* @CG_SPLL_FUNC_CNTL_2, align 4
  %13 = call i8* @RREG32(i32 %12)
  %14 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %15 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 10
  store i8* %13, i8** %17, align 8
  %18 = load i32, i32* @CG_SPLL_FUNC_CNTL_3, align 4
  %19 = call i8* @RREG32(i32 %18)
  %20 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %21 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 9
  store i8* %19, i8** %23, align 8
  %24 = load i32, i32* @CG_SPLL_SPREAD_SPECTRUM, align 4
  %25 = call i8* @RREG32(i32 %24)
  %26 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %27 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 8
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* @CG_SPLL_SPREAD_SPECTRUM_2, align 4
  %31 = call i8* @RREG32(i32 %30)
  %32 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %33 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 7
  store i8* %31, i8** %35, align 8
  %36 = load i32, i32* @TCI_MCLK_PWRMGT_CNTL, align 4
  %37 = call i8* @RREG32(i32 %36)
  %38 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %39 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 6
  store i8* %37, i8** %41, align 8
  %42 = load i32, i32* @TCI_DLL_CNTL, align 4
  %43 = call i8* @RREG32(i32 %42)
  %44 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %45 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  store i8* %43, i8** %47, align 8
  %48 = load i32, i32* @CG_MPLL_FUNC_CNTL, align 4
  %49 = call i8* @RREG32(i32 %48)
  %50 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %51 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  store i8* %49, i8** %53, align 8
  %54 = load i32, i32* @CG_MPLL_FUNC_CNTL_2, align 4
  %55 = call i8* @RREG32(i32 %54)
  %56 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %57 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i8* %55, i8** %59, align 8
  %60 = load i32, i32* @CG_MPLL_FUNC_CNTL_3, align 4
  %61 = call i8* @RREG32(i32 %60)
  %62 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %63 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i8* %61, i8** %65, align 8
  %66 = load i32, i32* @CG_TCI_MPLL_SPREAD_SPECTRUM, align 4
  %67 = call i8* @RREG32(i32 %66)
  %68 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %69 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i8* %67, i8** %71, align 8
  %72 = load i32, i32* @CG_TCI_MPLL_SPREAD_SPECTRUM_2, align 4
  %73 = call i8* @RREG32(i32 %72)
  %74 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %75 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i8* %73, i8** %77, align 8
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i8* @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
