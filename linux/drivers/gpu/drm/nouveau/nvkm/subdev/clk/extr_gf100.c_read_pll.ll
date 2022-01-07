; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_read_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gf100.c_read_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@nv_clk_src_mpllsrc = common dso_local global i32 0, align 4
@nv_clk_src_mpllsrcref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gf100_clk*, i32)* @read_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pll(%struct.gf100_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gf100_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gf100_clk* %0, %struct.gf100_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.gf100_clk*, %struct.gf100_clk** %4, align 8
  %14 = getelementptr inbounds %struct.gf100_clk, %struct.gf100_clk* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %6, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 0
  %21 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 4
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 4128768
  %28 = ashr i32 %27, 16
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 65280
  %31 = ashr i32 %30, 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 255
  %34 = ashr i32 %33, 0
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %61 [
    i32 59392, label %41
    i32 59424, label %41
    i32 1253376, label %45
    i32 1253408, label %50
    i32 1273856, label %55
    i32 1273888, label %55
    i32 1273920, label %55
    i32 1274080, label %55
  ]

41:                                               ; preds = %39, %39
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %43 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  store i32 1, i32* %9, align 4
  br label %62

45:                                               ; preds = %39
  %46 = load %struct.gf100_clk*, %struct.gf100_clk** %4, align 8
  %47 = getelementptr inbounds %struct.gf100_clk, %struct.gf100_clk* %46, i32 0, i32 0
  %48 = load i32, i32* @nv_clk_src_mpllsrc, align 4
  %49 = call i32 @nvkm_clk_read(%struct.TYPE_4__* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  br label %62

50:                                               ; preds = %39
  %51 = load %struct.gf100_clk*, %struct.gf100_clk** %4, align 8
  %52 = getelementptr inbounds %struct.gf100_clk, %struct.gf100_clk* %51, i32 0, i32 0
  %53 = load i32, i32* @nv_clk_src_mpllsrcref, align 4
  %54 = call i32 @nvkm_clk_read(%struct.TYPE_4__* %52, i32 %53)
  store i32 %54, i32* %12, align 4
  br label %62

55:                                               ; preds = %39, %39, %39, %39
  %56 = load %struct.gf100_clk*, %struct.gf100_clk** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 255
  %59 = sdiv i32 %58, 32
  %60 = call i32 @read_div(%struct.gf100_clk* %56, i32 %59, i32 1274144, i32 1274176)
  store i32 %60, i32* %12, align 4
  br label %62

61:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %70

62:                                               ; preds = %55, %50, %45, %41
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = sdiv i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %62, %61, %38
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_clk_read(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @read_div(%struct.gf100_clk*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
