; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_gfx_clock_gating_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_gfx_clock_gating_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.evergreen_power_info = type { i64 }

@GRBM_GFX_INDEX = common dso_local global i32 0, align 4
@CG_CGLS_TILE_0 = common dso_local global i32 0, align 4
@CG_CGLS_TILE_1 = common dso_local global i32 0, align 4
@CG_CGLS_TILE_2 = common dso_local global i32 0, align 4
@CG_CGLS_TILE_3 = common dso_local global i32 0, align 4
@CG_CGLS_TILE_4 = common dso_local global i32 0, align 4
@CG_CGLS_TILE_5 = common dso_local global i32 0, align 4
@CG_CGLS_TILE_6 = common dso_local global i32 0, align 4
@CG_CGLS_TILE_7 = common dso_local global i32 0, align 4
@CG_CGLS_TILE_8 = common dso_local global i32 0, align 4
@CG_CGLS_TILE_9 = common dso_local global i32 0, align 4
@CG_CGLS_TILE_10 = common dso_local global i32 0, align 4
@CG_CGLS_TILE_11 = common dso_local global i32 0, align 4
@SCLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@DYN_LIGHT_SLEEP_EN = common dso_local global i32 0, align 4
@DYN_GFX_CLK_OFF_EN = common dso_local global i32 0, align 4
@GFX_CLK_FORCE_ON = common dso_local global i32 0, align 4
@GB_ADDR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @cypress_gfx_clock_gating_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_gfx_clock_gating_enable(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evergreen_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %6)
  store %struct.evergreen_power_info* %7, %struct.evergreen_power_info** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %2
  %11 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %12 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %10
  %16 = load i32, i32* @GRBM_GFX_INDEX, align 4
  %17 = call i32 @WREG32(i32 %16, i32 -1073741824)
  %18 = load i32, i32* @CG_CGLS_TILE_0, align 4
  %19 = call i32 @WREG32_CG(i32 %18, i32 -1)
  %20 = load i32, i32* @CG_CGLS_TILE_1, align 4
  %21 = call i32 @WREG32_CG(i32 %20, i32 -1)
  %22 = load i32, i32* @CG_CGLS_TILE_2, align 4
  %23 = call i32 @WREG32_CG(i32 %22, i32 -1)
  %24 = load i32, i32* @CG_CGLS_TILE_3, align 4
  %25 = call i32 @WREG32_CG(i32 %24, i32 -1)
  %26 = load i32, i32* @CG_CGLS_TILE_4, align 4
  %27 = call i32 @WREG32_CG(i32 %26, i32 -1)
  %28 = load i32, i32* @CG_CGLS_TILE_5, align 4
  %29 = call i32 @WREG32_CG(i32 %28, i32 -1)
  %30 = load i32, i32* @CG_CGLS_TILE_6, align 4
  %31 = call i32 @WREG32_CG(i32 %30, i32 -1)
  %32 = load i32, i32* @CG_CGLS_TILE_7, align 4
  %33 = call i32 @WREG32_CG(i32 %32, i32 -1)
  %34 = load i32, i32* @CG_CGLS_TILE_8, align 4
  %35 = call i32 @WREG32_CG(i32 %34, i32 -1)
  %36 = load i32, i32* @CG_CGLS_TILE_9, align 4
  %37 = call i32 @WREG32_CG(i32 %36, i32 -1)
  %38 = load i32, i32* @CG_CGLS_TILE_10, align 4
  %39 = call i32 @WREG32_CG(i32 %38, i32 -1)
  %40 = load i32, i32* @CG_CGLS_TILE_11, align 4
  %41 = call i32 @WREG32_CG(i32 %40, i32 -1)
  %42 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %43 = load i32, i32* @DYN_LIGHT_SLEEP_EN, align 4
  %44 = load i32, i32* @DYN_LIGHT_SLEEP_EN, align 4
  %45 = xor i32 %44, -1
  %46 = call i32 @WREG32_P(i32 %42, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %15, %10
  %48 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %49 = load i32, i32* @DYN_GFX_CLK_OFF_EN, align 4
  %50 = load i32, i32* @DYN_GFX_CLK_OFF_EN, align 4
  %51 = xor i32 %50, -1
  %52 = call i32 @WREG32_P(i32 %48, i32 %49, i32 %51)
  br label %105

53:                                               ; preds = %2
  %54 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %55 = load i32, i32* @DYN_GFX_CLK_OFF_EN, align 4
  %56 = xor i32 %55, -1
  %57 = call i32 @WREG32_P(i32 %54, i32 0, i32 %56)
  %58 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %59 = load i32, i32* @GFX_CLK_FORCE_ON, align 4
  %60 = load i32, i32* @GFX_CLK_FORCE_ON, align 4
  %61 = xor i32 %60, -1
  %62 = call i32 @WREG32_P(i32 %58, i32 %59, i32 %61)
  %63 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %64 = load i32, i32* @GFX_CLK_FORCE_ON, align 4
  %65 = xor i32 %64, -1
  %66 = call i32 @WREG32_P(i32 %63, i32 0, i32 %65)
  %67 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %68 = call i32 @RREG32(i32 %67)
  %69 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %70 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %53
  %74 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %75 = load i32, i32* @DYN_LIGHT_SLEEP_EN, align 4
  %76 = xor i32 %75, -1
  %77 = call i32 @WREG32_P(i32 %74, i32 0, i32 %76)
  %78 = load i32, i32* @GRBM_GFX_INDEX, align 4
  %79 = call i32 @WREG32(i32 %78, i32 -1073741824)
  %80 = load i32, i32* @CG_CGLS_TILE_0, align 4
  %81 = call i32 @WREG32_CG(i32 %80, i32 0)
  %82 = load i32, i32* @CG_CGLS_TILE_1, align 4
  %83 = call i32 @WREG32_CG(i32 %82, i32 0)
  %84 = load i32, i32* @CG_CGLS_TILE_2, align 4
  %85 = call i32 @WREG32_CG(i32 %84, i32 0)
  %86 = load i32, i32* @CG_CGLS_TILE_3, align 4
  %87 = call i32 @WREG32_CG(i32 %86, i32 0)
  %88 = load i32, i32* @CG_CGLS_TILE_4, align 4
  %89 = call i32 @WREG32_CG(i32 %88, i32 0)
  %90 = load i32, i32* @CG_CGLS_TILE_5, align 4
  %91 = call i32 @WREG32_CG(i32 %90, i32 0)
  %92 = load i32, i32* @CG_CGLS_TILE_6, align 4
  %93 = call i32 @WREG32_CG(i32 %92, i32 0)
  %94 = load i32, i32* @CG_CGLS_TILE_7, align 4
  %95 = call i32 @WREG32_CG(i32 %94, i32 0)
  %96 = load i32, i32* @CG_CGLS_TILE_8, align 4
  %97 = call i32 @WREG32_CG(i32 %96, i32 0)
  %98 = load i32, i32* @CG_CGLS_TILE_9, align 4
  %99 = call i32 @WREG32_CG(i32 %98, i32 0)
  %100 = load i32, i32* @CG_CGLS_TILE_10, align 4
  %101 = call i32 @WREG32_CG(i32 %100, i32 0)
  %102 = load i32, i32* @CG_CGLS_TILE_11, align 4
  %103 = call i32 @WREG32_CG(i32 %102, i32 0)
  br label %104

104:                                              ; preds = %73, %53
  br label %105

105:                                              ; preds = %104, %47
  ret void
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_CG(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
