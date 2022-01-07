; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_clk_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.nvkm_cstate = type { i32* }
%struct.gk20a_clk = type { i32 }

@nv_clk_src_gpc = common dso_local global i64 0, align 8
@GK20A_CLK_GPC_MDIV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_clk_calc(%struct.nvkm_clk* %0, %struct.nvkm_cstate* %1) #0 {
  %3 = alloca %struct.nvkm_clk*, align 8
  %4 = alloca %struct.nvkm_cstate*, align 8
  %5 = alloca %struct.gk20a_clk*, align 8
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %3, align 8
  store %struct.nvkm_cstate* %1, %struct.nvkm_cstate** %4, align 8
  %6 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %7 = call %struct.gk20a_clk* @gk20a_clk(%struct.nvkm_clk* %6)
  store %struct.gk20a_clk* %7, %struct.gk20a_clk** %5, align 8
  %8 = load %struct.gk20a_clk*, %struct.gk20a_clk** %5, align 8
  %9 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %4, align 8
  %10 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @nv_clk_src_gpc, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GK20A_CLK_GPC_MDIV, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load %struct.gk20a_clk*, %struct.gk20a_clk** %5, align 8
  %18 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %17, i32 0, i32 0
  %19 = call i32 @gk20a_pllg_calc_mnp(%struct.gk20a_clk* %8, i32 %16, i32* %18)
  ret i32 %19
}

declare dso_local %struct.gk20a_clk* @gk20a_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @gk20a_pllg_calc_mnp(%struct.gk20a_clk*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
