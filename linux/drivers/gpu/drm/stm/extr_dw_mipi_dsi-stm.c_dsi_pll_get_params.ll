; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_dw_mipi_dsi-stm.c_dsi_pll_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_dw_mipi_dsi-stm.c_dsi_pll_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mipi_dsi_stm = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ODF_MAX = common dso_local global i32 0, align 4
@ODF_MIN = common dso_local global i32 0, align 4
@IDF_MIN = common dso_local global i32 0, align 4
@IDF_MAX = common dso_local global i32 0, align 4
@NDIV_MAX = common dso_local global i32 0, align 4
@NDIV_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mipi_dsi_stm*, i32, i32, i32*, i32*, i32*)* @dsi_pll_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_pll_get_params(%struct.dw_mipi_dsi_stm* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dw_mipi_dsi_stm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.dw_mipi_dsi_stm* %0, %struct.dw_mipi_dsi_stm** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %139

31:                                               ; preds = %25
  %32 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %8, align 8
  %33 = getelementptr inbounds %struct.dw_mipi_dsi_stm, %struct.dw_mipi_dsi_stm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 2
  %36 = load i32, i32* @ODF_MAX, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %19, align 4
  %38 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %8, align 8
  %39 = getelementptr inbounds %struct.dw_mipi_dsi_stm, %struct.dw_mipi_dsi_stm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 2
  %42 = load i32, i32* @ODF_MIN, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %20, align 4
  store i32 1000000, i32* %22, align 4
  %44 = load i32, i32* @IDF_MIN, align 4
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %135, %31
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @IDF_MAX, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %138

49:                                               ; preds = %45
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* %14, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 2, %53
  %55 = sdiv i32 %52, %54
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* %14, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 2, %60
  %62 = sdiv i32 %59, %61
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* @NDIV_MAX, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %49
  br label %138

67:                                               ; preds = %49
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* @NDIV_MIN, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @NDIV_MIN, align 4
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @NDIV_MAX, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @NDIV_MAX, align 4
  store i32 %78, i32* %18, align 4
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i32, i32* @ODF_MIN, align 4
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %131, %79
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @ODF_MAX, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %134

85:                                               ; preds = %81
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %10, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @DIV_ROUND_CLOSEST(i32 %90, i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %85
  br label %131

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @dsi_pll_get_clkout_khz(i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %21, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load i32, i32* %21, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %21, align 4
  br label %114

114:                                              ; preds = %111, %101
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %22, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i32, i32* %14, align 4
  %120 = load i32*, i32** %11, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i32*, i32** %12, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32*, i32** %13, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %21, align 4
  store i32 %125, i32* %22, align 4
  br label %126

126:                                              ; preds = %118, %114
  %127 = load i32, i32* %21, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  store i32 0, i32* %7, align 4
  br label %139

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130, %100
  %132 = load i32, i32* %15, align 4
  %133 = mul nsw i32 %132, 2
  store i32 %133, i32* %15, align 4
  br label %81

134:                                              ; preds = %81
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %45

138:                                              ; preds = %66, %45
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %138, %129, %28
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @dsi_pll_get_clkout_khz(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
