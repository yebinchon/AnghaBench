; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gk20a_clk = type { i32 }
%struct.gk20a_pll = type { i32 }

@GPCPLL_CFG = common dso_local global i32 0, align 4
@GPCPLL_CFG_IDDQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gk20a_clk_fini(%struct.nvkm_clk* %0) #0 {
  %2 = alloca %struct.nvkm_clk*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.gk20a_clk*, align 8
  %5 = alloca %struct.gk20a_pll, align 4
  %6 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %2, align 8
  %7 = load %struct.nvkm_clk*, %struct.nvkm_clk** %2, align 8
  %8 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %3, align 8
  %11 = load %struct.nvkm_clk*, %struct.nvkm_clk** %2, align 8
  %12 = call %struct.gk20a_clk* @gk20a_clk(%struct.nvkm_clk* %11)
  store %struct.gk20a_clk* %12, %struct.gk20a_clk** %4, align 8
  %13 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %14 = call i64 @gk20a_pllg_is_enabled(%struct.gk20a_clk* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %18 = call i32 @gk20a_pllg_read_mnp(%struct.gk20a_clk* %17, %struct.gk20a_pll* %5)
  %19 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %20 = call i32 @gk20a_pllg_n_lo(%struct.gk20a_clk* %19, %struct.gk20a_pll* %5)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @gk20a_pllg_slide(%struct.gk20a_clk* %21, i32 %22)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %26 = call i32 @gk20a_pllg_disable(%struct.gk20a_clk* %25)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %28 = load i32, i32* @GPCPLL_CFG, align 4
  %29 = load i32, i32* @GPCPLL_CFG_IDDQ, align 4
  %30 = call i32 @nvkm_mask(%struct.nvkm_device* %27, i32 %28, i32 %29, i32 1)
  ret void
}

declare dso_local %struct.gk20a_clk* @gk20a_clk(%struct.nvkm_clk*) #1

declare dso_local i64 @gk20a_pllg_is_enabled(%struct.gk20a_clk*) #1

declare dso_local i32 @gk20a_pllg_read_mnp(%struct.gk20a_clk*, %struct.gk20a_pll*) #1

declare dso_local i32 @gk20a_pllg_n_lo(%struct.gk20a_clk*, %struct.gk20a_pll*) #1

declare dso_local i32 @gk20a_pllg_slide(%struct.gk20a_clk*, i32) #1

declare dso_local i32 @gk20a_pllg_disable(%struct.gk20a_clk*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
