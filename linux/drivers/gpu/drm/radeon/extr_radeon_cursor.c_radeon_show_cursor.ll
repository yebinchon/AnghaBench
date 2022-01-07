; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_show_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_show_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.radeon_crtc = type { i32, i32, i32, i32, i64 }

@EVERGREEN_CUR_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@EVERGREEN_CUR_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@RADEON_MM_INDEX = common dso_local global i64 0, align 8
@EVERGREEN_CUR_CONTROL = common dso_local global i32 0, align 4
@RADEON_MM_DATA = common dso_local global i64 0, align 8
@EVERGREEN_CURSOR_EN = common dso_local global i32 0, align 4
@EVERGREEN_CURSOR_24_8_PRE_MULT = common dso_local global i32 0, align 4
@EVERGREEN_CURSOR_URGENT_1_2 = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i64 0, align 8
@R700_D2CUR_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D1CUR_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@AVIVO_D1CUR_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@AVIVO_D1CUR_CONTROL = common dso_local global i32 0, align 4
@AVIVO_D1CURSOR_EN = common dso_local global i32 0, align 4
@AVIVO_D1CURSOR_MODE_24BPP = common dso_local global i32 0, align 4
@AVIVO_D1CURSOR_MODE_SHIFT = common dso_local global i32 0, align 4
@RADEON_CUR_OFFSET = common dso_local global i64 0, align 8
@RADEON_CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_CUR_EN = common dso_local global i32 0, align 4
@RADEON_CRTC_CUR_MODE_24BPP = common dso_local global i32 0, align 4
@RADEON_CRTC_CUR_MODE_SHIFT = common dso_local global i32 0, align 4
@RADEON_CRTC_CUR_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @radeon_show_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_show_cursor(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.radeon_crtc*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %5)
  store %struct.radeon_crtc* %6, %struct.radeon_crtc** %3, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  store %struct.radeon_device* %11, %struct.radeon_device** %4, align 8
  %12 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %156

17:                                               ; preds = %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %17
  %22 = load i64, i64* @EVERGREEN_CUR_SURFACE_ADDRESS_HIGH, align 8
  %23 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @upper_32_bits(i32 %30)
  %32 = call i32 @WREG32(i64 %27, i32 %31)
  %33 = load i64, i64* @EVERGREEN_CUR_SURFACE_ADDRESS, align 8
  %34 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @lower_32_bits(i32 %41)
  %43 = call i32 @WREG32(i64 %38, i32 %42)
  %44 = load i64, i64* @RADEON_MM_INDEX, align 8
  %45 = load i32, i32* @EVERGREEN_CUR_CONTROL, align 4
  %46 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %45, %48
  %50 = call i32 @WREG32(i64 %44, i32 %49)
  %51 = load i64, i64* @RADEON_MM_DATA, align 8
  %52 = load i32, i32* @EVERGREEN_CURSOR_EN, align 4
  %53 = load i32, i32* @EVERGREEN_CURSOR_24_8_PRE_MULT, align 4
  %54 = call i32 @EVERGREEN_CURSOR_MODE(i32 %53)
  %55 = or i32 %52, %54
  %56 = load i32, i32* @EVERGREEN_CURSOR_URGENT_1_2, align 4
  %57 = call i32 @EVERGREEN_CURSOR_URGENT_CONTROL(i32 %56)
  %58 = or i32 %55, %57
  %59 = call i32 @WREG32(i64 %51, i32 %58)
  br label %156

60:                                               ; preds = %17
  %61 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %62 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %116

64:                                               ; preds = %60
  %65 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CHIP_RV770, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %64
  %71 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i64, i64* @R700_D2CUR_SURFACE_ADDRESS_HIGH, align 8
  %77 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @upper_32_bits(i32 %79)
  %81 = call i32 @WREG32(i64 %76, i32 %80)
  br label %89

82:                                               ; preds = %70
  %83 = load i64, i64* @R700_D1CUR_SURFACE_ADDRESS_HIGH, align 8
  %84 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %85 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @upper_32_bits(i32 %86)
  %88 = call i32 @WREG32(i64 %83, i32 %87)
  br label %89

89:                                               ; preds = %82, %75
  br label %90

90:                                               ; preds = %89, %64
  %91 = load i64, i64* @AVIVO_D1CUR_SURFACE_ADDRESS, align 8
  %92 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %93 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %91, %95
  %97 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @lower_32_bits(i32 %99)
  %101 = call i32 @WREG32(i64 %96, i32 %100)
  %102 = load i64, i64* @RADEON_MM_INDEX, align 8
  %103 = load i32, i32* @AVIVO_D1CUR_CONTROL, align 4
  %104 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %105 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %103, %106
  %108 = call i32 @WREG32(i64 %102, i32 %107)
  %109 = load i64, i64* @RADEON_MM_DATA, align 8
  %110 = load i32, i32* @AVIVO_D1CURSOR_EN, align 4
  %111 = load i32, i32* @AVIVO_D1CURSOR_MODE_24BPP, align 4
  %112 = load i32, i32* @AVIVO_D1CURSOR_MODE_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = or i32 %110, %113
  %115 = call i32 @WREG32(i64 %109, i32 %114)
  br label %155

116:                                              ; preds = %60
  %117 = load i64, i64* @RADEON_CUR_OFFSET, align 8
  %118 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %119 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %117, %121
  %123 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %127 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %125, %128
  %130 = call i32 @WREG32(i64 %122, i32 %129)
  %131 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  switch i32 %133, label %142 [
    i32 0, label %134
    i32 1, label %138
  ]

134:                                              ; preds = %116
  %135 = load i64, i64* @RADEON_MM_INDEX, align 8
  %136 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  %137 = call i32 @WREG32(i64 %135, i32 %136)
  br label %143

138:                                              ; preds = %116
  %139 = load i64, i64* @RADEON_MM_INDEX, align 8
  %140 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %141 = call i32 @WREG32(i64 %139, i32 %140)
  br label %143

142:                                              ; preds = %116
  br label %156

143:                                              ; preds = %138, %134
  %144 = load i64, i64* @RADEON_MM_DATA, align 8
  %145 = load i32, i32* @RADEON_CRTC_CUR_EN, align 4
  %146 = load i32, i32* @RADEON_CRTC_CUR_MODE_24BPP, align 4
  %147 = load i32, i32* @RADEON_CRTC_CUR_MODE_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = or i32 %145, %148
  %150 = load i32, i32* @RADEON_CRTC_CUR_EN, align 4
  %151 = load i32, i32* @RADEON_CRTC_CUR_MODE_MASK, align 4
  %152 = or i32 %150, %151
  %153 = xor i32 %152, -1
  %154 = call i32 @WREG32_P(i64 %144, i32 %149, i32 %153)
  br label %155

155:                                              ; preds = %143, %90
  br label %156

156:                                              ; preds = %16, %142, %155, %21
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @EVERGREEN_CURSOR_MODE(i32) #1

declare dso_local i32 @EVERGREEN_CURSOR_URGENT_CONTROL(i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_P(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
