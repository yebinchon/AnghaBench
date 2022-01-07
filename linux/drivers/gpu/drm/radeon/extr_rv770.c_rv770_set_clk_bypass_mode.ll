; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_set_clk_bypass_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_set_clk_bypass_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, i64 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@CG_SPLL_FUNC_CNTL_2 = common dso_local global i32 0, align 4
@SCLK_MUX_SEL_MASK = common dso_local global i64 0, align 8
@SCLK_MUX_UPDATE = common dso_local global i64 0, align 8
@CG_SPLL_STATUS = common dso_local global i32 0, align 4
@SPLL_CHG_STATUS = common dso_local global i32 0, align 4
@MPLL_CNTL_MODE = common dso_local global i32 0, align 4
@CHIP_RV710 = common dso_local global i64 0, align 8
@CHIP_RV730 = common dso_local global i64 0, align 8
@RV730_MPLL_MCLK_SEL = common dso_local global i64 0, align 8
@MPLL_MCLK_SEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv770_set_clk_bypass_mode(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @RADEON_IS_IGP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %81

12:                                               ; preds = %1
  %13 = load i32, i32* @CG_SPLL_FUNC_CNTL_2, align 4
  %14 = call i32 @RREG32(i32 %13)
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* @SCLK_MUX_SEL_MASK, align 8
  %17 = load i64, i64* %3, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %3, align 8
  %19 = call i64 @SCLK_MUX_SEL(i32 1)
  %20 = load i64, i64* @SCLK_MUX_UPDATE, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* %3, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %3, align 8
  %24 = load i32, i32* @CG_SPLL_FUNC_CNTL_2, align 4
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @WREG32(i32 %24, i64 %25)
  store i64 0, i64* %4, align 8
  br label %27

27:                                               ; preds = %42, %12
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load i32, i32* @CG_SPLL_STATUS, align 4
  %35 = call i32 @RREG32(i32 %34)
  %36 = load i32, i32* @SPLL_CHG_STATUS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %45

40:                                               ; preds = %33
  %41 = call i32 @udelay(i32 1)
  br label %42

42:                                               ; preds = %40
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %4, align 8
  br label %27

45:                                               ; preds = %39, %27
  %46 = load i64, i64* @SCLK_MUX_UPDATE, align 8
  %47 = xor i64 %46, -1
  %48 = load i64, i64* %3, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %3, align 8
  %50 = load i32, i32* @CG_SPLL_FUNC_CNTL_2, align 4
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @WREG32(i32 %50, i64 %51)
  %53 = load i32, i32* @MPLL_CNTL_MODE, align 4
  %54 = call i32 @RREG32(i32 %53)
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %3, align 8
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CHIP_RV710, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %45
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CHIP_RV730, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61, %45
  %68 = load i64, i64* @RV730_MPLL_MCLK_SEL, align 8
  %69 = xor i64 %68, -1
  %70 = load i64, i64* %3, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %3, align 8
  br label %77

72:                                               ; preds = %61
  %73 = load i64, i64* @MPLL_MCLK_SEL, align 8
  %74 = xor i64 %73, -1
  %75 = load i64, i64* %3, align 8
  %76 = and i64 %75, %74
  store i64 %76, i64* %3, align 8
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* @MPLL_CNTL_MODE, align 4
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @WREG32(i32 %78, i64 %79)
  br label %81

81:                                               ; preds = %77, %11
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @SCLK_MUX_SEL(i32) #1

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
