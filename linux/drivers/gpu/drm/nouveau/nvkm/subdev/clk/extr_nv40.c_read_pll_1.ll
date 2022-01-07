; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv40.c_read_pll_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv40.c_read_pll_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv40_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv40_clk*, i32)* @read_pll_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pll_1(%struct.nv40_clk* %0, i32 %1) #0 {
  %3 = alloca %struct.nv40_clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nv40_clk* %0, %struct.nv40_clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.nv40_clk*, %struct.nv40_clk** %3, align 8
  %13 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %5, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 0
  %20 = call i32 @nvkm_rd32(%struct.nvkm_device* %17, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 458752
  %23 = ashr i32 %22, 16
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 65280
  %26 = ashr i32 %25, 8
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 255
  %29 = ashr i32 %28, 0
  store i32 %29, i32* %9, align 4
  store i32 27000, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, -2147483648
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %33, %2
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %40, %41
  ret i32 %42
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
