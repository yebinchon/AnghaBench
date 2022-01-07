; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv04.c_nv04_clk_pll_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv04.c_nv04_clk_pll_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_6__*, %struct.nvkm_devinit* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nvkm_devinit = type { i32 }
%struct.nvkm_pll_vals = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_clk_pll_prog(%struct.nvkm_clk* %0, i32 %1, %struct.nvkm_pll_vals* %2) #0 {
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_pll_vals*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.nvkm_devinit*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_pll_vals* %2, %struct.nvkm_pll_vals** %6, align 8
  %10 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %11 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %7, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %15 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %14, i32 0, i32 1
  %16 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %15, align 8
  store %struct.nvkm_devinit* %16, %struct.nvkm_devinit** %8, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 48
  br i1 %24, label %37, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 49
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 53
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 54
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp sge i32 %35, 64
  br i1 %36, label %37, label %51

37:                                               ; preds = %34, %31, %28, %25, %3
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 16476
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %44 = call i32 @setPLL_double_highregs(%struct.nvkm_devinit* %41, i32 %42, %struct.nvkm_pll_vals* %43)
  br label %50

45:                                               ; preds = %37
  %46 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %8, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %49 = call i32 @setPLL_double_lowregs(%struct.nvkm_devinit* %46, i32 %47, %struct.nvkm_pll_vals* %48)
  br label %50

50:                                               ; preds = %45, %40
  br label %56

51:                                               ; preds = %34
  %52 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %8, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %55 = call i32 @setPLL_single(%struct.nvkm_devinit* %52, i32 %53, %struct.nvkm_pll_vals* %54)
  br label %56

56:                                               ; preds = %51, %50
  ret i32 0
}

declare dso_local i32 @setPLL_double_highregs(%struct.nvkm_devinit*, i32, %struct.nvkm_pll_vals*) #1

declare dso_local i32 @setPLL_double_lowregs(%struct.nvkm_devinit*, i32, %struct.nvkm_pll_vals*) #1

declare dso_local i32 @setPLL_single(%struct.nvkm_devinit*, i32, %struct.nvkm_pll_vals*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
