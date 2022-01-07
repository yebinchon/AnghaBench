; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_pllg_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_pllg_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gm20b_clk = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@GPCPLL_CFG = common dso_local global i32 0, align 4
@GPCPLL_CFG_ENABLE = common dso_local global i32 0, align 4
@GPCPLL_CFG_SYNC_MODE = common dso_local global i32 0, align 4
@SEL_VCO = common dso_local global i32 0, align 4
@SEL_VCO_GPC2CLK_OUT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gm20b_clk*)* @gm20b_pllg_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm20b_pllg_enable(%struct.gm20b_clk* %0) #0 {
  %2 = alloca %struct.gm20b_clk*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  store %struct.gm20b_clk* %0, %struct.gm20b_clk** %2, align 8
  %4 = load %struct.gm20b_clk*, %struct.gm20b_clk** %2, align 8
  %5 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  store %struct.nvkm_device* %9, %struct.nvkm_device** %3, align 8
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %11 = load i32, i32* @GPCPLL_CFG, align 4
  %12 = load i32, i32* @GPCPLL_CFG_ENABLE, align 4
  %13 = load i32, i32* @GPCPLL_CFG_ENABLE, align 4
  %14 = call i32 @nvkm_mask(%struct.nvkm_device* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %16 = load i32, i32* @GPCPLL_CFG, align 4
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i32 %16)
  %18 = call i32 @udelay(i32 40)
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %20 = load i32, i32* @GPCPLL_CFG, align 4
  %21 = load i32, i32* @GPCPLL_CFG_SYNC_MODE, align 4
  %22 = load i32, i32* @GPCPLL_CFG_SYNC_MODE, align 4
  %23 = call i32 @nvkm_mask(%struct.nvkm_device* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %25 = load i32, i32* @GPCPLL_CFG, align 4
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 %25)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %28 = load i32, i32* @SEL_VCO, align 4
  %29 = load i32, i32* @SEL_VCO_GPC2CLK_OUT_SHIFT, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* @SEL_VCO_GPC2CLK_OUT_SHIFT, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = call i32 @nvkm_mask(%struct.nvkm_device* %27, i32 %28, i32 %30, i32 %32)
  ret i32 0
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
