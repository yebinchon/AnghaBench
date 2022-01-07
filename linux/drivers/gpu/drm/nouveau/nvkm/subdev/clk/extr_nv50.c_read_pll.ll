; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv50.c_read_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv50.c_read_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@nv_clk_src_dom6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_clk*, i32)* @read_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pll(%struct.nv50_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nv50_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nv50_clk* %0, %struct.nv50_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.nv50_clk*, %struct.nv50_clk** %4, align 8
  %17 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %6, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 49216)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 0
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 4
  %30 = call i32 @nvkm_rd32(%struct.nvkm_device* %27, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.nv50_clk*, %struct.nv50_clk** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @read_pll_ref(%struct.nv50_clk* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 16424
  br i1 %35, label %36, label %51

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 1048576
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %42 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 160
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.nv50_clk*, %struct.nv50_clk** %4, align 8
  %47 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %46, i32 0, i32 0
  %48 = load i32, i32* @nv_clk_src_dom6, align 4
  %49 = call i32 @nvkm_clk_read(%struct.TYPE_4__* %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %92

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %36, %2
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, -16777216
  %54 = lshr i32 %53, 24
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 16711680
  %57 = ashr i32 %56, 16
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 65280
  %60 = ashr i32 %59, 8
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 255
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, -2147483648
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %51
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %12, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %14, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 1073742080
  %77 = icmp eq i32 %76, 1073741824
  br i1 %77, label %78, label %89

78:                                               ; preds = %69
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %13, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %15, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %11, align 4
  br label %88

87:                                               ; preds = %78
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %81
  br label %89

89:                                               ; preds = %88, %69
  br label %90

90:                                               ; preds = %89, %66, %51
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %45
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @read_pll_ref(%struct.nv50_clk*, i32) #1

declare dso_local i32 @nvkm_clk_read(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
