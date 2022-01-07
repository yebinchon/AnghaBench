; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp550_enable_memwrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp550_enable_memwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { i32 }

@MALIDP550_SE_MEMWRITE_BASE = common dso_local global i32 0, align 4
@MALIDP_DE_BLOCK = common dso_local global i32 0, align 4
@MALIDP_SCALE_ENGINE_EN = common dso_local global i32 0, align 4
@MALIDP_DE_DISPLAY_FUNC = common dso_local global i32 0, align 4
@MW_ONESHOT = common dso_local global i32 0, align 4
@MALIDP_MW_FORMAT = common dso_local global i32 0, align 4
@MALIDP_MW_P2_PTR_LOW = common dso_local global i32 0, align 4
@MALIDP_MW_P2_PTR_HIGH = common dso_local global i32 0, align 4
@MALIDP_MW_P2_STRIDE = common dso_local global i32 0, align 4
@MALIDP_MW_P1_PTR_LOW = common dso_local global i32 0, align 4
@MALIDP_MW_P1_PTR_HIGH = common dso_local global i32 0, align 4
@MALIDP_MW_P1_STRIDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid number of planes\00", align 1
@MALIDP550_SE_MEMWRITE_OUT_SIZE = common dso_local global i32 0, align 4
@MALIDP550_SE_MEMWRITE_ONESHOT = common dso_local global i32 0, align 4
@MALIDP_SE_MEMWRITE_EN = common dso_local global i32 0, align 4
@MALIDP550_SE_CONTROL = common dso_local global i32 0, align 4
@MALIDP_COLORADJ_NUM_COEFFS = common dso_local global i32 0, align 4
@MALIDP550_SE_RGB_YUV_COEFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malidp_hw_device*, i32*, i32*, i32, i32, i32, i32, i32*)* @malidp550_enable_memwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp550_enable_memwrite(%struct.malidp_hw_device* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
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
  %20 = load i32, i32* @MALIDP550_SE_MEMWRITE_BASE, align 4
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
  %30 = load i32, i32* @MW_ONESHOT, align 4
  %31 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %32 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* @MALIDP_MW_FORMAT, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %33, i32 %34, i32 %37)
  %39 = load i32, i32* %12, align 4
  switch i32 %39, label %94 [
    i32 2, label %40
    i32 1, label %67
  ]

40:                                               ; preds = %8
  %41 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lower_32_bits(i32 %44)
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* @MALIDP_MW_P2_PTR_LOW, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %41, i32 %45, i32 %48)
  %50 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @upper_32_bits(i32 %53)
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* @MALIDP_MW_P2_PTR_HIGH, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %50, i32 %54, i32 %57)
  %59 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* @MALIDP_MW_P2_STRIDE, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %59, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %8, %40
  %68 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @lower_32_bits(i32 %71)
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* @MALIDP_MW_P1_PTR_LOW, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %68, i32 %72, i32 %75)
  %77 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @upper_32_bits(i32 %80)
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @MALIDP_MW_P1_PTR_HIGH, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %77, i32 %81, i32 %84)
  %86 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @MALIDP_MW_P1_STRIDE, align 4
  %92 = add nsw i32 %90, %91
  %93 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %86, i32 %89, i32 %92)
  br label %96

94:                                               ; preds = %8
  %95 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %67
  %97 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @MALIDP_DE_H_ACTIVE(i32 %98)
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @MALIDP_DE_V_ACTIVE(i32 %100)
  %102 = or i32 %99, %101
  %103 = load i32, i32* @MALIDP550_SE_MEMWRITE_OUT_SIZE, align 4
  %104 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %97, i32 %102, i32 %103)
  %105 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %106 = load i32, i32* @MALIDP550_SE_MEMWRITE_ONESHOT, align 4
  %107 = load i32, i32* @MALIDP_SE_MEMWRITE_EN, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @MALIDP550_SE_CONTROL, align 4
  %110 = call i32 @malidp_hw_setbits(%struct.malidp_hw_device* %105, i32 %108, i32 %109)
  %111 = load i32*, i32** %16, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %134

113:                                              ; preds = %96
  store i32 0, i32* %19, align 4
  br label %114

114:                                              ; preds = %130, %113
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* @MALIDP_COLORADJ_NUM_COEFFS, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %9, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = load i32, i32* %19, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @MALIDP550_SE_RGB_YUV_COEFFS, align 4
  %126 = load i32, i32* %19, align 4
  %127 = mul nsw i32 %126, 4
  %128 = add nsw i32 %125, %127
  %129 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %119, i32 %124, i32 %128)
  br label %130

130:                                              ; preds = %118
  %131 = load i32, i32* %19, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %19, align 4
  br label %114

133:                                              ; preds = %114
  br label %134

134:                                              ; preds = %133, %96
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
