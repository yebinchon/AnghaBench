; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_primary_dac_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_primary_dac_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, i64 }

@RADEON_CRTC_EXT_CNTL = common dso_local global i32 0, align 4
@RADEON_DAC_CNTL = common dso_local global i32 0, align 4
@RADEON_DAC_MACRO_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RADEON_CRTC_CRT_ON = common dso_local global i32 0, align 4
@RADEON_DAC_PDWN = common dso_local global i32 0, align 4
@RADEON_DAC_PDWN_R = common dso_local global i32 0, align 4
@RADEON_DAC_PDWN_G = common dso_local global i32 0, align 4
@RADEON_DAC_PDWN_B = common dso_local global i32 0, align 4
@RADEON_SINGLE_CRTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @radeon_legacy_primary_dac_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_legacy_primary_dac_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %6, align 8
  %16 = load i32, i32* @RADEON_CRTC_EXT_CNTL, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @RADEON_DAC_CNTL, align 4
  %19 = call i32 @RREG32(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @RADEON_DAC_MACRO_CNTL, align 4
  %21 = call i32 @RREG32(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %55 [
    i32 130, label %24
    i32 129, label %40
    i32 128, label %40
    i32 131, label %40
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @RADEON_CRTC_CRT_ON, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @RADEON_DAC_PDWN, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @RADEON_DAC_PDWN_R, align 4
  %33 = load i32, i32* @RADEON_DAC_PDWN_G, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RADEON_DAC_PDWN_B, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %55

40:                                               ; preds = %2, %2, %2
  %41 = load i32, i32* @RADEON_CRTC_CRT_ON, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @RADEON_DAC_PDWN, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @RADEON_DAC_PDWN_R, align 4
  %49 = load i32, i32* @RADEON_DAC_PDWN_G, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @RADEON_DAC_PDWN_B, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %2, %40, %24
  %56 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @RADEON_CRTC_EXT_CNTL, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @WREG32(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %55
  %67 = load i32, i32* @RADEON_DAC_CNTL, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @WREG32(i32 %67, i32 %68)
  %70 = load i32, i32* @RADEON_DAC_MACRO_CNTL, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @WREG32(i32 %70, i32 %71)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %66
  %78 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 130
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  %83 = call i32 @radeon_atombios_encoder_dpms_scratch_regs(%struct.drm_encoder* %78, i32 %82)
  br label %91

84:                                               ; preds = %66
  %85 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, 130
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = call i32 @radeon_combios_encoder_dpms_scratch_regs(%struct.drm_encoder* %85, i32 %89)
  br label %91

91:                                               ; preds = %84, %77
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_atombios_encoder_dpms_scratch_regs(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_combios_encoder_dpms_scratch_regs(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
