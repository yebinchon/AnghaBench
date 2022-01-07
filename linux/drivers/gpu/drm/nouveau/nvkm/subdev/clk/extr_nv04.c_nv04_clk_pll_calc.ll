; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv04.c_nv04_clk_pll_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv04.c_nv04_clk_pll_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.nvbios_pll = type { i32 }
%struct.nvkm_pll_vals = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_clk_pll_calc(%struct.nvkm_clk* %0, %struct.nvbios_pll* %1, i32 %2, %struct.nvkm_pll_vals* %3) #0 {
  %5 = alloca %struct.nvkm_clk*, align 8
  %6 = alloca %struct.nvbios_pll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_pll_vals*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %5, align 8
  store %struct.nvbios_pll* %1, %struct.nvbios_pll** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_pll_vals* %3, %struct.nvkm_pll_vals** %8, align 8
  %15 = load %struct.nvkm_clk*, %struct.nvkm_clk** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %15, i32 0, i32 0
  %17 = load %struct.nvbios_pll*, %struct.nvbios_pll** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @nv04_pll_calc(i32* %16, %struct.nvbios_pll* %17, i32 %18, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %4
  %23 = load %struct.nvbios_pll*, %struct.nvbios_pll** %6, align 8
  %24 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %8, align 8
  %27 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %8, align 8
  %30 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %8, align 8
  %33 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %8, align 8
  %36 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %8, align 8
  %39 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %8, align 8
  %42 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %22, %4
  %44 = load i32, i32* %14, align 4
  ret i32 %44
}

declare dso_local i32 @nv04_pll_calc(i32*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
