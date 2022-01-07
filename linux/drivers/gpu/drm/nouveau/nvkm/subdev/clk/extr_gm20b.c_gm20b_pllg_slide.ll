; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_pllg_slide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_pllg_slide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gm20b_clk = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gm20b_pll = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@GPCPLL_NDIV_SLOWDOWN = common dso_local global i32 0, align 4
@GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT = common dso_local global i32 0, align 4
@GPCPLL_CFG2 = common dso_local global i32 0, align 4
@GPCPLL_CFG2_SDM_DIN_NEW_MASK = common dso_local global i64 0, align 8
@GPCPLL_CFG2_SDM_DIN_NEW_SHIFT = common dso_local global i64 0, align 8
@GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT = common dso_local global i32 0, align 4
@GPC_BCAST_NDIV_SLOWDOWN_DEBUG = common dso_local global i32 0, align 4
@GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@GPCPLL_CFG2_SDM_DIN_MASK = common dso_local global i64 0, align 8
@GPCPLL_CFG2_SDM_DIN_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gm20b_clk*, i64)* @gm20b_pllg_slide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm20b_pllg_slide(%struct.gm20b_clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gm20b_clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.gm20b_pll, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.gm20b_clk* %0, %struct.gm20b_clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %13 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %6, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %7, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @gm20b_dvfs_calc_ndiv(%struct.gm20b_clk* %19, i64 %20, i64* %9, i64* %10)
  %22 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %23 = call i32 @gm20b_pllg_read_mnp(%struct.gm20b_clk* %22, %struct.gm20b_pll* %8)
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %95

35:                                               ; preds = %29, %2
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %37 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN, align 4
  %38 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT, align 4
  %39 = call i64 @BIT(i32 %38)
  %40 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT, align 4
  %41 = call i64 @BIT(i32 %40)
  %42 = call i32 @nvkm_mask(%struct.nvkm_device* %36, i32 %37, i64 %39, i64 %41)
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %44 = load i32, i32* @GPCPLL_CFG2, align 4
  %45 = load i64, i64* @GPCPLL_CFG2_SDM_DIN_NEW_MASK, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @GPCPLL_CFG2_SDM_DIN_NEW_SHIFT, align 8
  %48 = shl i64 %46, %47
  %49 = call i32 @nvkm_mask(%struct.nvkm_device* %43, i32 %44, i64 %45, i64 %48)
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = call i32 @udelay(i32 1)
  %54 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %55 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.gm20b_pll, %struct.gm20b_pll* %8, i32 0, i32 1
  %57 = call i32 @gk20a_pllg_write_mnp(%struct.TYPE_5__* %55, %struct.TYPE_6__* %56)
  %58 = call i32 @udelay(i32 1)
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %60 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN, align 4
  %61 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT, align 4
  %62 = call i64 @BIT(i32 %61)
  %63 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT, align 4
  %64 = call i64 @BIT(i32 %63)
  %65 = call i32 @nvkm_mask(%struct.nvkm_device* %59, i32 %60, i64 %62, i64 %64)
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %67 = load i32, i32* @GPC_BCAST_NDIV_SLOWDOWN_DEBUG, align 4
  %68 = load i32, i32* @GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK, align 4
  %69 = load i32, i32* @GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK, align 4
  %70 = call i64 @nvkm_wait_usec(%struct.nvkm_device* %66, i32 500, i32 %67, i32 %68, i32 %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %35
  %73 = load i32, i32* @ETIMEDOUT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %35
  %76 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %77 = load i32, i32* @GPCPLL_CFG2, align 4
  %78 = load i64, i64* @GPCPLL_CFG2_SDM_DIN_MASK, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @GPCPLL_CFG2_SDM_DIN_SHIFT, align 8
  %81 = shl i64 %79, %80
  %82 = call i32 @nvkm_mask(%struct.nvkm_device* %76, i32 %77, i64 %78, i64 %81)
  %83 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %84 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN, align 4
  %85 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT, align 4
  %86 = call i64 @BIT(i32 %85)
  %87 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT, align 4
  %88 = call i64 @BIT(i32 %87)
  %89 = or i64 %86, %88
  %90 = call i32 @nvkm_mask(%struct.nvkm_device* %83, i32 %84, i64 %89, i64 0)
  %91 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %92 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN, align 4
  %93 = call i32 @nvkm_rd32(%struct.nvkm_device* %91, i32 %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %75, %34
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @gm20b_dvfs_calc_ndiv(%struct.gm20b_clk*, i64, i64*, i64*) #1

declare dso_local i32 @gm20b_pllg_read_mnp(%struct.gm20b_clk*, %struct.gm20b_pll*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i64, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gk20a_pllg_write_mnp(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i64 @nvkm_wait_usec(%struct.nvkm_device*, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
