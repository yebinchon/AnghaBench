; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv40.c_nv40_clk_calc_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv40.c_nv40_clk_calc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv40_clk = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.nvbios_pll = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv40_clk*, i64, i64, i32*, i32*, i32*, i32*, i32*)* @nv40_clk_calc_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_clk_calc_pll(%struct.nv40_clk* %0, i64 %1, i64 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nv40_clk*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.nvkm_subdev*, align 8
  %19 = alloca %struct.nvbios_pll, align 8
  %20 = alloca i32, align 4
  store %struct.nv40_clk* %0, %struct.nv40_clk** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load %struct.nv40_clk*, %struct.nv40_clk** %10, align 8
  %22 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store %struct.nvkm_subdev* %23, %struct.nvkm_subdev** %18, align 8
  %24 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %18, align 8
  %25 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @nvbios_pll_parse(i32 %28, i64 %29, %struct.nvbios_pll* %19)
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %20, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %8
  %34 = load i32, i32* %20, align 4
  store i32 %34, i32* %9, align 4
  br label %60

35:                                               ; preds = %8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %19, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %19, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %18, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = call i32 @nv04_pll_calc(%struct.nvkm_subdev* %45, %struct.nvbios_pll* %19, i64 %46, i32* %47, i32* %48, i32* %49, i32* %50, i32* %51)
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* %20, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @ERANGE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %9, align 4
  br label %60

58:                                               ; preds = %44
  %59 = load i32, i32* %20, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %55, %33
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i32 @nvbios_pll_parse(i32, i64, %struct.nvbios_pll*) #1

declare dso_local i32 @nv04_pll_calc(%struct.nvkm_subdev*, %struct.nvbios_pll*, i64, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
