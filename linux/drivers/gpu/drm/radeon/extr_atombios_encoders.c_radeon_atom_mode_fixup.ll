; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32, i64, i64 }
%struct.radeon_encoder = type { i32, i64, %struct.radeon_encoder_atom_dac* }
%struct.radeon_encoder_atom_dac = type { i64 }
%struct.drm_connector = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@TV_STD_NTSC = common dso_local global i64 0, align 8
@TV_STD_NTSC_J = common dso_local global i64 0, align 8
@TV_STD_PAL_M = common dso_local global i64 0, align 8
@RMX_OFF = common dso_local global i64 0, align 8
@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @radeon_atom_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atom_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca %struct.radeon_encoder_atom_dac*, align 8
  %11 = alloca %struct.drm_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %12)
  store %struct.radeon_encoder* %13, %struct.radeon_encoder** %7, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %8, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %9, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %21 = call i32 @radeon_encoder_set_active_device(%struct.drm_encoder* %20)
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %23 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %22, i32 0)
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %3
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 2
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 2
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %30, %3
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %54, %46
  %60 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %61 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %69 = call i32 @radeon_panel_mode_fixup(%struct.drm_encoder* %67, %struct.drm_display_mode* %68)
  br label %123

70:                                               ; preds = %59
  %71 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %72 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %70
  %78 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %79 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %78, i32 0, i32 2
  %80 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %79, align 8
  store %struct.radeon_encoder_atom_dac* %80, %struct.radeon_encoder_atom_dac** %10, align 8
  %81 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %10, align 8
  %82 = icmp ne %struct.radeon_encoder_atom_dac* %81, null
  br i1 %82, label %83, label %110

83:                                               ; preds = %77
  %84 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %10, align 8
  %85 = getelementptr inbounds %struct.radeon_encoder_atom_dac, %struct.radeon_encoder_atom_dac* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TV_STD_NTSC, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %101, label %89

89:                                               ; preds = %83
  %90 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %10, align 8
  %91 = getelementptr inbounds %struct.radeon_encoder_atom_dac, %struct.radeon_encoder_atom_dac* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TV_STD_NTSC_J, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.radeon_encoder_atom_dac*, %struct.radeon_encoder_atom_dac** %10, align 8
  %97 = getelementptr inbounds %struct.radeon_encoder_atom_dac, %struct.radeon_encoder_atom_dac* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TV_STD_PAL_M, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95, %89, %83
  %102 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %104 = call i32 @radeon_atom_get_tv_timings(%struct.radeon_device* %102, i32 0, %struct.drm_display_mode* %103)
  br label %109

105:                                              ; preds = %95
  %106 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %108 = call i32 @radeon_atom_get_tv_timings(%struct.radeon_device* %106, i32 1, %struct.drm_display_mode* %107)
  br label %109

109:                                              ; preds = %105, %101
  br label %110

110:                                              ; preds = %109, %77
  br label %122

111:                                              ; preds = %70
  %112 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %113 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @RMX_OFF, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %120 = call i32 @radeon_panel_mode_fixup(%struct.drm_encoder* %118, %struct.drm_display_mode* %119)
  br label %121

121:                                              ; preds = %117, %111
  br label %122

122:                                              ; preds = %121, %110
  br label %123

123:                                              ; preds = %122, %66
  %124 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %125 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %123
  %128 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %129 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %132 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %130, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %127
  %137 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %138 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %137)
  %139 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %136, %127
  %142 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %143 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %142)
  store %struct.drm_connector* %143, %struct.drm_connector** %11, align 8
  %144 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %145 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %146 = call i32 @radeon_dp_set_link_config(%struct.drm_connector* %144, %struct.drm_display_mode* %145)
  br label %147

147:                                              ; preds = %141, %136, %123
  ret i32 1
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_encoder_set_active_device(%struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

declare dso_local i32 @radeon_panel_mode_fixup(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @radeon_atom_get_tv_timings(%struct.radeon_device*, i32, %struct.drm_display_mode*) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_dp_set_link_config(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
