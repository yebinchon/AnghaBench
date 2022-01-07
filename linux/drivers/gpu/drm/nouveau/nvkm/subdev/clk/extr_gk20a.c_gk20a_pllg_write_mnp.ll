; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_write_mnp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_write_mnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gk20a_pll = type { i32, i32, i32 }

@GPCPLL_COEFF_M_WIDTH = common dso_local global i32 0, align 4
@GPCPLL_COEFF_M_SHIFT = common dso_local global i32 0, align 4
@GPCPLL_COEFF_N_WIDTH = common dso_local global i32 0, align 4
@GPCPLL_COEFF_N_SHIFT = common dso_local global i32 0, align 4
@GPCPLL_COEFF_P_WIDTH = common dso_local global i32 0, align 4
@GPCPLL_COEFF_P_SHIFT = common dso_local global i32 0, align 4
@GPCPLL_COEFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gk20a_pllg_write_mnp(%struct.gk20a_clk* %0, %struct.gk20a_pll* %1) #0 {
  %3 = alloca %struct.gk20a_clk*, align 8
  %4 = alloca %struct.gk20a_pll*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.gk20a_clk* %0, %struct.gk20a_clk** %3, align 8
  store %struct.gk20a_pll* %1, %struct.gk20a_pll** %4, align 8
  %7 = load %struct.gk20a_clk*, %struct.gk20a_clk** %3, align 8
  %8 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %5, align 8
  %12 = load %struct.gk20a_pll*, %struct.gk20a_pll** %4, align 8
  %13 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GPCPLL_COEFF_M_WIDTH, align 4
  %16 = call i32 @MASK(i32 %15)
  %17 = and i32 %14, %16
  %18 = load i32, i32* @GPCPLL_COEFF_M_SHIFT, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.gk20a_pll*, %struct.gk20a_pll** %4, align 8
  %21 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GPCPLL_COEFF_N_WIDTH, align 4
  %24 = call i32 @MASK(i32 %23)
  %25 = and i32 %22, %24
  %26 = load i32, i32* @GPCPLL_COEFF_N_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.gk20a_pll*, %struct.gk20a_pll** %4, align 8
  %31 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GPCPLL_COEFF_P_WIDTH, align 4
  %34 = call i32 @MASK(i32 %33)
  %35 = and i32 %32, %34
  %36 = load i32, i32* @GPCPLL_COEFF_P_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %41 = load i32, i32* @GPCPLL_COEFF, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @nvkm_wr32(%struct.nvkm_device* %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @MASK(i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
