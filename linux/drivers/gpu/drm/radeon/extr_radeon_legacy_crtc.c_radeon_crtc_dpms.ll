; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_crtc.c_radeon_crtc_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_crtc.c_radeon_crtc_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i64, %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32, i64 }

@RADEON_CRTC2_DISP_DIS = common dso_local global i32 0, align 4
@RADEON_CRTC2_VSYNC_DIS = common dso_local global i32 0, align 4
@RADEON_CRTC2_HSYNC_DIS = common dso_local global i32 0, align 4
@RADEON_CRTC2_DISP_REQ_EN_B = common dso_local global i32 0, align 4
@RADEON_CRTC_DISPLAY_DIS = common dso_local global i32 0, align 4
@RADEON_CRTC_VSYNC_DIS = common dso_local global i32 0, align 4
@RADEON_CRTC_HSYNC_DIS = common dso_local global i32 0, align 4
@RADEON_SINGLE_CRTC = common dso_local global i32 0, align 4
@RADEON_CRTC_CRT_ON = common dso_local global i32 0, align 4
@RADEON_CRTC2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC2_EN = common dso_local global i32 0, align 4
@RADEON_CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_EN = common dso_local global i32 0, align 4
@RADEON_CRTC_DISP_REQ_EN_B = common dso_local global i32 0, align 4
@RADEON_CRTC_EXT_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @radeon_crtc_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_crtc_dpms(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %10)
  store %struct.radeon_crtc* %11, %struct.radeon_crtc** %5, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %19 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @RADEON_CRTC2_DISP_DIS, align 4
  %24 = load i32, i32* @RADEON_CRTC2_VSYNC_DIS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RADEON_CRTC2_HSYNC_DIS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @RADEON_CRTC2_DISP_REQ_EN_B, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %9, align 4
  br label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @RADEON_CRTC_DISPLAY_DIS, align 4
  %32 = load i32, i32* @RADEON_CRTC_VSYNC_DIS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @RADEON_CRTC_HSYNC_DIS, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %30, %22
  %37 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @RADEON_CRTC_CRT_ON, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = load i32, i32* %4, align 4
  switch i32 %46, label %137 [
    i32 130, label %47
    i32 129, label %93
    i32 128, label %93
    i32 131, label %93
  ]

47:                                               ; preds = %45
  %48 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %51 = call i32 @radeon_pm_compute_clocks(%struct.radeon_device* %50)
  %52 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %53 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %58 = load i32, i32* @RADEON_CRTC2_EN, align 4
  %59 = load i32, i32* @RADEON_CRTC2_EN, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = call i32 @WREG32_P(i32 %57, i32 %58, i32 %62)
  br label %79

64:                                               ; preds = %47
  %65 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  %66 = load i32, i32* @RADEON_CRTC_EN, align 4
  %67 = load i32, i32* @RADEON_CRTC_EN, align 4
  %68 = load i32, i32* @RADEON_CRTC_DISP_REQ_EN_B, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = call i32 @WREG32_P(i32 %65, i32 %66, i32 %70)
  %72 = load i32, i32* @RADEON_CRTC_EXT_CNTL, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = call i32 @WREG32_P(i32 %72, i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %64, %56
  %80 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %81 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %84 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %89 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %88)
  br label %90

90:                                               ; preds = %87, %79
  %91 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %92 = call i32 @radeon_crtc_load_lut(%struct.drm_crtc* %91)
  br label %137

93:                                               ; preds = %45, %45, %45
  %94 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %95 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %98 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %103 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %102)
  br label %104

104:                                              ; preds = %101, %93
  %105 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %106 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @RADEON_CRTC2_EN, align 4
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = call i32 @WREG32_P(i32 %110, i32 %111, i32 %115)
  br label %132

117:                                              ; preds = %104
  %118 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  %119 = load i32, i32* @RADEON_CRTC_DISP_REQ_EN_B, align 4
  %120 = load i32, i32* @RADEON_CRTC_EN, align 4
  %121 = load i32, i32* @RADEON_CRTC_DISP_REQ_EN_B, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = call i32 @WREG32_P(i32 %118, i32 %119, i32 %123)
  %125 = load i32, i32* @RADEON_CRTC_EXT_CNTL, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %129, -1
  %131 = call i32 @WREG32_P(i32 %125, i32 %126, i32 %130)
  br label %132

132:                                              ; preds = %117, %109
  %133 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %134 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  %135 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %136 = call i32 @radeon_pm_compute_clocks(%struct.radeon_device* %135)
  br label %137

137:                                              ; preds = %45, %132, %90
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_pm_compute_clocks(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_crtc_load_lut(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
