; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_pll_calc_hiclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_pll_calc_hiclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @gk104_pll_calc_hiclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_pll_calc_hiclk(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %27 = load i32*, i32** %14, align 8
  store i32 1, i32* %27, align 4
  %28 = load i32*, i32** %17, align 8
  store i32 1, i32* %28, align 4
  %29 = load i32*, i32** %18, align 8
  store i32 1, i32* %29, align 4
  store i32 7, i32* %20, align 4
  br label %30

30:                                               ; preds = %85, %9
  %31 = load i32, i32* %20, align 4
  %32 = icmp sge i32 %31, 5
  br i1 %32, label %33, label %88

33:                                               ; preds = %30
  store i32 37, i32* %21, align 4
  br label %34

34:                                               ; preds = %81, %33
  %35 = load i32, i32* %21, align 4
  %36 = icmp sle i32 %35, 43
  br i1 %36, label %37, label %84

37:                                               ; preds = %34
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %20, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @gk104_calc_pll_output(i32 0, i32 1, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %24, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %24, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %23, align 4
  %47 = load i32, i32* %24, align 4
  %48 = call i32 @gk104_calc_pll_output(i32 61440, i32 1, i32 %46, i32 1, i32 %47)
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %25, align 4
  %50 = load i32, i32* %25, align 4
  %51 = load i32, i32* %19, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %37
  %54 = load i32, i32* %25, align 4
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %23, align 4
  %56 = load i32*, i32** %16, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load i32*, i32** %12, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %20, align 4
  %60 = load i32*, i32** %15, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %22, align 4
  br label %61

61:                                               ; preds = %53, %37
  %62 = load i32, i32* %23, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %23, align 4
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* %24, align 4
  %66 = call i32 @gk104_calc_pll_output(i32 61440, i32 1, i32 %64, i32 1, i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %25, align 4
  %69 = load i32, i32* %25, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %61
  %73 = load i32, i32* %25, align 4
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %23, align 4
  %75 = load i32*, i32** %16, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %21, align 4
  %77 = load i32*, i32** %12, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32*, i32** %15, align 8
  store i32 %78, i32* %79, align 4
  store i32 1, i32* %22, align 4
  br label %80

80:                                               ; preds = %72, %61
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %21, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %21, align 4
  br label %34

84:                                               ; preds = %34
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %20, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %20, align 4
  br label %30

88:                                               ; preds = %30
  %89 = load i32, i32* %19, align 4
  %90 = load i32*, i32** %16, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %89, %91
  %93 = load i32*, i32** %18, align 8
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %92, %94
  %96 = load i32*, i32** %15, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %97, %99
  %101 = mul nsw i32 %95, %100
  %102 = shl i32 %101, 13
  %103 = load i32, i32* %11, align 4
  %104 = sdiv i32 %102, %103
  %105 = load i32*, i32** %13, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %22, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %88
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 1, %110
  %112 = load i32*, i32** %13, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %88
  %114 = load i32*, i32** %13, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %12, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %15, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @gk104_calc_pll_output(i32 %115, i32 1, i32 %117, i32 %119, i32 %120)
  ret i32 %121
}

declare dso_local i32 @gk104_calc_pll_output(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
