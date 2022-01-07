; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_slide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_slide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gk20a_pll = type { i64 }

@GPCPLL_NDIV_SLOWDOWN = common dso_local global i32 0, align 4
@GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT = common dso_local global i32 0, align 4
@GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT = common dso_local global i32 0, align 4
@GPC_BCAST_NDIV_SLOWDOWN_DEBUG = common dso_local global i32 0, align 4
@GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk20a_clk*, i64)* @gk20a_pllg_slide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk20a_pllg_slide(%struct.gk20a_clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gk20a_clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.gk20a_pll, align 8
  %9 = alloca i32, align 4
  store %struct.gk20a_clk* %0, %struct.gk20a_clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %11 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %6, align 8
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %17 = call i32 @gk20a_pllg_read_mnp(%struct.gk20a_clk* %16, %struct.gk20a_pll* %8)
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

23:                                               ; preds = %2
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %25 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN, align 4
  %26 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = call i32 @nvkm_mask(%struct.nvkm_device* %24, i32 %25, i32 %27, i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %8, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = call i32 @udelay(i32 1)
  %34 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %35 = call i32 @gk20a_pllg_write_mnp(%struct.gk20a_clk* %34, %struct.gk20a_pll* %8)
  %36 = call i32 @udelay(i32 1)
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %38 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN, align 4
  %39 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = call i32 @nvkm_mask(%struct.nvkm_device* %37, i32 %38, i32 %40, i32 %42)
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %45 = load i32, i32* @GPC_BCAST_NDIV_SLOWDOWN_DEBUG, align 4
  %46 = load i32, i32* @GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK, align 4
  %47 = load i32, i32* @GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK, align 4
  %48 = call i64 @nvkm_wait_usec(%struct.nvkm_device* %44, i32 500, i32 %45, i32 %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %23
  %51 = load i32, i32* @ETIMEDOUT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %23
  %54 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %55 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN, align 4
  %56 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = or i32 %57, %59
  %61 = call i32 @nvkm_mask(%struct.nvkm_device* %54, i32 %55, i32 %60, i32 0)
  %62 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %63 = load i32, i32* @GPCPLL_NDIV_SLOWDOWN, align 4
  %64 = call i32 @nvkm_rd32(%struct.nvkm_device* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %53, %22
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @gk20a_pllg_read_mnp(%struct.gk20a_clk*, %struct.gk20a_pll*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gk20a_pllg_write_mnp(%struct.gk20a_clk*, %struct.gk20a_pll*) #1

declare dso_local i64 @nvkm_wait_usec(%struct.nvkm_device*, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
