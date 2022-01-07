; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_scaler.c_sun8i_vi_scaler_set_coeff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_scaler.c_sun8i_vi_scaler_set_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.drm_format_info = type { i32, i32 }

@lan3coefftab32_left = common dso_local global i32* null, align 8
@lan3coefftab32_right = common dso_local global i32* null, align 8
@lan2coefftab32 = common dso_local global i32* null, align 8
@bicubic8coefftab32_left = common dso_local global i32* null, align 8
@bicubic8coefftab32_right = common dso_local global i32* null, align 8
@bicubic4coefftab32 = common dso_local global i32* null, align 8
@SUN8I_VI_SCALER_COEFF_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regmap*, i32, i32, i32, %struct.drm_format_info*)* @sun8i_vi_scaler_set_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun8i_vi_scaler_set_coeff(%struct.regmap* %0, i32 %1, i32 %2, i32 %3, %struct.drm_format_info* %4) #0 {
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_format_info*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.drm_format_info* %4, %struct.drm_format_info** %10, align 8
  %16 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %17 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  %21 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %22 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** @lan3coefftab32_left, align 8
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** @lan3coefftab32_right, align 8
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** @lan2coefftab32, align 8
  store i32* %28, i32** %13, align 8
  br label %33

29:                                               ; preds = %20, %5
  %30 = load i32*, i32** @bicubic8coefftab32_left, align 8
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** @bicubic8coefftab32_right, align 8
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** @bicubic4coefftab32, align 8
  store i32* %32, i32** %13, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @sun8i_vi_scaler_coef_index(i32 %34)
  %36 = load i32, i32* @SUN8I_VI_SCALER_COEFF_COUNT, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %91, %33
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @SUN8I_VI_SCALER_COEFF_COUNT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %94

42:                                               ; preds = %38
  %43 = load %struct.regmap*, %struct.regmap** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @SUN8I_SCALER_VSU_YHCOEFF0(i32 %44, i32 %45)
  %47 = load i32*, i32** @lan3coefftab32_left, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @regmap_write(%struct.regmap* %43, i32 %46, i32 %53)
  %55 = load %struct.regmap*, %struct.regmap** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @SUN8I_SCALER_VSU_YHCOEFF1(i32 %56, i32 %57)
  %59 = load i32*, i32** @lan3coefftab32_right, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @regmap_write(%struct.regmap* %55, i32 %58, i32 %65)
  %67 = load %struct.regmap*, %struct.regmap** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @SUN8I_SCALER_VSU_CHCOEFF0(i32 %68, i32 %69)
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @regmap_write(%struct.regmap* %67, i32 %70, i32 %77)
  %79 = load %struct.regmap*, %struct.regmap** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @SUN8I_SCALER_VSU_CHCOEFF1(i32 %80, i32 %81)
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @regmap_write(%struct.regmap* %79, i32 %82, i32 %89)
  br label %91

91:                                               ; preds = %42
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %38

94:                                               ; preds = %38
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @sun8i_vi_scaler_coef_index(i32 %95)
  %97 = load i32, i32* @SUN8I_VI_SCALER_COEFF_COUNT, align 4
  %98 = mul nsw i32 %96, %97
  store i32 %98, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %99

99:                                               ; preds = %128, %94
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @SUN8I_VI_SCALER_COEFF_COUNT, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %131

103:                                              ; preds = %99
  %104 = load %struct.regmap*, %struct.regmap** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @SUN8I_SCALER_VSU_YVCOEFF(i32 %105, i32 %106)
  %108 = load i32*, i32** @lan2coefftab32, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @regmap_write(%struct.regmap* %104, i32 %107, i32 %114)
  %116 = load %struct.regmap*, %struct.regmap** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @SUN8I_SCALER_VSU_CVCOEFF(i32 %117, i32 %118)
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @regmap_write(%struct.regmap* %116, i32 %119, i32 %126)
  br label %128

128:                                              ; preds = %103
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %99

131:                                              ; preds = %99
  ret void
}

declare dso_local i32 @sun8i_vi_scaler_coef_index(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_YHCOEFF0(i32, i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_YHCOEFF1(i32, i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_CHCOEFF0(i32, i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_CHCOEFF1(i32, i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_YVCOEFF(i32, i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_CVCOEFF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
