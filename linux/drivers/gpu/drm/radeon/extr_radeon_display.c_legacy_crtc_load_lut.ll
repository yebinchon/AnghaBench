; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_legacy_crtc_load_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_legacy_crtc_load_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32*, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i64 }

@RADEON_DAC_CNTL2 = common dso_local global i32 0, align 4
@RADEON_DAC2_PALETTE_ACC_CTL = common dso_local global i32 0, align 4
@RADEON_PALETTE_INDEX = common dso_local global i32 0, align 4
@RADEON_PALETTE_30_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @legacy_crtc_load_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @legacy_crtc_load_lut(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.radeon_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %11)
  store %struct.radeon_crtc* %12, %struct.radeon_crtc** %3, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 2
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %5, align 8
  %19 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %20 = call i32 @RREG32(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load i32, i32* @RADEON_DAC2_PALETTE_ACC_CTL, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load i32, i32* @RADEON_DAC2_PALETTE_ACC_CTL, align 4
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* @RADEON_DAC_CNTL2, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @WREG32(i32 %35, i32 %36)
  %38 = load i32, i32* @RADEON_PALETTE_INDEX, align 4
  %39 = call i32 @WREG8(i32 %38, i32 0)
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %45 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %51 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  store i32* %54, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %77, %34
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 256
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  %59 = load i32, i32* @RADEON_PALETTE_30_DATA, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %6, align 8
  %62 = load i32, i32* %60, align 4
  %63 = and i32 %62, 65472
  %64 = shl i32 %63, 14
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %7, align 8
  %67 = load i32, i32* %65, align 4
  %68 = and i32 %67, 65472
  %69 = shl i32 %68, 4
  %70 = or i32 %64, %69
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  %73 = load i32, i32* %71, align 4
  %74 = ashr i32 %73, 6
  %75 = or i32 %70, %74
  %76 = call i32 @WREG32(i32 %59, i32 %75)
  br label %77

77:                                               ; preds = %58
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %55

80:                                               ; preds = %55
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
