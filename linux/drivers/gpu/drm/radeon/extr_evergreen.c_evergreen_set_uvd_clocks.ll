; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_set_uvd_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_set_uvd_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CG_UPLL_FUNC_CNTL_2 = common dso_local global i32 0, align 4
@VCLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@DCLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@CG_UPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@UPLL_BYPASS_EN_MASK = common dso_local global i32 0, align 4
@UPLL_SLEEP_MASK = common dso_local global i32 0, align 4
@UPLL_VCO_MODE_MASK = common dso_local global i32 0, align 4
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
define dso_local i32 @evergreen_set_uvd_clocks(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
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
  br i1 %30, label %37, label %31

31:                                               ; preds = %28, %3
  %32 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %33 = load i32, i32* @UPLL_SLEEP_MASK, align 4
  %34 = load i32, i32* @UPLL_SLEEP_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = call i32 @WREG32_P(i32 %32, i32 %33, i32 %35)
  store i32 0, i32* %4, align 4
  br label %146

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
  br label %146

46:                                               ; preds = %37
  %47 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %48 = load i32, i32* @UPLL_VCO_MODE_MASK, align 4
  %49 = load i32, i32* @UPLL_VCO_MODE_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = call i32 @WREG32_P(i32 %47, i32 %48, i32 %50)
  %52 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %53 = load i32, i32* @UPLL_SLEEP_MASK, align 4
  %54 = load i32, i32* @UPLL_SLEEP_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = call i32 @WREG32_P(i32 %52, i32 %53, i32 %55)
  %57 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %58 = load i32, i32* @UPLL_SLEEP_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = call i32 @WREG32_P(i32 %57, i32 0, i32 %59)
  %61 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %62 = load i32, i32* @UPLL_RESET_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = call i32 @WREG32_P(i32 %61, i32 0, i32 %63)
  %65 = call i32 @mdelay(i32 1)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %67 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %68 = call i32 @radeon_uvd_send_upll_ctlreq(%struct.radeon_device* %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %46
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %146

73:                                               ; preds = %46
  %74 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %75 = load i32, i32* @UPLL_RESET_MASK, align 4
  %76 = load i32, i32* @UPLL_RESET_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = call i32 @WREG32_P(i32 %74, i32 %75, i32 %77)
  %79 = load i32, i32* @CG_UPLL_SPREAD_SPECTRUM, align 4
  %80 = load i32, i32* @SSEN_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = call i32 @WREG32_P(i32 %79, i32 0, i32 %81)
  %83 = load i32, i32* @CG_UPLL_FUNC_CNTL_3, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @UPLL_FB_DIV(i32 %84)
  %86 = load i32, i32* @UPLL_FB_DIV_MASK, align 4
  %87 = xor i32 %86, -1
  %88 = call i32 @WREG32_P(i32 %83, i32 %85, i32 %87)
  %89 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %90 = load i32, i32* @UPLL_REF_DIV_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = call i32 @WREG32_P(i32 %89, i32 0, i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = icmp ult i32 %93, 307200
  br i1 %94, label %95, label %100

95:                                               ; preds = %73
  %96 = load i32, i32* @CG_UPLL_FUNC_CNTL_4, align 4
  %97 = load i32, i32* @UPLL_SPARE_ISPARE9, align 4
  %98 = xor i32 %97, -1
  %99 = call i32 @WREG32_P(i32 %96, i32 0, i32 %98)
  br label %106

100:                                              ; preds = %73
  %101 = load i32, i32* @CG_UPLL_FUNC_CNTL_4, align 4
  %102 = load i32, i32* @UPLL_SPARE_ISPARE9, align 4
  %103 = load i32, i32* @UPLL_SPARE_ISPARE9, align 4
  %104 = xor i32 %103, -1
  %105 = call i32 @WREG32_P(i32 %101, i32 %102, i32 %104)
  br label %106

106:                                              ; preds = %100, %95
  %107 = load i32, i32* @CG_UPLL_FUNC_CNTL_2, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @UPLL_PDIV_A(i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @UPLL_PDIV_B(i32 %110)
  %112 = or i32 %109, %111
  %113 = load i32, i32* @UPLL_PDIV_A_MASK, align 4
  %114 = load i32, i32* @UPLL_PDIV_B_MASK, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = call i32 @WREG32_P(i32 %107, i32 %112, i32 %116)
  %118 = call i32 @mdelay(i32 15)
  %119 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %120 = load i32, i32* @UPLL_RESET_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = call i32 @WREG32_P(i32 %119, i32 0, i32 %121)
  %123 = call i32 @mdelay(i32 15)
  %124 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %125 = load i32, i32* @UPLL_BYPASS_EN_MASK, align 4
  %126 = xor i32 %125, -1
  %127 = call i32 @WREG32_P(i32 %124, i32 0, i32 %126)
  %128 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %129 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %130 = call i32 @radeon_uvd_send_upll_ctlreq(%struct.radeon_device* %128, i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %106
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %4, align 4
  br label %146

135:                                              ; preds = %106
  %136 = load i32, i32* @CG_UPLL_FUNC_CNTL_2, align 4
  %137 = call i32 @VCLK_SRC_SEL(i32 2)
  %138 = call i32 @DCLK_SRC_SEL(i32 2)
  %139 = or i32 %137, %138
  %140 = load i32, i32* @VCLK_SRC_SEL_MASK, align 4
  %141 = load i32, i32* @DCLK_SRC_SEL_MASK, align 4
  %142 = or i32 %140, %141
  %143 = xor i32 %142, -1
  %144 = call i32 @WREG32_P(i32 %136, i32 %139, i32 %143)
  %145 = call i32 @mdelay(i32 100)
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %135, %133, %71, %44, %31
  %147 = load i32, i32* %4, align 4
  ret i32 %147
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
