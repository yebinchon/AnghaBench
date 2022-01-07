; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_calc_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_calc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_clk = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvbios_pll = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gf100_clk*, i32, i32, i32*)* @calc_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_pll(%struct.gf100_clk* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gf100_clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvkm_subdev*, align 8
  %11 = alloca %struct.nvkm_bios*, align 8
  %12 = alloca %struct.nvbios_pll, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gf100_clk* %0, %struct.gf100_clk** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %18 = getelementptr inbounds %struct.gf100_clk, %struct.gf100_clk* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.nvkm_subdev* %19, %struct.nvkm_subdev** %10, align 8
  %20 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %21 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.nvkm_bios*, %struct.nvkm_bios** %23, align 8
  store %struct.nvkm_bios* %24, %struct.nvkm_bios** %11, align 8
  %25 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %26, 32
  %28 = add nsw i32 1273856, %27
  %29 = call i32 @nvbios_pll_parse(%struct.nvkm_bios* %25, i32 %28, %struct.nvbios_pll* %12)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

33:                                               ; preds = %4
  %34 = load %struct.gf100_clk*, %struct.gf100_clk** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @read_div(%struct.gf100_clk* %34, i32 %35, i32 1274144, i32 1274176)
  %37 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %12, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %12, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %59

42:                                               ; preds = %33
  %43 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @gt215_pll_calc(%struct.nvkm_subdev* %43, %struct.nvbios_pll* %12, i32 %44, i32* %13, i32* null, i32* %14, i32* %15)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %59

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  %51 = shl i32 %50, 16
  %52 = load i32, i32* %13, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %51, %53
  %55 = load i32, i32* %14, align 4
  %56 = or i32 %54, %55
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %49, %48, %41, %32
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @nvbios_pll_parse(%struct.nvkm_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @read_div(%struct.gf100_clk*, i32, i32, i32) #1

declare dso_local i32 @gt215_pll_calc(%struct.nvkm_subdev*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
