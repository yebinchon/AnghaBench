; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_audio_set_dto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_audio_set_dto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_crtc = type { i32 }

@mmDCCG_AUDIO_DTO_SOURCE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO_SOURCE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO0_SOURCE_SEL = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO_SEL = common dso_local global i32 0, align 4
@mmDCCG_AUDIO_DTO0_PHASE = common dso_local global i32 0, align 4
@mmDCCG_AUDIO_DTO0_MODULE = common dso_local global i32 0, align 4
@mmDCCG_AUDIO_DTO1_PHASE = common dso_local global i32 0, align 4
@mmDCCG_AUDIO_DTO1_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @dce_v6_0_audio_set_dto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v6_0_audio_set_dto(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %6, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(i32 %18)
  store %struct.amdgpu_crtc* %19, %struct.amdgpu_crtc** %7, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %21 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @mmDCCG_AUDIO_DTO_SOURCE, align 4
  %23 = call i32 @RREG32(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @DCCG_AUDIO_DTO_SOURCE, align 4
  %26 = load i32, i32* @DCCG_AUDIO_DTO0_SOURCE_SEL, align 4
  %27 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %28 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @REG_SET_FIELD(i32 %24, i32 %25, i32 %26, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @DCCG_AUDIO_DTO_SOURCE, align 4
  %37 = load i32, i32* @DCCG_AUDIO_DTO_SEL, align 4
  %38 = call i32 @REG_SET_FIELD(i32 %35, i32 %36, i32 %37, i32 0)
  store i32 %38, i32* %9, align 4
  br label %49

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @ENCODER_MODE_IS_DP(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @DCCG_AUDIO_DTO_SOURCE, align 4
  %46 = load i32, i32* @DCCG_AUDIO_DTO_SEL, align 4
  %47 = call i32 @REG_SET_FIELD(i32 %44, i32 %45, i32 %46, i32 1)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %43, %39
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32, i32* @mmDCCG_AUDIO_DTO_SOURCE, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @WREG32(i32 %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @mmDCCG_AUDIO_DTO0_PHASE, align 4
  %58 = call i32 @WREG32(i32 %57, i32 24000)
  %59 = load i32, i32* @mmDCCG_AUDIO_DTO0_MODULE, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @WREG32(i32 %59, i32 %60)
  br label %73

62:                                               ; preds = %49
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @ENCODER_MODE_IS_DP(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* @mmDCCG_AUDIO_DTO1_PHASE, align 4
  %68 = call i32 @WREG32(i32 %67, i32 24000)
  %69 = load i32, i32* @mmDCCG_AUDIO_DTO1_MODULE, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @WREG32(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %62
  br label %73

73:                                               ; preds = %72, %56
  ret void
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i64 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
