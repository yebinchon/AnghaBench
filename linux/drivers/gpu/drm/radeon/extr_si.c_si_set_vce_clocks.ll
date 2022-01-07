; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_set_vce_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_set_vce_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CG_VCEPLL_FUNC_CNTL_2 = common dso_local global i32 0, align 4
@EVCLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@ECCLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@CG_VCEPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@VCEPLL_BYPASS_EN_MASK = common dso_local global i32 0, align 4
@VCEPLL_SLEEP_MASK = common dso_local global i32 0, align 4
@CG_VCEPLL_FUNC_CNTL_5 = common dso_local global i32 0, align 4
@RESET_ANTI_MUX_MASK = common dso_local global i32 0, align 4
@VCEPLL_VCO_MODE_MASK = common dso_local global i32 0, align 4
@VCEPLL_RESET_MASK = common dso_local global i32 0, align 4
@CG_VCEPLL_SPREAD_SPECTRUM = common dso_local global i32 0, align 4
@SSEN_MASK = common dso_local global i32 0, align 4
@CG_VCEPLL_FUNC_CNTL_3 = common dso_local global i32 0, align 4
@VCEPLL_FB_DIV_MASK = common dso_local global i32 0, align 4
@VCEPLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@VCEPLL_PDIV_A_MASK = common dso_local global i32 0, align 4
@VCEPLL_PDIV_B_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_set_vce_clocks(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @CG_VCEPLL_FUNC_CNTL_2, align 4
  %13 = call i32 @EVCLK_SRC_SEL(i32 1)
  %14 = call i32 @ECCLK_SRC_SEL(i32 1)
  %15 = or i32 %13, %14
  %16 = load i32, i32* @EVCLK_SRC_SEL_MASK, align 4
  %17 = load i32, i32* @ECCLK_SRC_SEL_MASK, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = call i32 @WREG32_SMC_P(i32 %12, i32 %15, i32 %19)
  %21 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %22 = load i32, i32* @VCEPLL_BYPASS_EN_MASK, align 4
  %23 = load i32, i32* @VCEPLL_BYPASS_EN_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = call i32 @WREG32_SMC_P(i32 %21, i32 %22, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28, %3
  %32 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %33 = load i32, i32* @VCEPLL_SLEEP_MASK, align 4
  %34 = load i32, i32* @VCEPLL_SLEEP_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = call i32 @WREG32_SMC_P(i32 %32, i32 %33, i32 %35)
  store i32 0, i32* %4, align 4
  br label %134

37:                                               ; preds = %28
  %38 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @radeon_uvd_calc_upll_dividers(%struct.radeon_device* %38, i32 %39, i32 %40, i32 125000, i32 250000, i32 16384, i32 67108863, i32 0, i32 128, i32 5, i32* %8, i32* %9, i32* %10)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %4, align 4
  br label %134

46:                                               ; preds = %37
  %47 = load i32, i32* @CG_VCEPLL_FUNC_CNTL_5, align 4
  %48 = load i32, i32* @RESET_ANTI_MUX_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = call i32 @WREG32_SMC_P(i32 %47, i32 0, i32 %49)
  %51 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %52 = load i32, i32* @VCEPLL_VCO_MODE_MASK, align 4
  %53 = load i32, i32* @VCEPLL_VCO_MODE_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = call i32 @WREG32_SMC_P(i32 %51, i32 %52, i32 %54)
  %56 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %57 = load i32, i32* @VCEPLL_SLEEP_MASK, align 4
  %58 = load i32, i32* @VCEPLL_SLEEP_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = call i32 @WREG32_SMC_P(i32 %56, i32 %57, i32 %59)
  %61 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %62 = load i32, i32* @VCEPLL_SLEEP_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = call i32 @WREG32_SMC_P(i32 %61, i32 0, i32 %63)
  %65 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %66 = load i32, i32* @VCEPLL_RESET_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = call i32 @WREG32_SMC_P(i32 %65, i32 0, i32 %67)
  %69 = call i32 @mdelay(i32 1)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %71 = call i32 @si_vce_send_vcepll_ctlreq(%struct.radeon_device* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %46
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %134

76:                                               ; preds = %46
  %77 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %78 = load i32, i32* @VCEPLL_RESET_MASK, align 4
  %79 = load i32, i32* @VCEPLL_RESET_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = call i32 @WREG32_SMC_P(i32 %77, i32 %78, i32 %80)
  %82 = load i32, i32* @CG_VCEPLL_SPREAD_SPECTRUM, align 4
  %83 = load i32, i32* @SSEN_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = call i32 @WREG32_SMC_P(i32 %82, i32 0, i32 %84)
  %86 = load i32, i32* @CG_VCEPLL_FUNC_CNTL_3, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @VCEPLL_FB_DIV(i32 %87)
  %89 = load i32, i32* @VCEPLL_FB_DIV_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = call i32 @WREG32_SMC_P(i32 %86, i32 %88, i32 %90)
  %92 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %93 = load i32, i32* @VCEPLL_REF_DIV_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = call i32 @WREG32_SMC_P(i32 %92, i32 0, i32 %94)
  %96 = load i32, i32* @CG_VCEPLL_FUNC_CNTL_2, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @VCEPLL_PDIV_A(i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @VCEPLL_PDIV_B(i32 %99)
  %101 = or i32 %98, %100
  %102 = load i32, i32* @VCEPLL_PDIV_A_MASK, align 4
  %103 = load i32, i32* @VCEPLL_PDIV_B_MASK, align 4
  %104 = or i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = call i32 @WREG32_SMC_P(i32 %96, i32 %101, i32 %105)
  %107 = call i32 @mdelay(i32 15)
  %108 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %109 = load i32, i32* @VCEPLL_RESET_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = call i32 @WREG32_SMC_P(i32 %108, i32 0, i32 %110)
  %112 = call i32 @mdelay(i32 15)
  %113 = load i32, i32* @CG_VCEPLL_FUNC_CNTL, align 4
  %114 = load i32, i32* @VCEPLL_BYPASS_EN_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = call i32 @WREG32_SMC_P(i32 %113, i32 0, i32 %115)
  %117 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %118 = call i32 @si_vce_send_vcepll_ctlreq(%struct.radeon_device* %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %76
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %4, align 4
  br label %134

123:                                              ; preds = %76
  %124 = load i32, i32* @CG_VCEPLL_FUNC_CNTL_2, align 4
  %125 = call i32 @EVCLK_SRC_SEL(i32 16)
  %126 = call i32 @ECCLK_SRC_SEL(i32 16)
  %127 = or i32 %125, %126
  %128 = load i32, i32* @EVCLK_SRC_SEL_MASK, align 4
  %129 = load i32, i32* @ECCLK_SRC_SEL_MASK, align 4
  %130 = or i32 %128, %129
  %131 = xor i32 %130, -1
  %132 = call i32 @WREG32_SMC_P(i32 %124, i32 %127, i32 %131)
  %133 = call i32 @mdelay(i32 100)
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %123, %121, %74, %44, %31
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @WREG32_SMC_P(i32, i32, i32) #1

declare dso_local i32 @EVCLK_SRC_SEL(i32) #1

declare dso_local i32 @ECCLK_SRC_SEL(i32) #1

declare dso_local i32 @radeon_uvd_calc_upll_dividers(%struct.radeon_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @si_vce_send_vcepll_ctlreq(%struct.radeon_device*) #1

declare dso_local i32 @VCEPLL_FB_DIV(i32) #1

declare dso_local i32 @VCEPLL_PDIV_A(i32) #1

declare dso_local i32 @VCEPLL_PDIV_B(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
