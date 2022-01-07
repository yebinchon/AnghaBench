; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_calc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_calc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_clk = type { i32, i32 (i32)* }
%struct.gk20a_pll = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_pllg_calc_rate(%struct.gk20a_clk* %0, %struct.gk20a_pll* %1) #0 {
  %3 = alloca %struct.gk20a_clk*, align 8
  %4 = alloca %struct.gk20a_pll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gk20a_clk* %0, %struct.gk20a_clk** %3, align 8
  store %struct.gk20a_pll* %1, %struct.gk20a_pll** %4, align 8
  %7 = load %struct.gk20a_clk*, %struct.gk20a_clk** %3, align 8
  %8 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.gk20a_pll*, %struct.gk20a_pll** %4, align 8
  %11 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.gk20a_pll*, %struct.gk20a_pll** %4, align 8
  %15 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.gk20a_clk*, %struct.gk20a_clk** %3, align 8
  %18 = getelementptr inbounds %struct.gk20a_clk, %struct.gk20a_clk* %17, i32 0, i32 1
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = load %struct.gk20a_pll*, %struct.gk20a_pll** %4, align 8
  %21 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %19(i32 %22)
  %24 = mul nsw i32 %16, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sdiv i32 %25, %26
  %28 = sdiv i32 %27, 2
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
