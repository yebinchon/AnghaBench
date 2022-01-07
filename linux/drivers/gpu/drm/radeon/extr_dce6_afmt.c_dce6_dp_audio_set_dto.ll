; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce6_afmt.c_dce6_dp_audio_set_dto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce6_afmt.c_dce6_dp_audio_set_dto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32 }

@DCCG_AUDIO_DTO_SEL = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO_SOURCE = common dso_local global i32 0, align 4
@DENTIST_DISPCLK_CNTL = common dso_local global i32 0, align 4
@DENTIST_DPREFCLK_WDIVIDER_MASK = common dso_local global i32 0, align 4
@DENTIST_DPREFCLK_WDIVIDER_SHIFT = common dso_local global i32 0, align 4
@DCE8_DCCG_AUDIO_DTO1_PHASE = common dso_local global i32 0, align 4
@DCE8_DCCG_AUDIO_DTO1_MODULE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO1_PHASE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO1_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce6_dp_audio_set_dto(%struct.radeon_device* %0, %struct.radeon_crtc* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @DCCG_AUDIO_DTO_SEL, align 4
  %10 = load i32, i32* %7, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %7, align 4
  %12 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %13 = icmp ne %struct.radeon_crtc* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DCCG_AUDIO_DTO0_SOURCE_SEL(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %14, %3
  %22 = load i32, i32* @DCCG_AUDIO_DTO_SOURCE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @WREG32(i32 %22, i32 %23)
  %25 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %26 = call i64 @ASIC_IS_DCE8(%struct.radeon_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %21
  %29 = load i32, i32* @DENTIST_DISPCLK_CNTL, align 4
  %30 = call i32 @RREG32(i32 %29)
  %31 = load i32, i32* @DENTIST_DPREFCLK_WDIVIDER_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @DENTIST_DPREFCLK_WDIVIDER_SHIFT, align 4
  %34 = lshr i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @radeon_audio_decode_dfs_div(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = mul i32 %40, 100
  %42 = load i32, i32* %8, align 4
  %43 = udiv i32 %41, %42
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %28
  %45 = load i32, i32* @DCE8_DCCG_AUDIO_DTO1_PHASE, align 4
  %46 = call i32 @WREG32(i32 %45, i32 24000)
  %47 = load i32, i32* @DCE8_DCCG_AUDIO_DTO1_MODULE, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  br label %56

50:                                               ; preds = %21
  %51 = load i32, i32* @DCCG_AUDIO_DTO1_PHASE, align 4
  %52 = call i32 @WREG32(i32 %51, i32 24000)
  %53 = load i32, i32* @DCCG_AUDIO_DTO1_MODULE, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @WREG32(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %44
  ret void
}

declare dso_local i32 @DCCG_AUDIO_DTO0_SOURCE_SEL(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @ASIC_IS_DCE8(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @radeon_audio_decode_dfs_div(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
