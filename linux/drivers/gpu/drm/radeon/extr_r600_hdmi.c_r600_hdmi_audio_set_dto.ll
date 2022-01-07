; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_audio_set_dto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_audio_set_dto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i64 }

@DCCG_AUDIO_DTO0_PHASE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO0_MODULE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO_SELECT = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO1_PHASE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO1_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_hdmi_audio_set_dto(%struct.radeon_device* %0, %struct.radeon_crtc* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %10 = icmp ne %struct.radeon_crtc* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %46

12:                                               ; preds = %3
  %13 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %14 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %15)
  store %struct.radeon_encoder* %16, %struct.radeon_encoder** %7, align 8
  %17 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %18 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %17, i32 0, i32 0
  %19 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %18, align 8
  store %struct.radeon_encoder_atom_dig* %19, %struct.radeon_encoder_atom_dig** %8, align 8
  %20 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %21 = icmp ne %struct.radeon_encoder_atom_dig* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %46

23:                                               ; preds = %12
  %24 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %25 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i32, i32* @DCCG_AUDIO_DTO0_PHASE, align 4
  %30 = call i32 @WREG32(i32 %29, i32 2400000)
  %31 = load i32, i32* @DCCG_AUDIO_DTO0_MODULE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = mul i32 %32, 100
  %34 = call i32 @WREG32(i32 %31, i32 %33)
  %35 = load i32, i32* @DCCG_AUDIO_DTO_SELECT, align 4
  %36 = call i32 @WREG32(i32 %35, i32 0)
  br label %46

37:                                               ; preds = %23
  %38 = load i32, i32* @DCCG_AUDIO_DTO1_PHASE, align 4
  %39 = call i32 @WREG32(i32 %38, i32 2400000)
  %40 = load i32, i32* @DCCG_AUDIO_DTO1_MODULE, align 4
  %41 = load i32, i32* %6, align 4
  %42 = mul i32 %41, 100
  %43 = call i32 @WREG32(i32 %40, i32 %42)
  %44 = load i32, i32* @DCCG_AUDIO_DTO_SELECT, align 4
  %45 = call i32 @WREG32(i32 %44, i32 1)
  br label %46

46:                                               ; preds = %11, %22, %37, %28
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
