; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_encoder = type { i32, i32, i32, i32 }
%struct.drm_connector = type { i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@PANEL_ENCODER_ACTION_ENABLE = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@radeon_audio = common dso_local global i64 0, align 8
@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @radeon_atom_encoder_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atom_encoder_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_encoder*, align 8
  %10 = alloca %struct.drm_connector*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %8, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %19 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %18)
  store %struct.radeon_encoder* %19, %struct.radeon_encoder** %9, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %21 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %20)
  store %struct.drm_connector* %21, %struct.drm_connector** %10, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %26 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %28 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %29 = call i32 @radeon_atom_encoder_dpms(%struct.drm_encoder* %27, i32 %28)
  %30 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %31 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %3
  %34 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %35 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %33
  %38 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %39 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %42 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %48 = call i32 @atombios_yuv_setup(%struct.drm_encoder* %47, i32 1)
  br label %52

49:                                               ; preds = %37
  %50 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %51 = call i32 @atombios_yuv_setup(%struct.drm_encoder* %50, i32 0)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %33, %3
  %54 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %55 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %97 [
    i32 132, label %57
    i32 135, label %57
    i32 134, label %57
    i32 133, label %57
    i32 131, label %61
    i32 130, label %61
    i32 129, label %61
    i32 128, label %61
    i32 136, label %61
    i32 141, label %62
    i32 140, label %62
    i32 137, label %62
    i32 143, label %66
    i32 139, label %66
    i32 142, label %66
    i32 138, label %66
  ]

57:                                               ; preds = %53, %53, %53, %53
  %58 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %59 = load i32, i32* @PANEL_ENCODER_ACTION_ENABLE, align 4
  %60 = call i32 @atombios_digital_setup(%struct.drm_encoder* %58, i32 %59)
  br label %97

61:                                               ; preds = %53, %53, %53, %53, %53
  br label %97

62:                                               ; preds = %53, %53, %53
  %63 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %64 = load i32, i32* @ATOM_ENABLE, align 4
  %65 = call i32 @atombios_dvo_setup(%struct.drm_encoder* %63, i32 %64)
  br label %97

66:                                               ; preds = %53, %53, %53, %53
  %67 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %68 = load i32, i32* @ATOM_ENABLE, align 4
  %69 = call i32 @atombios_dac_setup(%struct.drm_encoder* %67, i32 %68)
  %70 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %71 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %74 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %66
  %79 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %80 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %83 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %89 = load i32, i32* @ATOM_ENABLE, align 4
  %90 = call i32 @atombios_tv_setup(%struct.drm_encoder* %88, i32 %89)
  br label %95

91:                                               ; preds = %78
  %92 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %93 = load i32, i32* @ATOM_DISABLE, align 4
  %94 = call i32 @atombios_tv_setup(%struct.drm_encoder* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %66
  br label %97

97:                                               ; preds = %53, %96, %62, %61, %57
  %98 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %100 = call i32 @atombios_apply_encoder_quirks(%struct.drm_encoder* %98, %struct.drm_display_mode* %99)
  %101 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %102 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %101)
  store i32 %102, i32* %11, align 4
  %103 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %104 = icmp ne %struct.drm_connector* %103, null
  br i1 %104, label %105, label %120

105:                                              ; preds = %97
  %106 = load i64, i64* @radeon_audio, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = call i64 @ENCODER_MODE_IS_DP(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112, %108
  %117 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %118 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %119 = call i32 @radeon_audio_mode_set(%struct.drm_encoder* %117, %struct.drm_display_mode* %118)
  br label %120

120:                                              ; preds = %116, %112, %105, %97
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_atom_encoder_dpms(%struct.drm_encoder*, i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @atombios_yuv_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @atombios_digital_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @atombios_dvo_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @atombios_dac_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @atombios_tv_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @atombios_apply_encoder_quirks(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @atombios_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i64 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @radeon_audio_mode_set(%struct.drm_encoder*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
