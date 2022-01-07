; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_audio_set_dto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_audio_set_dto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_encoder = type { %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { i32 }
%struct.amdgpu_crtc = type { i32 }

@mmDCCG_AUDIO_DTO_SOURCE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO_SOURCE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO0_SOURCE_SEL = common dso_local global i32 0, align 4
@mmDCCG_AUDIO_DTO0_PHASE = common dso_local global i32 0, align 4
@mmDCCG_AUDIO_DTO0_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @dce_v11_0_audio_set_dto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v11_0_audio_set_dto(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_encoder*, align 8
  %8 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %9 = alloca %struct.amdgpu_crtc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %6, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %20 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %19)
  store %struct.amdgpu_encoder* %20, %struct.amdgpu_encoder** %7, align 8
  %21 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %22 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %21, i32 0, i32 0
  %23 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %22, align 8
  store %struct.amdgpu_encoder_atom_dig* %23, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %25 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(i32 %26)
  store %struct.amdgpu_crtc* %27, %struct.amdgpu_crtc** %9, align 8
  store i32 24000, i32* %10, align 4
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %30 = icmp ne %struct.amdgpu_encoder_atom_dig* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %33 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %2
  br label %56

37:                                               ; preds = %31
  %38 = load i32, i32* @mmDCCG_AUDIO_DTO_SOURCE, align 4
  %39 = call i32 @RREG32(i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @DCCG_AUDIO_DTO_SOURCE, align 4
  %42 = load i32, i32* @DCCG_AUDIO_DTO0_SOURCE_SEL, align 4
  %43 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %9, align 8
  %44 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @REG_SET_FIELD(i32 %40, i32 %41, i32 %42, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @mmDCCG_AUDIO_DTO_SOURCE, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  %50 = load i32, i32* @mmDCCG_AUDIO_DTO0_PHASE, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @WREG32(i32 %50, i32 %51)
  %53 = load i32, i32* @mmDCCG_AUDIO_DTO0_MODULE, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @WREG32(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %37, %36
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
