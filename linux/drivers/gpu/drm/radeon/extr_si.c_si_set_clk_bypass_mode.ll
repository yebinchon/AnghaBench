; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_set_clk_bypass_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_set_clk_bypass_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@CG_SPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@SPLL_BYPASS_EN = common dso_local global i64 0, align 8
@CG_SPLL_FUNC_CNTL_2 = common dso_local global i32 0, align 4
@SPLL_CTLREQ_CHG = common dso_local global i64 0, align 8
@SPLL_STATUS = common dso_local global i32 0, align 4
@SPLL_CHG_STATUS = common dso_local global i32 0, align 4
@SCLK_MUX_UPDATE = common dso_local global i64 0, align 8
@MPLL_CNTL_MODE = common dso_local global i32 0, align 4
@MPLL_MCLK_SEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_set_clk_bypass_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_set_clk_bypass_mode(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load i32, i32* @CG_SPLL_FUNC_CNTL, align 4
  %6 = call i32 @RREG32(i32 %5)
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* @SPLL_BYPASS_EN, align 8
  %9 = load i64, i64* %3, align 8
  %10 = or i64 %9, %8
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* @CG_SPLL_FUNC_CNTL, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @WREG32(i32 %11, i64 %12)
  %14 = load i32, i32* @CG_SPLL_FUNC_CNTL_2, align 4
  %15 = call i32 @RREG32(i32 %14)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* @SPLL_CTLREQ_CHG, align 8
  %18 = load i64, i64* %3, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load i32, i32* @CG_SPLL_FUNC_CNTL_2, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @WREG32(i32 %20, i64 %21)
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %38, %1
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i32, i32* @SPLL_STATUS, align 4
  %31 = call i32 @RREG32(i32 %30)
  %32 = load i32, i32* @SPLL_CHG_STATUS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %41

36:                                               ; preds = %29
  %37 = call i32 @udelay(i32 1)
  br label %38

38:                                               ; preds = %36
  %39 = load i64, i64* %4, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %4, align 8
  br label %23

41:                                               ; preds = %35, %23
  %42 = load i32, i32* @CG_SPLL_FUNC_CNTL_2, align 4
  %43 = call i32 @RREG32(i32 %42)
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* @SPLL_CTLREQ_CHG, align 8
  %46 = load i64, i64* @SCLK_MUX_UPDATE, align 8
  %47 = or i64 %45, %46
  %48 = xor i64 %47, -1
  %49 = load i64, i64* %3, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %3, align 8
  %51 = load i32, i32* @CG_SPLL_FUNC_CNTL_2, align 4
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @WREG32(i32 %51, i64 %52)
  %54 = load i32, i32* @MPLL_CNTL_MODE, align 4
  %55 = call i32 @RREG32(i32 %54)
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* @MPLL_MCLK_SEL, align 8
  %58 = xor i64 %57, -1
  %59 = load i64, i64* %3, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %3, align 8
  %61 = load i32, i32* @MPLL_CNTL_MODE, align 4
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @WREG32(i32 %61, i64 %62)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
