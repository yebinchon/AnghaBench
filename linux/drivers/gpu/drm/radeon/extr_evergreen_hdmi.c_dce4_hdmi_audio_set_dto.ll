; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_dce4_hdmi_audio_set_dto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_dce4_hdmi_audio_set_dto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32 }

@DCCG_AUDIO_DTO0_CNTL = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO1_USE_512FBR_DTO = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO_SOURCE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO0_PHASE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO0_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce4_hdmi_audio_set_dto(%struct.radeon_device* %0, %struct.radeon_crtc* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = udiv i32 %11, 24000
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp uge i32 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 192000, i32* %8, align 4
  store i32 3, i32* %9, align 4
  br label %27

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp uge i32 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 96000, i32* %8, align 4
  store i32 2, i32* %9, align 4
  br label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = icmp uge i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 48000, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %25

24:                                               ; preds = %20
  store i32 24000, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %23
  br label %26

26:                                               ; preds = %25, %19
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32, i32* @DCCG_AUDIO_DTO0_CNTL, align 4
  %29 = call i32 @RREG32(i32 %28)
  %30 = load i32, i32* @DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @DCCG_AUDIO_DTO_WALLCLOCK_RATIO(i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @DCCG_AUDIO_DTO1_USE_512FBR_DTO, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @DCCG_AUDIO_DTO0_CNTL, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @WREG32(i32 %41, i32 %42)
  store i32 0, i32* %10, align 4
  %44 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %45 = icmp ne %struct.radeon_crtc* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %27
  %47 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %48 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DCCG_AUDIO_DTO0_SOURCE_SEL(i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %46, %27
  %54 = load i32, i32* @DCCG_AUDIO_DTO_SOURCE, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @WREG32(i32 %54, i32 %55)
  %57 = load i32, i32* @DCCG_AUDIO_DTO0_PHASE, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @WREG32(i32 %57, i32 %58)
  %60 = load i32, i32* @DCCG_AUDIO_DTO0_MODULE, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @WREG32(i32 %60, i32 %61)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DCCG_AUDIO_DTO_WALLCLOCK_RATIO(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @DCCG_AUDIO_DTO0_SOURCE_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
