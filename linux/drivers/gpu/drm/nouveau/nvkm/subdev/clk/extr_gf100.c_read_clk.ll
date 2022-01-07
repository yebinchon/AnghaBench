; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_read_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_read_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gf100_clk*, i32)* @read_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_clk(%struct.gf100_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gf100_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gf100_clk* %0, %struct.gf100_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gf100_clk*, %struct.gf100_clk** %4, align 8
  %12 = getelementptr inbounds %struct.gf100_clk, %struct.gf100_clk* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %6, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %17, 4
  %19 = add nsw i32 1274448, %18
  %20 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 1274112)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 7
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.gf100_clk*, %struct.gf100_clk** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 32
  %35 = add nsw i32 1273856, %34
  %36 = call i32 @read_pll(%struct.gf100_clk* %32, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %40

37:                                               ; preds = %28
  %38 = load %struct.gf100_clk*, %struct.gf100_clk** %4, align 8
  %39 = call i32 @read_pll(%struct.gf100_clk* %38, i32 1274080)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 16128
  %43 = ashr i32 %42, 8
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %10, align 4
  br label %53

45:                                               ; preds = %2
  %46 = load %struct.gf100_clk*, %struct.gf100_clk** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @read_div(%struct.gf100_clk* %46, i32 %47, i32 1274208, i32 1274320)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 63
  %51 = ashr i32 %50, 0
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %45, %40
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, -2147483648
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 2
  %60 = load i32, i32* %10, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @read_pll(%struct.gf100_clk*, i32) #1

declare dso_local i32 @read_div(%struct.gf100_clk*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
