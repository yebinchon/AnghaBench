; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_set_uvd_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_set_uvd_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CG_UPLL_FUNC_CNTL_2 = common dso_local global i32 0, align 4
@VCLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@DCLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@CG_UPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@UPLL_BYPASS_EN_MASK = common dso_local global i32 0, align 4
@CG_UPLL_FUNC_CNTL_5 = common dso_local global i32 0, align 4
@RESET_ANTI_MUX_MASK = common dso_local global i32 0, align 4
@UPLL_VCO_MODE_MASK = common dso_local global i32 0, align 4
@UPLL_SLEEP_MASK = common dso_local global i32 0, align 4
@UPLL_RESET_MASK = common dso_local global i32 0, align 4
@CG_UPLL_SPREAD_SPECTRUM = common dso_local global i32 0, align 4
@SSEN_MASK = common dso_local global i32 0, align 4
@CG_UPLL_FUNC_CNTL_3 = common dso_local global i32 0, align 4
@UPLL_FB_DIV_MASK = common dso_local global i32 0, align 4
@UPLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@CG_UPLL_FUNC_CNTL_4 = common dso_local global i32 0, align 4
@UPLL_SPARE_ISPARE9 = common dso_local global i32 0, align 4
@UPLL_PDIV_A_MASK = common dso_local global i32 0, align 4
@UPLL_PDIV_B_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_set_uvd_clocks(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
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
  %12 = load i32, i32* @CG_UPLL_FUNC_CNTL_2, align 4
  %13 = call i32 @VCLK_SRC_SEL(i32 1)
  %14 = call i32 @DCLK_SRC_SEL(i32 1)
  %15 = or i32 %13, %14
  %16 = load i32, i32* @VCLK_SRC_SEL_MASK, align 4
  %17 = load i32, i32* @DCLK_SRC_SEL_MASK, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = call i32 @WREG32_P(i32 %12, i32 %15, i32 %19)
  %21 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %22 = load i32, i32* @UPLL_BYPASS_EN_MASK, align 4
  %23 = load i32, i32* @UPLL_BYPASS_EN_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = call i32 @WREG32_P(i32 %21, i32 %22, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %3
  store i32 0, i32* %4, align 4
  br label %140

32:                                               ; preds = %28
  %33 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @radeon_uvd_calc_upll_dividers(%struct.radeon_device* %33, i32 %34, i32 %35, i32 125000, i32 250000, i32 16384, i32 67108863, i32 0, i32 128, i32 5, i32* %8, i32* %9, i32* %10)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %140

41:                                               ; preds = %32
  %42 = load i32, i32* @CG_UPLL_FUNC_CNTL_5, align 4
  %43 = load i32, i32* @RESET_ANTI_MUX_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = call i32 @WREG32_P(i32 %42, i32 0, i32 %44)
  %46 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %47 = load i32, i32* @UPLL_VCO_MODE_MASK, align 4
  %48 = load i32, i32* @UPLL_VCO_MODE_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = call i32 @WREG32_P(i32 %46, i32 %47, i32 %49)
  %51 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %52 = load i32, i32* @UPLL_SLEEP_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = call i32 @WREG32_P(i32 %51, i32 0, i32 %53)
  %55 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %56 = load i32, i32* @UPLL_RESET_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = call i32 @WREG32_P(i32 %55, i32 0, i32 %57)
  %59 = call i32 @mdelay(i32 1)
  %60 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %61 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %62 = call i32 @radeon_uvd_send_upll_ctlreq(%struct.radeon_device* %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %41
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %140

67:                                               ; preds = %41
  %68 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %69 = load i32, i32* @UPLL_RESET_MASK, align 4
  %70 = load i32, i32* @UPLL_RESET_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = call i32 @WREG32_P(i32 %68, i32 %69, i32 %71)
  %73 = load i32, i32* @CG_UPLL_SPREAD_SPECTRUM, align 4
  %74 = load i32, i32* @SSEN_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = call i32 @WREG32_P(i32 %73, i32 0, i32 %75)
  %77 = load i32, i32* @CG_UPLL_FUNC_CNTL_3, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @UPLL_FB_DIV(i32 %78)
  %80 = load i32, i32* @UPLL_FB_DIV_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = call i32 @WREG32_P(i32 %77, i32 %79, i32 %81)
  %83 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %84 = load i32, i32* @UPLL_REF_DIV_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = call i32 @WREG32_P(i32 %83, i32 0, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = icmp ult i32 %87, 307200
  br i1 %88, label %89, label %94

89:                                               ; preds = %67
  %90 = load i32, i32* @CG_UPLL_FUNC_CNTL_4, align 4
  %91 = load i32, i32* @UPLL_SPARE_ISPARE9, align 4
  %92 = xor i32 %91, -1
  %93 = call i32 @WREG32_P(i32 %90, i32 0, i32 %92)
  br label %100

94:                                               ; preds = %67
  %95 = load i32, i32* @CG_UPLL_FUNC_CNTL_4, align 4
  %96 = load i32, i32* @UPLL_SPARE_ISPARE9, align 4
  %97 = load i32, i32* @UPLL_SPARE_ISPARE9, align 4
  %98 = xor i32 %97, -1
  %99 = call i32 @WREG32_P(i32 %95, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %94, %89
  %101 = load i32, i32* @CG_UPLL_FUNC_CNTL_2, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @UPLL_PDIV_A(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @UPLL_PDIV_B(i32 %104)
  %106 = or i32 %103, %105
  %107 = load i32, i32* @UPLL_PDIV_A_MASK, align 4
  %108 = load i32, i32* @UPLL_PDIV_B_MASK, align 4
  %109 = or i32 %107, %108
  %110 = xor i32 %109, -1
  %111 = call i32 @WREG32_P(i32 %101, i32 %106, i32 %110)
  %112 = call i32 @mdelay(i32 15)
  %113 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %114 = load i32, i32* @UPLL_RESET_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = call i32 @WREG32_P(i32 %113, i32 0, i32 %115)
  %117 = call i32 @mdelay(i32 15)
  %118 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %119 = load i32, i32* @UPLL_BYPASS_EN_MASK, align 4
  %120 = xor i32 %119, -1
  %121 = call i32 @WREG32_P(i32 %118, i32 0, i32 %120)
  %122 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %123 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %124 = call i32 @radeon_uvd_send_upll_ctlreq(%struct.radeon_device* %122, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %100
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %4, align 4
  br label %140

129:                                              ; preds = %100
  %130 = load i32, i32* @CG_UPLL_FUNC_CNTL_2, align 4
  %131 = call i32 @VCLK_SRC_SEL(i32 2)
  %132 = call i32 @DCLK_SRC_SEL(i32 2)
  %133 = or i32 %131, %132
  %134 = load i32, i32* @VCLK_SRC_SEL_MASK, align 4
  %135 = load i32, i32* @DCLK_SRC_SEL_MASK, align 4
  %136 = or i32 %134, %135
  %137 = xor i32 %136, -1
  %138 = call i32 @WREG32_P(i32 %130, i32 %133, i32 %137)
  %139 = call i32 @mdelay(i32 100)
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %129, %127, %65, %39, %31
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @VCLK_SRC_SEL(i32) #1

declare dso_local i32 @DCLK_SRC_SEL(i32) #1

declare dso_local i32 @radeon_uvd_calc_upll_dividers(%struct.radeon_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @radeon_uvd_send_upll_ctlreq(%struct.radeon_device*, i32) #1

declare dso_local i32 @UPLL_FB_DIV(i32) #1

declare dso_local i32 @UPLL_PDIV_A(i32) #1

declare dso_local i32 @UPLL_PDIV_B(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
