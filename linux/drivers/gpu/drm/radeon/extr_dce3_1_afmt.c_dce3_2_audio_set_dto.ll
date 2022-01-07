; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce3_1_afmt.c_dce3_2_audio_set_dto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce3_1_afmt.c_dce3_2_audio_set_dto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i64 }

@DCCG_AUDIO_DTO0_CNTL = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO0_PHASE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO0_MODULE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO_SELECT = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO1_CNTL = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO1_PHASE = common dso_local global i32 0, align 4
@DCCG_AUDIO_DTO1_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce3_2_audio_set_dto(%struct.radeon_device* %0, %struct.radeon_crtc* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = udiv i32 %13, 24000
  store i32 %14, i32* %9, align 4
  %15 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %16 = icmp ne %struct.radeon_crtc* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %91

18:                                               ; preds = %3
  %19 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %21)
  store %struct.radeon_encoder* %22, %struct.radeon_encoder** %7, align 8
  %23 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %23, i32 0, i32 0
  %25 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %24, align 8
  store %struct.radeon_encoder_atom_dig* %25, %struct.radeon_encoder_atom_dig** %8, align 8
  %26 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %27 = icmp ne %struct.radeon_encoder_atom_dig* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %91

29:                                               ; preds = %18
  %30 = load i32, i32* %9, align 4
  %31 = icmp uge i32 %30, 8
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 192000, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = icmp uge i32 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 96000, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = icmp uge i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 48000, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %42

41:                                               ; preds = %37
  store i32 24000, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %36
  br label %44

44:                                               ; preds = %43, %32
  %45 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %46 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load i32, i32* @DCCG_AUDIO_DTO0_CNTL, align 4
  %51 = call i32 @RREG32(i32 %50)
  %52 = load i32, i32* @DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @DCCG_AUDIO_DTO_WALLCLOCK_RATIO(i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* @DCCG_AUDIO_DTO0_CNTL, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @WREG32(i32 %59, i32 %60)
  %62 = load i32, i32* @DCCG_AUDIO_DTO0_PHASE, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @WREG32(i32 %62, i32 %63)
  %65 = load i32, i32* @DCCG_AUDIO_DTO0_MODULE, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @WREG32(i32 %65, i32 %66)
  %68 = load i32, i32* @DCCG_AUDIO_DTO_SELECT, align 4
  %69 = call i32 @WREG32(i32 %68, i32 0)
  br label %91

70:                                               ; preds = %44
  %71 = load i32, i32* @DCCG_AUDIO_DTO1_CNTL, align 4
  %72 = call i32 @RREG32(i32 %71)
  %73 = load i32, i32* @DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @DCCG_AUDIO_DTO_WALLCLOCK_RATIO(i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* @DCCG_AUDIO_DTO1_CNTL, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @WREG32(i32 %80, i32 %81)
  %83 = load i32, i32* @DCCG_AUDIO_DTO1_PHASE, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @WREG32(i32 %83, i32 %84)
  %86 = load i32, i32* @DCCG_AUDIO_DTO1_MODULE, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @WREG32(i32 %86, i32 %87)
  %89 = load i32, i32* @DCCG_AUDIO_DTO_SELECT, align 4
  %90 = call i32 @WREG32(i32 %89, i32 1)
  br label %91

91:                                               ; preds = %17, %28, %70, %49
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DCCG_AUDIO_DTO_WALLCLOCK_RATIO(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
