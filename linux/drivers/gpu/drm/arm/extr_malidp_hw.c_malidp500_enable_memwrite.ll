; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp500_enable_memwrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp500_enable_memwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { i64 }

@MALIDP500_SE_MEMWRITE_BASE = common dso_local global i32 0, align 4
@MALIDP_DE_BLOCK = common dso_local global i32 0, align 4
@MALIDP_SCALE_ENGINE_EN = common dso_local global i32 0, align 4
@MALIDP_DE_DISPLAY_FUNC = common dso_local global i32 0, align 4
@MW_NOT_ENABLED = common dso_local global i64 0, align 8
@MW_RESTART = common dso_local global i64 0, align 8
@MW_START = common dso_local global i64 0, align 8
@MALIDP_MW_FORMAT = common dso_local global i32 0, align 4
@MALIDP_MW_P2_PTR_LOW = common dso_local global i32 0, align 4
@MALIDP_MW_P2_PTR_HIGH = common dso_local global i32 0, align 4
@MALIDP_MW_P2_STRIDE = common dso_local global i32 0, align 4
@MALIDP_MW_P1_PTR_LOW = common dso_local global i32 0, align 4
@MALIDP_MW_P1_PTR_HIGH = common dso_local global i32 0, align 4
@MALIDP_MW_P1_STRIDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid number of planes\00", align 1
@MALIDP500_SE_MEMWRITE_OUT_SIZE = common dso_local global i32 0, align 4
@MALIDP_COLORADJ_NUM_COEFFS = common dso_local global i32 0, align 4
@MALIDP500_SE_RGB_YUV_COEFFS = common dso_local global i32 0, align 4
@MALIDP_SE_MEMWRITE_EN = common dso_local global i32 0, align 4
@MALIDP500_SE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malidp_hw_device*, i32*, i32*, i32, i32, i32, i32, i32*)* @malidp500_enable_memwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp500_enable_memwrite(%struct.malidp_hw_device* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.malidp_hw_device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %20 = load i32, i32* @MALIDP500_SE_MEMWRITE_BASE, align 4
  store i32 %20, i32* %17, align 4
  %21 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %22 = load i32, i32* @MALIDP_DE_BLOCK, align 4
  %23 = call i32 @malidp_get_block_base(%struct.malidp_hw_device* %21, i32 %22)
  store i32 %23, i32* %18, align 4
  %24 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %25 = load i32, i32* @MALIDP_SCALE_ENGINE_EN, align 4
  %26 = load i32, i32* %18, align 4
  %27 = load i32, i32* @MALIDP_DE_DISPLAY_FUNC, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @malidp_hw_setbits(%struct.malidp_hw_device* %24, i32 %25, i32 %28)
  %30 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %31 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MW_NOT_ENABLED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %8
  %36 = load i64, i64* @MW_RESTART, align 8
  %37 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %38 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %43

39:                                               ; preds = %8
  %40 = load i64, i64* @MW_START, align 8
  %41 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %42 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* @MALIDP_MW_FORMAT, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %44, i32 %45, i32 %48)
  %50 = load i32, i32* %12, align 4
  switch i32 %50, label %105 [
    i32 2, label %51
    i32 1, label %78
  ]

51:                                               ; preds = %43
  %52 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @lower_32_bits(i32 %55)
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* @MALIDP_MW_P2_PTR_LOW, align 4
  %59 = add nsw i32 %57, %58
  %60 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %52, i32 %56, i32 %59)
  %61 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @upper_32_bits(i32 %64)
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* @MALIDP_MW_P2_PTR_HIGH, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %61, i32 %65, i32 %68)
  %70 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* @MALIDP_MW_P2_STRIDE, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %70, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %43, %51
  %79 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @lower_32_bits(i32 %82)
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @MALIDP_MW_P1_PTR_LOW, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %79, i32 %83, i32 %86)
  %88 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @upper_32_bits(i32 %91)
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* @MALIDP_MW_P1_PTR_HIGH, align 4
  %95 = add nsw i32 %93, %94
  %96 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %88, i32 %92, i32 %95)
  %97 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @MALIDP_MW_P1_STRIDE, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %97, i32 %100, i32 %103)
  br label %107

105:                                              ; preds = %43
  %106 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %78
  %108 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @MALIDP_DE_H_ACTIVE(i32 %109)
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @MALIDP_DE_V_ACTIVE(i32 %111)
  %113 = or i32 %110, %112
  %114 = load i32, i32* @MALIDP500_SE_MEMWRITE_OUT_SIZE, align 4
  %115 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %108, i32 %113, i32 %114)
  %116 = load i32*, i32** %16, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %139

118:                                              ; preds = %107
  store i32 0, i32* %19, align 4
  br label %119

119:                                              ; preds = %135, %118
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* @MALIDP_COLORADJ_NUM_COEFFS, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @MALIDP500_SE_RGB_YUV_COEFFS, align 4
  %131 = load i32, i32* %19, align 4
  %132 = mul nsw i32 %131, 4
  %133 = add nsw i32 %130, %132
  %134 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %124, i32 %129, i32 %133)
  br label %135

135:                                              ; preds = %123
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %119

138:                                              ; preds = %119
  br label %139

139:                                              ; preds = %138, %107
  %140 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %141 = load i32, i32* @MALIDP_SE_MEMWRITE_EN, align 4
  %142 = load i32, i32* @MALIDP500_SE_CONTROL, align 4
  %143 = call i32 @malidp_hw_setbits(%struct.malidp_hw_device* %140, i32 %141, i32 %142)
  ret i32 0
}

declare dso_local i32 @malidp_get_block_base(%struct.malidp_hw_device*, i32) #1

declare dso_local i32 @malidp_hw_setbits(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @malidp_hw_write(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @MALIDP_DE_H_ACTIVE(i32) #1

declare dso_local i32 @MALIDP_DE_V_ACTIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
