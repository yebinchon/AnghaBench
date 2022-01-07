; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_dce4_afmt_write_latency_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_dce4_afmt_write_latency_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_connector = type { i32*, i32*, i64* }
%struct.drm_display_mode = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@AZ_F0_CODEC_PIN0_CONTROL_RESPONSE_LIPSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce4_afmt_write_latency_fields(%struct.drm_encoder* %0, %struct.drm_connector* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %3
  %21 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @VIDEO_LIPSYNC(i32 %32)
  %34 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %35 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @AUDIO_LIPSYNC(i32 %38)
  %40 = or i32 %33, %39
  store i32 %40, i32* %8, align 4
  br label %45

41:                                               ; preds = %20
  %42 = call i32 @VIDEO_LIPSYNC(i32 255)
  %43 = call i32 @AUDIO_LIPSYNC(i32 255)
  %44 = or i32 %42, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %27
  br label %72

46:                                               ; preds = %3
  %47 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %48 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %55 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @VIDEO_LIPSYNC(i32 %58)
  %60 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %61 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @AUDIO_LIPSYNC(i32 %64)
  %66 = or i32 %59, %65
  store i32 %66, i32* %8, align 4
  br label %71

67:                                               ; preds = %46
  %68 = call i32 @VIDEO_LIPSYNC(i32 255)
  %69 = call i32 @AUDIO_LIPSYNC(i32 255)
  %70 = or i32 %68, %69
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %67, %53
  br label %72

72:                                               ; preds = %71, %45
  %73 = load i32, i32* @AZ_F0_CODEC_PIN0_CONTROL_RESPONSE_LIPSYNC, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @WREG32_ENDPOINT(i32 0, i32 %73, i32 %74)
  ret void
}

declare dso_local i32 @VIDEO_LIPSYNC(i32) #1

declare dso_local i32 @AUDIO_LIPSYNC(i32) #1

declare dso_local i32 @WREG32_ENDPOINT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
