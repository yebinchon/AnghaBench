; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_gt215_pll_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_gt215_pll_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.gt215_clk_info = type { i32, i32 }
%struct.gt215_clk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nvbios_pll = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gt215_pll_info(%struct.nvkm_clk* %0, i32 %1, i32 %2, i32 %3, %struct.gt215_clk_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_clk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gt215_clk_info*, align 8
  %12 = alloca %struct.gt215_clk*, align 8
  %13 = alloca %struct.nvkm_subdev*, align 8
  %14 = alloca %struct.nvbios_pll, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.gt215_clk_info* %4, %struct.gt215_clk_info** %11, align 8
  %20 = load %struct.nvkm_clk*, %struct.nvkm_clk** %7, align 8
  %21 = call %struct.gt215_clk* @gt215_clk(%struct.nvkm_clk* %20)
  store %struct.gt215_clk* %21, %struct.gt215_clk** %12, align 8
  %22 = load %struct.gt215_clk*, %struct.gt215_clk** %12, align 8
  %23 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.nvkm_subdev* %24, %struct.nvkm_subdev** %13, align 8
  %25 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %11, align 8
  %26 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.gt215_clk*, %struct.gt215_clk** %12, align 8
  %28 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %11, align 8
  %32 = call i32 @gt215_clk_info(%struct.TYPE_4__* %28, i32 %29, i32 %30, %struct.gt215_clk_info* %31)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %19, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %5
  %39 = load i32, i32* %18, align 4
  %40 = icmp sge i32 %39, -2000
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %18, align 4
  %43 = icmp slt i32 %42, 3000
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %5
  br label %90

45:                                               ; preds = %41, %38
  %46 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %13, align 8
  %47 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @nvbios_pll_parse(i32 %50, i32 %51, %struct.nvbios_pll* %14)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %19, align 4
  store i32 %56, i32* %6, align 4
  br label %106

57:                                               ; preds = %45
  %58 = load %struct.gt215_clk*, %struct.gt215_clk** %12, align 8
  %59 = getelementptr inbounds %struct.gt215_clk, %struct.gt215_clk* %58, i32 0, i32 0
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 16
  %62 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %14, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %11, align 8
  %65 = call i32 @gt215_clk_info(%struct.TYPE_4__* %59, i32 %61, i32 %63, %struct.gt215_clk_info* %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %14, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %106

73:                                               ; preds = %57
  %74 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %13, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @gt215_pll_calc(%struct.nvkm_subdev* %74, %struct.nvbios_pll* %14, i32 %75, i32* %16, i32* null, i32* %17, i32* %15)
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load i32, i32* %15, align 4
  %81 = shl i32 %80, 16
  %82 = load i32, i32* %16, align 4
  %83 = shl i32 %82, 8
  %84 = or i32 %81, %83
  %85 = load i32, i32* %17, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %11, align 8
  %88 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %79, %73
  br label %90

90:                                               ; preds = %89, %44
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 7566
  %93 = sdiv i32 %92, 15133
  %94 = call i32 @max(i32 %93, i32 18)
  %95 = load %struct.gt215_clk_info*, %struct.gt215_clk_info** %11, align 8
  %96 = getelementptr inbounds %struct.gt215_clk_info, %struct.gt215_clk_info* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %19, align 4
  br label %104

101:                                              ; preds = %90
  %102 = load i32, i32* @ERANGE, align 4
  %103 = sub nsw i32 0, %102
  br label %104

104:                                              ; preds = %101, %99
  %105 = phi i32 [ %100, %99 ], [ %103, %101 ]
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %104, %70, %55
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.gt215_clk* @gt215_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @gt215_clk_info(%struct.TYPE_4__*, i32, i32, %struct.gt215_clk_info*) #1

declare dso_local i32 @nvbios_pll_parse(i32, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @gt215_pll_calc(%struct.nvkm_subdev*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
