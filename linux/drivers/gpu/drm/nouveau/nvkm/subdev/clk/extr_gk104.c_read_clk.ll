; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk104.c_read_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk104.c_read_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk104_clk*, i32)* @read_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_clk(%struct.gk104_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gk104_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gk104_clk* %0, %struct.gk104_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.gk104_clk*, %struct.gk104_clk** %4, align 8
  %13 = getelementptr inbounds %struct.gk104_clk, %struct.gk104_clk* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %6, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 4
  %20 = add nsw i32 1274448, %19
  %21 = call i32 @nvkm_rd32(%struct.nvkm_device* %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 7
  br i1 %23, label %24, label %43

24:                                               ; preds = %2
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %25, i32 1274112)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.gk104_clk*, %struct.gk104_clk** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 32
  %36 = add nsw i32 1273856, %35
  %37 = call i32 @read_pll(%struct.gk104_clk* %33, i32 %36)
  store i32 %37, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %42

38:                                               ; preds = %24
  %39 = load %struct.gk104_clk*, %struct.gk104_clk** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @read_div(%struct.gk104_clk* %39, i32 %40, i32 1274208, i32 1274320)
  store i32 %41, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %38, %32
  br label %74

43:                                               ; preds = %2
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 1274208, %46
  %48 = call i32 @nvkm_rd32(%struct.nvkm_device* %44, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, 3
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %69

52:                                               ; preds = %43
  %53 = load %struct.gk104_clk*, %struct.gk104_clk** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @read_div(%struct.gk104_clk* %53, i32 %54, i32 1274208, i32 1274320)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %56, 256
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, 1073741824
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.gk104_clk*, %struct.gk104_clk** %4, align 8
  %65 = call i32 @read_pll(%struct.gk104_clk* %64, i32 1274080)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %59
  store i32 1, i32* %9, align 4
  br label %68

67:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %66
  br label %73

69:                                               ; preds = %43
  %70 = load %struct.gk104_clk*, %struct.gk104_clk** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @read_div(%struct.gk104_clk* %70, i32 %71, i32 1274208, i32 1274320)
  store i32 %72, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %69, %68
  br label %74

74:                                               ; preds = %73, %42
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, -2147483648
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 16128
  %84 = ashr i32 %83, 8
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %9, align 4
  br label %91

86:                                               ; preds = %78
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, 63
  %89 = ashr i32 %88, 0
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %86, %81
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 %92, 2
  %94 = load i32, i32* %9, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %3, align 4
  br label %98

96:                                               ; preds = %74
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @read_pll(%struct.gk104_clk*, i32) #1

declare dso_local i32 @read_div(%struct.gk104_clk*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
