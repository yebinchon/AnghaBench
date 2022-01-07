; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_set_uvd_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_set_uvd_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CG_UPLL_FUNC_CNTL_2 = common dso_local global i32 0, align 4
@VCLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@DCLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@CG_UPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@UPLL_BYPASS_EN_MASK = common dso_local global i32 0, align 4
@UPLL_RESET_MASK = common dso_local global i32 0, align 4
@UPLL_SLEEP_MASK = common dso_local global i32 0, align 4
@UPLL_CTLREQ_MASK = common dso_local global i32 0, align 4
@CHIP_RS780 = common dso_local global i64 0, align 8
@GFX_MACRO_BYPASS_CNTL = common dso_local global i32 0, align 4
@UPLL_BYPASS_CNTL = common dso_local global i32 0, align 4
@CHIP_RV670 = common dso_local global i64 0, align 8
@UPLL_REFCLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@UPLL_FB_DIV_MASK = common dso_local global i32 0, align 4
@UPLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@UPLL_DIVEN_MASK = common dso_local global i32 0, align 4
@UPLL_DIVEN2_MASK = common dso_local global i32 0, align 4
@UPLL_SW_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_set_uvd_clocks(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @CG_UPLL_FUNC_CNTL_2, align 4
  %14 = call i32 @VCLK_SRC_SEL(i32 1)
  %15 = call i32 @DCLK_SRC_SEL(i32 1)
  %16 = or i32 %14, %15
  %17 = load i32, i32* @VCLK_SRC_SEL_MASK, align 4
  %18 = load i32, i32* @DCLK_SRC_SEL_MASK, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = call i32 @WREG32_P(i32 %13, i32 %16, i32 %20)
  %22 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %23 = load i32, i32* @UPLL_BYPASS_EN_MASK, align 4
  %24 = load i32, i32* @UPLL_RESET_MASK, align 4
  %25 = load i32, i32* @UPLL_SLEEP_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @UPLL_CTLREQ_MASK, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = call i32 @WREG32_P(i32 %22, i32 %23, i32 %29)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CHIP_RS780, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load i32, i32* @GFX_MACRO_BYPASS_CNTL, align 4
  %38 = load i32, i32* @UPLL_BYPASS_CNTL, align 4
  %39 = load i32, i32* @UPLL_BYPASS_CNTL, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @WREG32_P(i32 %37, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %36, %3
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %50 = load i32, i32* @UPLL_SLEEP_MASK, align 4
  %51 = load i32, i32* @UPLL_SLEEP_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = call i32 @WREG32_P(i32 %49, i32 %50, i32 %52)
  store i32 0, i32* %4, align 4
  br label %197

54:                                               ; preds = %45
  %55 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 10000
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 34, i32* %9, align 4
  br label %63

62:                                               ; preds = %54
  store i32 4, i32* %9, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %67, 1
  %69 = call i32 @radeon_uvd_calc_upll_dividers(%struct.radeon_device* %64, i32 %65, i32 %66, i32 50000, i32 160000, i32 %68, i32 4095, i32 2, i32 30, i32 -1, i32* %8, i32* %10, i32* %11)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %4, align 4
  br label %197

74:                                               ; preds = %63
  %75 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CHIP_RV670, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CHIP_RS780, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* %8, align 4
  %88 = lshr i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %92

89:                                               ; preds = %80, %74
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %94 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %95 = call i32 @radeon_uvd_send_upll_ctlreq(%struct.radeon_device* %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %4, align 4
  br label %197

100:                                              ; preds = %92
  %101 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %102 = load i32, i32* @UPLL_RESET_MASK, align 4
  %103 = load i32, i32* @UPLL_RESET_MASK, align 4
  %104 = xor i32 %103, -1
  %105 = call i32 @WREG32_P(i32 %101, i32 %102, i32 %104)
  %106 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CHIP_RS780, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %100
  %112 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %113 = load i32, i32* @UPLL_REFCLK_SRC_SEL_MASK, align 4
  %114 = load i32, i32* @UPLL_REFCLK_SRC_SEL_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = call i32 @WREG32_P(i32 %112, i32 %113, i32 %115)
  br label %117

117:                                              ; preds = %111, %100
  %118 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @UPLL_FB_DIV(i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @UPLL_REF_DIV(i32 %121)
  %123 = or i32 %120, %122
  %124 = load i32, i32* @UPLL_FB_DIV_MASK, align 4
  %125 = load i32, i32* @UPLL_REF_DIV_MASK, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = call i32 @WREG32_P(i32 %118, i32 %123, i32 %127)
  %129 = load i32, i32* @CG_UPLL_FUNC_CNTL_2, align 4
  %130 = load i32, i32* %10, align 4
  %131 = lshr i32 %130, 1
  %132 = call i32 @UPLL_SW_HILEN(i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = lshr i32 %133, 1
  %135 = load i32, i32* %10, align 4
  %136 = and i32 %135, 1
  %137 = add i32 %134, %136
  %138 = call i32 @UPLL_SW_LOLEN(i32 %137)
  %139 = or i32 %132, %138
  %140 = load i32, i32* %11, align 4
  %141 = lshr i32 %140, 1
  %142 = call i32 @UPLL_SW_HILEN2(i32 %141)
  %143 = or i32 %139, %142
  %144 = load i32, i32* %11, align 4
  %145 = lshr i32 %144, 1
  %146 = load i32, i32* %11, align 4
  %147 = and i32 %146, 1
  %148 = add i32 %145, %147
  %149 = call i32 @UPLL_SW_LOLEN2(i32 %148)
  %150 = or i32 %143, %149
  %151 = load i32, i32* @UPLL_DIVEN_MASK, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @UPLL_DIVEN2_MASK, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @UPLL_SW_MASK, align 4
  %156 = xor i32 %155, -1
  %157 = call i32 @WREG32_P(i32 %129, i32 %154, i32 %156)
  %158 = call i32 @mdelay(i32 15)
  %159 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %160 = load i32, i32* @UPLL_RESET_MASK, align 4
  %161 = xor i32 %160, -1
  %162 = call i32 @WREG32_P(i32 %159, i32 0, i32 %161)
  %163 = call i32 @mdelay(i32 15)
  %164 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %165 = load i32, i32* @UPLL_BYPASS_EN_MASK, align 4
  %166 = xor i32 %165, -1
  %167 = call i32 @WREG32_P(i32 %164, i32 0, i32 %166)
  %168 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @CHIP_RS780, align 8
  %172 = icmp sge i64 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %117
  %174 = load i32, i32* @GFX_MACRO_BYPASS_CNTL, align 4
  %175 = load i32, i32* @UPLL_BYPASS_CNTL, align 4
  %176 = xor i32 %175, -1
  %177 = call i32 @WREG32_P(i32 %174, i32 0, i32 %176)
  br label %178

178:                                              ; preds = %173, %117
  %179 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %180 = load i32, i32* @CG_UPLL_FUNC_CNTL, align 4
  %181 = call i32 @radeon_uvd_send_upll_ctlreq(%struct.radeon_device* %179, i32 %180)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = load i32, i32* %12, align 4
  store i32 %185, i32* %4, align 4
  br label %197

186:                                              ; preds = %178
  %187 = load i32, i32* @CG_UPLL_FUNC_CNTL_2, align 4
  %188 = call i32 @VCLK_SRC_SEL(i32 2)
  %189 = call i32 @DCLK_SRC_SEL(i32 2)
  %190 = or i32 %188, %189
  %191 = load i32, i32* @VCLK_SRC_SEL_MASK, align 4
  %192 = load i32, i32* @DCLK_SRC_SEL_MASK, align 4
  %193 = or i32 %191, %192
  %194 = xor i32 %193, -1
  %195 = call i32 @WREG32_P(i32 %187, i32 %190, i32 %194)
  %196 = call i32 @mdelay(i32 100)
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %186, %184, %98, %72, %48
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @VCLK_SRC_SEL(i32) #1

declare dso_local i32 @DCLK_SRC_SEL(i32) #1

declare dso_local i32 @radeon_uvd_calc_upll_dividers(%struct.radeon_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @radeon_uvd_send_upll_ctlreq(%struct.radeon_device*, i32) #1

declare dso_local i32 @UPLL_FB_DIV(i32) #1

declare dso_local i32 @UPLL_REF_DIV(i32) #1

declare dso_local i32 @UPLL_SW_HILEN(i32) #1

declare dso_local i32 @UPLL_SW_LOLEN(i32) #1

declare dso_local i32 @UPLL_SW_HILEN2(i32) #1

declare dso_local i32 @UPLL_SW_LOLEN2(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
