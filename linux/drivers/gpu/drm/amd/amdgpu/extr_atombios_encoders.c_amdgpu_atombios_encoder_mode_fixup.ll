; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i64, i64 }
%struct.amdgpu_encoder = type { i32, i64 }
%struct.drm_connector = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@RMX_OFF = common dso_local global i64 0, align 8
@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_encoder_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.amdgpu_encoder*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %9)
  store %struct.amdgpu_encoder* %10, %struct.amdgpu_encoder** %7, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = call i32 @amdgpu_encoder_set_active_device(%struct.drm_encoder* %11)
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %14 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %13, i32 0)
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %3
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 2
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 2
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %21, %3
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %45, %37
  %51 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %52 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %60 = call i32 @amdgpu_panel_mode_fixup(%struct.drm_encoder* %58, %struct.drm_display_mode* %59)
  br label %72

61:                                               ; preds = %50
  %62 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %63 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RMX_OFF, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %70 = call i32 @amdgpu_panel_mode_fixup(%struct.drm_encoder* %68, %struct.drm_display_mode* %69)
  br label %71

71:                                               ; preds = %67, %61
  br label %72

72:                                               ; preds = %71, %57
  %73 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %74 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %77 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %72
  %82 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %83 = call i64 @amdgpu_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %82)
  %84 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %81, %72
  %87 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %88 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder* %87)
  store %struct.drm_connector* %88, %struct.drm_connector** %8, align 8
  %89 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %91 = call i32 @amdgpu_atombios_dp_set_link_config(%struct.drm_connector* %89, %struct.drm_display_mode* %90)
  br label %92

92:                                               ; preds = %86, %81
  ret i32 1
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_encoder_set_active_device(%struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

declare dso_local i32 @amdgpu_panel_mode_fixup(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i64 @amdgpu_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_atombios_dp_set_link_config(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
