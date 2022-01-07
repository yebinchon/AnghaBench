; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_dce4_dp_audio_set_dto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_dce4_dp_audio_set_dto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32 }

@DCCG_AUDIO_DTO1_CNTL = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO1_USE_512FBR_DTO = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO_SEL = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO_SOURCE = common dso_local global i32 0, align 4
@DCE41_DENTIST_DISPCLK_CNTL = common dso_local global i32 0, align 4
@DENTIST_DPREFCLK_WDIVIDER_MASK = common dso_local global i32 0, align 4
@DENTIST_DPREFCLK_WDIVIDER_SHIFT = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO1_PHASE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO1_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce4_dp_audio_set_dto(%struct.radeon_device* %0, %struct.radeon_crtc* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @DCCG_AUDIO_DTO1_CNTL, align 4
  %10 = call i32 @RREG32(i32 %9)
  %11 = load i32, i32* @DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @DCCG_AUDIO_DTO1_USE_512FBR_DTO, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @DCCG_AUDIO_DTO1_CNTL, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @WREG32(i32 %17, i32 %18)
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* @DCCG_AUDIO_DTO_SEL, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %24 = icmp ne %struct.radeon_crtc* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DCCG_AUDIO_DTO0_SOURCE_SEL(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %25, %3
  %33 = load i32, i32* @DCCG_AUDIO_DTO_SOURCE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @WREG32(i32 %33, i32 %34)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %37 = call i64 @ASIC_IS_DCE41(%struct.radeon_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load i32, i32* @DCE41_DENTIST_DISPCLK_CNTL, align 4
  %41 = call i32 @RREG32(i32 %40)
  %42 = load i32, i32* @DENTIST_DPREFCLK_WDIVIDER_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @DENTIST_DPREFCLK_WDIVIDER_SHIFT, align 4
  %45 = lshr i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @radeon_audio_decode_dfs_div(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load i32, i32* %6, align 4
  %52 = mul i32 100, %51
  %53 = load i32, i32* %8, align 4
  %54 = udiv i32 %52, %53
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %50, %39
  br label %56

56:                                               ; preds = %55, %32
  %57 = load i32, i32* @DCCG_AUDIO_DTO1_PHASE, align 4
  %58 = call i32 @WREG32(i32 %57, i32 24000)
  %59 = load i32, i32* @DCCG_AUDIO_DTO1_MODULE, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @WREG32(i32 %59, i32 %60)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @DCCG_AUDIO_DTO0_SOURCE_SEL(i32) #1

declare dso_local i64 @ASIC_IS_DCE41(%struct.radeon_device*) #1

declare dso_local i32 @radeon_audio_decode_dfs_div(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
