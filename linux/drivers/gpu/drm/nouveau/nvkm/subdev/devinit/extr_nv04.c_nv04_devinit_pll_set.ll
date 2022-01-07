; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_nv04_devinit_pll_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_nv04_devinit_pll_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nvkm_pll_vals = type { i32, i32, i32, i32, i32, i32 }
%struct.nvbios_pll = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_devinit_pll_set(%struct.nvkm_devinit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_devinit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca %struct.nvkm_pll_vals, align 4
  %11 = alloca %struct.nvbios_pll, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %5, align 8
  %20 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %19, i32 0, i32 0
  store %struct.nvkm_subdev* %20, %struct.nvkm_subdev** %8, align 8
  %21 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %22 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.nvkm_bios*, %struct.nvkm_bios** %24, align 8
  store %struct.nvkm_bios* %25, %struct.nvkm_bios** %9, align 8
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %27 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 16476
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 4
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  %40 = call i32 @nvbios_pll_parse(%struct.nvkm_bios* %30, i32 %39, %struct.nvbios_pll* %11)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %18, align 4
  store i32 %44, i32* %4, align 4
  br label %99

45:                                               ; preds = %38
  %46 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @nv04_pll_calc(%struct.nvkm_subdev* %46, %struct.nvbios_pll* %11, i32 %47, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %99

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 5
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %13, align 4
  %59 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %14, align 4
  %61 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %15, align 4
  %63 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %16, align 4
  %65 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %17, align 4
  %67 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 4
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, 48
  br i1 %69, label %82, label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 49
  br i1 %72, label %82, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 53
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, 54
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = icmp sge i32 %80, 64
  br i1 %81, label %82, label %94

82:                                               ; preds = %79, %76, %73, %70, %54
  %83 = load i32, i32* %6, align 4
  %84 = icmp sgt i32 %83, 16476
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @setPLL_double_highregs(%struct.nvkm_devinit* %86, i32 %87, %struct.nvkm_pll_vals* %10)
  br label %93

89:                                               ; preds = %82
  %90 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @setPLL_double_lowregs(%struct.nvkm_devinit* %90, i32 %91, %struct.nvkm_pll_vals* %10)
  br label %93

93:                                               ; preds = %89, %85
  br label %98

94:                                               ; preds = %79
  %95 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @setPLL_single(%struct.nvkm_devinit* %95, i32 %96, %struct.nvkm_pll_vals* %10)
  br label %98

98:                                               ; preds = %94, %93
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %51, %43
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @nvbios_pll_parse(%struct.nvkm_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @nv04_pll_calc(%struct.nvkm_subdev*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @setPLL_double_highregs(%struct.nvkm_devinit*, i32, %struct.nvkm_pll_vals*) #1

declare dso_local i32 @setPLL_double_lowregs(%struct.nvkm_devinit*, i32, %struct.nvkm_pll_vals*) #1

declare dso_local i32 @setPLL_single(%struct.nvkm_devinit*, i32, %struct.nvkm_pll_vals*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
