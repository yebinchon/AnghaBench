; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv40.c_nv40_clk_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv40.c_nv40_clk_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.nvkm_cstate = type { i32* }
%struct.nv40_clk = type { i32, i32, i32, i32 }

@nv_clk_src_core = common dso_local global i64 0, align 8
@nv_clk_src_shader = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, %struct.nvkm_cstate*)* @nv40_clk_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_clk_calc(%struct.nvkm_clk* %0, %struct.nvkm_cstate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca %struct.nvkm_cstate*, align 8
  %6 = alloca %struct.nv40_clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store %struct.nvkm_cstate* %1, %struct.nvkm_cstate** %5, align 8
  %15 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %16 = call %struct.nv40_clk* @nv40_clk(%struct.nvkm_clk* %15)
  store %struct.nv40_clk* %16, %struct.nv40_clk** %6, align 8
  %17 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @nv_clk_src_core, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @nv_clk_src_shader, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @nv40_clk_calc_pll(%struct.nv40_clk* %29, i32 16384, i32 %30, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %3, align 4
  br label %104

36:                                               ; preds = %2
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  %42 = shl i32 %41, 16
  %43 = or i32 -2147483392, %42
  %44 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %45 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %51 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %70

52:                                               ; preds = %36
  %53 = load i32, i32* %13, align 4
  %54 = shl i32 %53, 16
  %55 = or i32 -1073741824, %54
  %56 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %57 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = shl i32 %58, 24
  %60 = load i32, i32* %12, align 4
  %61 = shl i32 %60, 16
  %62 = or i32 %59, %61
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 %63, 8
  %65 = or i32 %62, %64
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %69 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %52, %40
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @nv40_clk_calc_pll(%struct.nv40_clk* %78, i32 16392, i32 %79, i32* %9, i32* %10, i32* null, i32* null, i32* %13)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %3, align 4
  br label %104

85:                                               ; preds = %77
  %86 = load i32, i32* %13, align 4
  %87 = shl i32 %86, 16
  %88 = or i32 -1073741824, %87
  %89 = load i32, i32* %9, align 4
  %90 = shl i32 %89, 8
  %91 = or i32 %88, %90
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %95 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %97 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %96, i32 0, i32 3
  store i32 547, i32* %97, align 4
  br label %103

98:                                               ; preds = %73, %70
  %99 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %100 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %99, i32 0, i32 2
  store i32 0, i32* %100, align 4
  %101 = load %struct.nv40_clk*, %struct.nv40_clk** %6, align 8
  %102 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %101, i32 0, i32 3
  store i32 819, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %85
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %83, %34
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.nv40_clk* @nv40_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @nv40_clk_calc_pll(%struct.nv40_clk*, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
