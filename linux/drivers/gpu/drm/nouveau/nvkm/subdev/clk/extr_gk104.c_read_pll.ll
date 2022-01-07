; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk104.c_read_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk104.c_read_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk104_clk*, i32)* @read_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pll(%struct.gk104_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gk104_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gk104_clk* %0, %struct.gk104_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.gk104_clk*, %struct.gk104_clk** %4, align 8
  %15 = getelementptr inbounds %struct.gk104_clk, %struct.gk104_clk* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %6, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 0
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %19, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 4
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 4128768
  %29 = ashr i32 %28, 16
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 65280
  %32 = ashr i32 %31, 8
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 255
  %35 = ashr i32 %34, 0
  store i32 %35, i32* %11, align 4
  store i32 61440, i32* %13, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

40:                                               ; preds = %2
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %68 [
    i32 59392, label %42
    i32 59424, label %42
    i32 1253376, label %46
    i32 1253408, label %54
    i32 1273856, label %62
    i32 1273888, label %62
    i32 1273920, label %62
    i32 1274080, label %62
  ]

42:                                               ; preds = %40, %40
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %44 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  store i32 1, i32* %9, align 4
  br label %69

46:                                               ; preds = %40
  %47 = load %struct.gk104_clk*, %struct.gk104_clk** %4, align 8
  %48 = call i32 @read_pll(%struct.gk104_clk* %47, i32 1253408)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 268435456
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 2, i32 1
  store i32 %53, i32* %9, align 4
  br label %69

54:                                               ; preds = %40
  %55 = load %struct.gk104_clk*, %struct.gk104_clk** %4, align 8
  %56 = call i32 @read_div(%struct.gk104_clk* %55, i32 0, i32 1274656, i32 1274672)
  store i32 %56, i32* %12, align 4
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 16
  %60 = call i32 @nvkm_rd32(%struct.nvkm_device* %57, i32 %59)
  %61 = ashr i32 %60, 16
  store i32 %61, i32* %13, align 4
  br label %69

62:                                               ; preds = %40, %40, %40, %40
  %63 = load %struct.gk104_clk*, %struct.gk104_clk** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, 255
  %66 = sdiv i32 %65, 32
  %67 = call i32 @read_div(%struct.gk104_clk* %63, i32 %66, i32 1274144, i32 1274176)
  store i32 %67, i32* %12, align 4
  br label %69

68:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %88

69:                                               ; preds = %62, %54, %46, %42
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 4096
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %78, %79
  %81 = ashr i32 %80, 13
  %82 = add nsw i32 %76, %81
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sdiv i32 %83, %86
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %73, %68, %39
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @read_div(%struct.gk104_clk*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
