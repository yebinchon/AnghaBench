; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@GPCPLL_CFG = common dso_local global i32 0, align 4
@GPCPLL_CFG_ENABLE = common dso_local global i32 0, align 4
@GPCPLL_CFG_LOCK_DET_OFF = common dso_local global i32 0, align 4
@GPCPLL_CFG_LOCK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SEL_VCO = common dso_local global i32 0, align 4
@SEL_VCO_GPC2CLK_OUT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk20a_clk*)* @gk20a_pllg_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk20a_pllg_enable(%struct.gk20a_clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gk20a_clk*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.gk20a_clk* %0, %struct.gk20a_clk** %3, align 8
  %6 = load %struct.gk20a_clk*, %struct.gk20a_clk** %3, align 8
  %7 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %4, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %12 = load i32, i32* @GPCPLL_CFG, align 4
  %13 = load i32, i32* @GPCPLL_CFG_ENABLE, align 4
  %14 = load i32, i32* @GPCPLL_CFG_ENABLE, align 4
  %15 = call i32 @nvkm_mask(%struct.nvkm_device* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = load i32, i32* @GPCPLL_CFG, align 4
  %18 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 %17)
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %20 = load i32, i32* @GPCPLL_CFG, align 4
  %21 = call i32 @nvkm_rd32(%struct.nvkm_device* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @GPCPLL_CFG_LOCK_DET_OFF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load i32, i32* @GPCPLL_CFG_LOCK_DET_OFF, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %32 = load i32, i32* @GPCPLL_CFG, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @nvkm_wr32(%struct.nvkm_device* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %1
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %37 = load i32, i32* @GPCPLL_CFG, align 4
  %38 = load i32, i32* @GPCPLL_CFG_LOCK, align 4
  %39 = load i32, i32* @GPCPLL_CFG_LOCK, align 4
  %40 = call i64 @nvkm_wait_usec(%struct.nvkm_device* %36, i32 300, i32 %37, i32 %38, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %53

45:                                               ; preds = %35
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %47 = load i32, i32* @SEL_VCO, align 4
  %48 = load i32, i32* @SEL_VCO_GPC2CLK_OUT_SHIFT, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = load i32, i32* @SEL_VCO_GPC2CLK_OUT_SHIFT, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = call i32 @nvkm_mask(%struct.nvkm_device* %46, i32 %47, i32 %49, i32 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %45, %42
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i64 @nvkm_wait_usec(%struct.nvkm_device*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
