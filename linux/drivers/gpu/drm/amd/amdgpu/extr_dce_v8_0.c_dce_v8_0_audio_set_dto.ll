; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_audio_set_dto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_audio_set_dto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_encoder = type { %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { i32 }
%struct.amdgpu_crtc = type { i32 }

@mmDCCG_AUDIO_DTO_SOURCE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO_SOURCE__DCCG_AUDIO_DTO0_SOURCE_SEL__SHIFT = common dso_local global i32 0, align 4
@mmDCCG_AUDIO_DTO0_PHASE = common dso_local global i32 0, align 4
@mmDCCG_AUDIO_DTO0_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @dce_v8_0_audio_set_dto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v8_0_audio_set_dto(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_encoder*, align 8
  %8 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %9 = alloca %struct.amdgpu_crtc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %6, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %18)
  store %struct.amdgpu_encoder* %19, %struct.amdgpu_encoder** %7, align 8
  %20 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %21 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %20, i32 0, i32 0
  %22 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %21, align 8
  store %struct.amdgpu_encoder_atom_dig* %22, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %24 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(i32 %25)
  store %struct.amdgpu_crtc* %26, %struct.amdgpu_crtc** %9, align 8
  store i32 24000, i32* %10, align 4
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %29 = icmp ne %struct.amdgpu_encoder_atom_dig* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %32 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %2
  br label %50

36:                                               ; preds = %30
  %37 = load i32, i32* @mmDCCG_AUDIO_DTO_SOURCE, align 4
  %38 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %39 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DCCG_AUDIO_DTO_SOURCE__DCCG_AUDIO_DTO0_SOURCE_SEL__SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = call i32 @WREG32(i32 %37, i32 %42)
  %44 = load i32, i32* @mmDCCG_AUDIO_DTO0_PHASE, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @WREG32(i32 %44, i32 %45)
  %47 = load i32, i32* @mmDCCG_AUDIO_DTO0_MODULE, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %36, %35
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
