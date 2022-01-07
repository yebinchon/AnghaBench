; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce6_afmt.c_dce6_afmt_write_latency_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce6_afmt.c_dce6_afmt_write_latency_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_connector = type { i32*, i32*, i64* }
%struct.drm_display_mode = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@AZ_F0_CODEC_PIN_CONTROL_RESPONSE_LIPSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce6_afmt_write_latency_fields(%struct.drm_encoder* %0, %struct.drm_connector* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %7, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %17 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %16)
  store %struct.radeon_encoder* %17, %struct.radeon_encoder** %8, align 8
  %18 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %19 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %18, i32 0, i32 0
  %20 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %19, align 8
  store %struct.radeon_encoder_atom_dig* %20, %struct.radeon_encoder_atom_dig** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %22 = icmp ne %struct.radeon_encoder_atom_dig* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %25 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %30 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %23, %3
  br label %102

34:                                               ; preds = %28
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %34
  %42 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %43 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %50 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @VIDEO_LIPSYNC(i32 %53)
  %55 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %56 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @AUDIO_LIPSYNC(i32 %59)
  %61 = or i32 %54, %60
  store i32 %61, i32* %10, align 4
  br label %66

62:                                               ; preds = %41
  %63 = call i32 @VIDEO_LIPSYNC(i32 0)
  %64 = call i32 @AUDIO_LIPSYNC(i32 0)
  %65 = or i32 %63, %64
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %62, %48
  br label %93

67:                                               ; preds = %34
  %68 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %69 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %67
  %75 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %76 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @VIDEO_LIPSYNC(i32 %79)
  %81 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %82 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @AUDIO_LIPSYNC(i32 %85)
  %87 = or i32 %80, %86
  store i32 %87, i32* %10, align 4
  br label %92

88:                                               ; preds = %67
  %89 = call i32 @VIDEO_LIPSYNC(i32 0)
  %90 = call i32 @AUDIO_LIPSYNC(i32 0)
  %91 = or i32 %89, %90
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %88, %74
  br label %93

93:                                               ; preds = %92, %66
  %94 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %95 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @AZ_F0_CODEC_PIN_CONTROL_RESPONSE_LIPSYNC, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @WREG32_ENDPOINT(i32 %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %93, %33
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @VIDEO_LIPSYNC(i32) #1

declare dso_local i32 @AUDIO_LIPSYNC(i32) #1

declare dso_local i32 @WREG32_ENDPOINT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
