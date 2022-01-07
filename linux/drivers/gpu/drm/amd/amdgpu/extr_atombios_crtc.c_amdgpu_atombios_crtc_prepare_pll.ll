; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_prepare_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_prepare_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.amdgpu_crtc = type { i32, i32, i32, i32, i32 }
%struct.amdgpu_encoder = type { i32, %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { i32 }
%struct.drm_connector = type { i32 }
%struct.amdgpu_connector = type { i32, %struct.amdgpu_connector_atom_dig* }
%struct.amdgpu_connector_atom_dig = type { i32 }

@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@ASIC_INTERNAL_SS_ON_DP = common dso_local global i32 0, align 4
@ASIC_INTERNAL_SS_ON_TMDS = common dso_local global i32 0, align 4
@ASIC_INTERNAL_SS_ON_HDMI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_crtc_prepare_pll(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.amdgpu_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_encoder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %11 = alloca %struct.drm_connector*, align 8
  %12 = alloca %struct.amdgpu_connector*, align 8
  %13 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %15)
  store %struct.amdgpu_crtc* %16, %struct.amdgpu_crtc** %5, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %6, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %21, align 8
  store %struct.amdgpu_device* %22, %struct.amdgpu_device** %7, align 8
  %23 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %24 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(i32 %25)
  store %struct.amdgpu_encoder* %26, %struct.amdgpu_encoder** %8, align 8
  %27 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %32 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %31, i32 0, i32 0
  store i32 8, i32* %32, align 4
  %33 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %34 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %8, align 8
  %36 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %39 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %2
  %44 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %45 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @amdgpu_encoder_get_dp_bridge_encoder_id(i32 %46)
  %48 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %130

50:                                               ; preds = %43, %2
  %51 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %8, align 8
  %52 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %51, i32 0, i32 1
  %53 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %52, align 8
  store %struct.amdgpu_encoder_atom_dig* %53, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %54 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %55 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(i32 %56)
  store %struct.drm_connector* %57, %struct.drm_connector** %11, align 8
  %58 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %59 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %58)
  store %struct.amdgpu_connector* %59, %struct.amdgpu_connector** %12, align 8
  %60 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %12, align 8
  %61 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %60, i32 0, i32 1
  %62 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %61, align 8
  store %struct.amdgpu_connector_atom_dig* %62, %struct.amdgpu_connector_atom_dig** %13, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %12, align 8
  %67 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %69 = call i32 @amdgpu_connector_get_monitor_bpc(%struct.drm_connector* %68)
  %70 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %71 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  switch i32 %72, label %128 [
    i32 131, label %73
    i32 132, label %73
    i32 128, label %87
    i32 130, label %102
    i32 129, label %115
  ]

73:                                               ; preds = %50, %50
  %74 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %13, align 8
  %75 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 10
  store i32 %77, i32* %14, align 4
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %79 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %80 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %79, i32 0, i32 3
  %81 = load i32, i32* @ASIC_INTERNAL_SS_ON_DP, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i8* @amdgpu_atombios_get_asic_ss_info(%struct.amdgpu_device* %78, i32* %80, i32 %81, i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %86 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %129

87:                                               ; preds = %50
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %89 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %90 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %89, i32 0, i32 3
  %91 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %92 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %95 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %96, 10
  %98 = call i8* @amdgpu_atombios_get_asic_ss_info(%struct.amdgpu_device* %88, i32* %90, i32 %93, i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %101 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %129

102:                                              ; preds = %50
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %104 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %105 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %104, i32 0, i32 3
  %106 = load i32, i32* @ASIC_INTERNAL_SS_ON_TMDS, align 4
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 10
  %111 = call i8* @amdgpu_atombios_get_asic_ss_info(%struct.amdgpu_device* %103, i32* %105, i32 %106, i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %114 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %129

115:                                              ; preds = %50
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %117 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %118 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %117, i32 0, i32 3
  %119 = load i32, i32* @ASIC_INTERNAL_SS_ON_HDMI, align 4
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %121 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %122, 10
  %124 = call i8* @amdgpu_atombios_get_asic_ss_info(%struct.amdgpu_device* %116, i32* %118, i32 %119, i32 %123)
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %127 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %129

128:                                              ; preds = %50
  br label %129

129:                                              ; preds = %128, %115, %102, %87, %73
  br label %130

130:                                              ; preds = %129, %43
  %131 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %132 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %133 = call i32 @amdgpu_atombios_crtc_adjust_pll(%struct.drm_crtc* %131, %struct.drm_display_mode* %132)
  %134 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %135 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  ret i32 0
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(i32) #1

declare dso_local i64 @amdgpu_encoder_get_dp_bridge_encoder_id(i32) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(i32) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_connector_get_monitor_bpc(%struct.drm_connector*) #1

declare dso_local i8* @amdgpu_atombios_get_asic_ss_info(%struct.amdgpu_device*, i32*, i32, i32) #1

declare dso_local i32 @amdgpu_atombios_crtc_adjust_pll(%struct.drm_crtc*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
