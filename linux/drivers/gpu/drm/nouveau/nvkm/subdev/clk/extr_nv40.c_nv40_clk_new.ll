; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv40.c_nv40_clk_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv40.c_nv40_clk_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_clk = type { i32, i32 }
%struct.nv40_clk = type { %struct.nvkm_clk }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv04_clk_pll_calc = common dso_local global i32 0, align 4
@nv04_clk_pll_prog = common dso_local global i32 0, align 4
@nv40_clk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv40_clk_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_clk** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_clk**, align 8
  %8 = alloca %struct.nv40_clk*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_clk** %2, %struct.nvkm_clk*** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nv40_clk* @kzalloc(i32 8, i32 %9)
  store %struct.nv40_clk* %10, %struct.nv40_clk** %8, align 8
  %11 = icmp ne %struct.nv40_clk* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %32

15:                                               ; preds = %3
  %16 = load i32, i32* @nv04_clk_pll_calc, align 4
  %17 = load %struct.nv40_clk*, %struct.nv40_clk** %8, align 8
  %18 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @nv04_clk_pll_prog, align 4
  %21 = load %struct.nv40_clk*, %struct.nv40_clk** %8, align 8
  %22 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.nv40_clk*, %struct.nv40_clk** %8, align 8
  %25 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %24, i32 0, i32 0
  %26 = load %struct.nvkm_clk**, %struct.nvkm_clk*** %7, align 8
  store %struct.nvkm_clk* %25, %struct.nvkm_clk** %26, align 8
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.nv40_clk*, %struct.nv40_clk** %8, align 8
  %30 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %29, i32 0, i32 0
  %31 = call i32 @nvkm_clk_ctor(i32* @nv40_clk, %struct.nvkm_device* %27, i32 %28, i32 1, %struct.nvkm_clk* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %15, %12
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.nv40_clk* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_clk_ctor(i32*, %struct.nvkm_device*, i32, i32, %struct.nvkm_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
