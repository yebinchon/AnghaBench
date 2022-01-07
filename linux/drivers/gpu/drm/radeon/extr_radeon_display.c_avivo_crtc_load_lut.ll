; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_avivo_crtc_load_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_avivo_crtc_load_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32*, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@AVIVO_DC_LUTA_CONTROL = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_BLACK_OFFSET_BLUE = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_BLACK_OFFSET_GREEN = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_BLACK_OFFSET_RED = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_WHITE_OFFSET_BLUE = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_WHITE_OFFSET_GREEN = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_WHITE_OFFSET_RED = common dso_local global i64 0, align 8
@AVIVO_DC_LUT_RW_SELECT = common dso_local global i64 0, align 8
@AVIVO_DC_LUT_RW_MODE = common dso_local global i64 0, align 8
@AVIVO_DC_LUT_WRITE_EN_MASK = common dso_local global i64 0, align 8
@AVIVO_DC_LUT_RW_INDEX = common dso_local global i32 0, align 4
@AVIVO_DC_LUT_30_COLOR = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_LUT_SEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @avivo_crtc_load_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avivo_crtc_load_lut(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.radeon_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %10)
  store %struct.radeon_crtc* %11, %struct.radeon_crtc** %3, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 2
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %5, align 8
  %18 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* @AVIVO_DC_LUTA_CONTROL, align 8
  %23 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i32 @WREG32(i64 %26, i32 0)
  %28 = load i64, i64* @AVIVO_DC_LUTA_BLACK_OFFSET_BLUE, align 8
  %29 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %30 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = call i32 @WREG32(i64 %32, i32 0)
  %34 = load i64, i64* @AVIVO_DC_LUTA_BLACK_OFFSET_GREEN, align 8
  %35 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = call i32 @WREG32(i64 %38, i32 0)
  %40 = load i64, i64* @AVIVO_DC_LUTA_BLACK_OFFSET_RED, align 8
  %41 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i32 @WREG32(i64 %44, i32 0)
  %46 = load i64, i64* @AVIVO_DC_LUTA_WHITE_OFFSET_BLUE, align 8
  %47 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @WREG32(i64 %50, i32 65535)
  %52 = load i64, i64* @AVIVO_DC_LUTA_WHITE_OFFSET_GREEN, align 8
  %53 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = call i32 @WREG32(i64 %56, i32 65535)
  %58 = load i64, i64* @AVIVO_DC_LUTA_WHITE_OFFSET_RED, align 8
  %59 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = call i32 @WREG32(i64 %62, i32 65535)
  %64 = load i64, i64* @AVIVO_DC_LUT_RW_SELECT, align 8
  %65 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @WREG32(i64 %64, i32 %67)
  %69 = load i64, i64* @AVIVO_DC_LUT_RW_MODE, align 8
  %70 = call i32 @WREG32(i64 %69, i32 0)
  %71 = load i64, i64* @AVIVO_DC_LUT_WRITE_EN_MASK, align 8
  %72 = call i32 @WREG32(i64 %71, i32 63)
  %73 = load i32, i32* @AVIVO_DC_LUT_RW_INDEX, align 4
  %74 = call i32 @WREG8(i32 %73, i32 0)
  %75 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %76 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %6, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %80 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  store i32* %83, i32** %7, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %86 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32* %89, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %112, %1
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 256
  br i1 %92, label %93, label %115

93:                                               ; preds = %90
  %94 = load i64, i64* @AVIVO_DC_LUT_30_COLOR, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %6, align 8
  %97 = load i32, i32* %95, align 4
  %98 = and i32 %97, 65472
  %99 = shl i32 %98, 14
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %7, align 8
  %102 = load i32, i32* %100, align 4
  %103 = and i32 %102, 65472
  %104 = shl i32 %103, 4
  %105 = or i32 %99, %104
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %8, align 8
  %108 = load i32, i32* %106, align 4
  %109 = ashr i32 %108, 6
  %110 = or i32 %105, %109
  %111 = call i32 @WREG32(i64 %94, i32 %110)
  br label %112

112:                                              ; preds = %93
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %90

115:                                              ; preds = %90
  %116 = load i64, i64* @AVIVO_D1GRPH_LUT_SEL, align 8
  %117 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %118 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %122 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @WREG32_P(i64 %120, i32 %123, i32 -2)
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @WREG8(i32, i32) #1

declare dso_local i32 @WREG32_P(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
