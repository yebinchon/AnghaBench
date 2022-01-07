; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk104.c_read_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk104.c_read_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk104_clk*, i32, i32, i32)* @read_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_div(%struct.gk104_clk* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gk104_clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gk104_clk* %0, %struct.gk104_clk** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.gk104_clk*, %struct.gk104_clk** %6, align 8
  %16 = getelementptr inbounds %struct.gk104_clk, %struct.gk104_clk* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %10, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 4
  %24 = add nsw i32 %21, %23
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %28, 4
  %30 = add nsw i32 %27, %29
  %31 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, 3
  switch i32 %33, label %69 [
    i32 0, label %34
    i32 2, label %43
    i32 3, label %44
  ]

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, 196608
  %37 = icmp ne i32 %36, 196608
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %40 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  br label %70

42:                                               ; preds = %34
  store i32 108000, i32* %5, align 4
  br label %70

43:                                               ; preds = %4
  store i32 100000, i32* %5, align 4
  br label %70

44:                                               ; preds = %4
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %45, -2147483648
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct.gk104_clk*, %struct.gk104_clk** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %51, 4
  %53 = add nsw i32 %50, %52
  %54 = call i32 @read_vco(%struct.gk104_clk* %49, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %55, 63
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = mul nsw i32 %58, 2
  %60 = load i32, i32* %14, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %5, align 4
  br label %70

62:                                               ; preds = %44
  %63 = load %struct.gk104_clk*, %struct.gk104_clk** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %65, 4
  %67 = add nsw i32 %64, %66
  %68 = call i32 @read_vco(%struct.gk104_clk* %63, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %70

69:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %62, %48, %43, %42, %38
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @read_vco(%struct.gk104_clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
