; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_clk_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_clk_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gm20b_clk = type { i32 }
%struct.gk20a_pll = type { i32 }

@GPCPLL_CFG = common dso_local global i32 0, align 4
@GPCPLL_CFG_IDDQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_clk*)* @gm20b_clk_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm20b_clk_fini(%struct.nvkm_clk* %0) #0 {
  %2 = alloca %struct.nvkm_clk*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.gm20b_clk*, align 8
  %5 = alloca %struct.gk20a_pll, align 4
  %6 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %2, align 8
  %7 = load %struct.nvkm_clk*, %struct.nvkm_clk** %2, align 8
  %8 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %3, align 8
  %11 = load %struct.nvkm_clk*, %struct.nvkm_clk** %2, align 8
  %12 = call %struct.gm20b_clk* @gm20b_clk(%struct.nvkm_clk* %11)
  store %struct.gm20b_clk* %12, %struct.gm20b_clk** %4, align 8
  %13 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %14 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %13, i32 0, i32 0
  %15 = call i64 @gk20a_pllg_is_enabled(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %19 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %18, i32 0, i32 0
  %20 = call i32 @gk20a_pllg_read_mnp(i32* %19, %struct.gk20a_pll* %5)
  %21 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %22 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %21, i32 0, i32 0
  %23 = call i32 @gk20a_pllg_n_lo(i32* %22, %struct.gk20a_pll* %5)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @gm20b_pllg_slide(%struct.gm20b_clk* %24, i32 %25)
  br label %27

27:                                               ; preds = %17, %1
  %28 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %29 = call i32 @gm20b_pllg_disable(%struct.gm20b_clk* %28)
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %31 = load i32, i32* @GPCPLL_CFG, align 4
  %32 = load i32, i32* @GPCPLL_CFG_IDDQ, align 4
  %33 = call i32 @nvkm_mask(%struct.nvkm_device* %30, i32 %31, i32 %32, i32 1)
  ret void
}

declare dso_local %struct.gm20b_clk* @gm20b_clk(%struct.nvkm_clk*) #1

declare dso_local i64 @gk20a_pllg_is_enabled(i32*) #1

declare dso_local i32 @gk20a_pllg_read_mnp(i32*, %struct.gk20a_pll*) #1

declare dso_local i32 @gk20a_pllg_n_lo(i32*, %struct.gk20a_pll*) #1

declare dso_local i32 @gm20b_pllg_slide(%struct.gm20b_clk*, i32) #1

declare dso_local i32 @gm20b_pllg_disable(%struct.gm20b_clk*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
