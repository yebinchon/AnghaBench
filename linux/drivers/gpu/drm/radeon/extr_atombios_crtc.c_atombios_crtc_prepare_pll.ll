; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_prepare_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_prepare_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_crtc = type { i32, i32, i32, i32, i32 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dig*, i64 }
%struct.radeon_encoder_atom_dig = type { i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { i32, %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32 }

@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@ASIC_INTERNAL_SS_ON_DP = common dso_local global i32 0, align 4
@ATOM_DP_SS_ID2 = common dso_local global i32 0, align 4
@ATOM_DP_SS_ID1 = common dso_local global i32 0, align 4
@ASIC_INTERNAL_SS_ON_TMDS = common dso_local global i32 0, align 4
@ASIC_INTERNAL_SS_ON_HDMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*)* @atombios_crtc_prepare_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atombios_crtc_prepare_pll(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %11 = alloca %struct.drm_connector*, align 8
  %12 = alloca %struct.radeon_connector*, align 8
  %13 = alloca %struct.radeon_connector_atom_dig*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %15)
  store %struct.radeon_crtc* %16, %struct.radeon_crtc** %5, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %6, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.radeon_device*, %struct.radeon_device** %21, align 8
  store %struct.radeon_device* %22, %struct.radeon_device** %7, align 8
  %23 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %25)
  store %struct.radeon_encoder* %26, %struct.radeon_encoder** %8, align 8
  %27 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %28 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @atombios_get_encoder_mode(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %31, i32 0, i32 0
  store i32 8, i32* %32, align 4
  %33 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %36 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %42 = call i32 @radeon_dp_mst_prepare_pll(%struct.drm_crtc* %40, %struct.drm_display_mode* %41)
  br label %209

43:                                               ; preds = %2
  %44 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %45 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %48 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %43
  %53 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %54 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(i32 %55)
  %57 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %208

59:                                               ; preds = %52, %43
  %60 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %61 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %60, i32 0, i32 1
  %62 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %61, align 8
  store %struct.radeon_encoder_atom_dig* %62, %struct.radeon_encoder_atom_dig** %10, align 8
  %63 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %64 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.drm_connector* @radeon_get_connector_for_encoder(i32 %65)
  store %struct.drm_connector* %66, %struct.drm_connector** %11, align 8
  %67 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %68 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %67)
  store %struct.radeon_connector* %68, %struct.radeon_connector** %12, align 8
  %69 = load %struct.radeon_connector*, %struct.radeon_connector** %12, align 8
  %70 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %69, i32 0, i32 1
  %71 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %70, align 8
  store %struct.radeon_connector_atom_dig* %71, %struct.radeon_connector_atom_dig** %13, align 8
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.radeon_connector*, %struct.radeon_connector** %12, align 8
  %76 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %78 = call i32 @radeon_get_monitor_bpc(%struct.drm_connector* %77)
  %79 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %80 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  switch i32 %81, label %206 [
    i32 131, label %82
    i32 132, label %82
    i32 128, label %139
    i32 130, label %170
    i32 129, label %188
  ]

82:                                               ; preds = %59, %59
  %83 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %13, align 8
  %84 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, 10
  store i32 %86, i32* %14, align 4
  %87 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %88 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %82
  %91 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %92 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %93 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %92, i32 0, i32 3
  %94 = load i32, i32* @ASIC_INTERNAL_SS_ON_DP, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i8* @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %91, i32* %93, i32 %94, i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %99 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %138

100:                                              ; preds = %82
  %101 = load i32, i32* %14, align 4
  %102 = icmp eq i32 %101, 16200
  br i1 %102, label %103, label %126

103:                                              ; preds = %100
  %104 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %105 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %106 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %105, i32 0, i32 3
  %107 = load i32, i32* @ATOM_DP_SS_ID2, align 4
  %108 = call i8* @radeon_atombios_get_ppll_ss_info(%struct.radeon_device* %104, i32* %106, i32 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %111 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %113 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %103
  %117 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %118 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %119 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %118, i32 0, i32 3
  %120 = load i32, i32* @ATOM_DP_SS_ID1, align 4
  %121 = call i8* @radeon_atombios_get_ppll_ss_info(%struct.radeon_device* %117, i32* %119, i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %124 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %116, %103
  br label %135

126:                                              ; preds = %100
  %127 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %128 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %129 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %128, i32 0, i32 3
  %130 = load i32, i32* @ATOM_DP_SS_ID1, align 4
  %131 = call i8* @radeon_atombios_get_ppll_ss_info(%struct.radeon_device* %127, i32* %129, i32 %130)
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %134 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %126, %125
  %136 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %137 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %136, i32 0, i32 1
  store i32 0, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %90
  br label %207

139:                                              ; preds = %59
  %140 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %141 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %139
  %144 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %145 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %146 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %145, i32 0, i32 3
  %147 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %148 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %151 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sdiv i32 %152, 10
  %154 = call i8* @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %144, i32* %146, i32 %149, i32 %153)
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %157 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  br label %169

158:                                              ; preds = %139
  %159 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %160 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %161 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %160, i32 0, i32 3
  %162 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %163 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @radeon_atombios_get_ppll_ss_info(%struct.radeon_device* %159, i32* %161, i32 %164)
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %168 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %158, %143
  br label %207

170:                                              ; preds = %59
  %171 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %172 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %170
  %175 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %176 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %177 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %176, i32 0, i32 3
  %178 = load i32, i32* @ASIC_INTERNAL_SS_ON_TMDS, align 4
  %179 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %180 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = sdiv i32 %181, 10
  %183 = call i8* @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %175, i32* %177, i32 %178, i32 %182)
  %184 = ptrtoint i8* %183 to i32
  %185 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %186 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %174, %170
  br label %207

188:                                              ; preds = %59
  %189 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %190 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %188
  %193 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %194 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %195 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %194, i32 0, i32 3
  %196 = load i32, i32* @ASIC_INTERNAL_SS_ON_HDMI, align 4
  %197 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %198 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sdiv i32 %199, 10
  %201 = call i8* @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %193, i32* %195, i32 %196, i32 %200)
  %202 = ptrtoint i8* %201 to i32
  %203 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %204 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %192, %188
  br label %207

206:                                              ; preds = %59
  br label %207

207:                                              ; preds = %206, %205, %187, %169, %138
  br label %208

208:                                              ; preds = %207, %52
  br label %209

209:                                              ; preds = %208, %39
  %210 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %211 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %212 = call i32 @atombios_adjust_pll(%struct.drm_crtc* %210, %struct.drm_display_mode* %211)
  %213 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %214 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 4
  ret i32 1
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local i32 @atombios_get_encoder_mode(i32) #1

declare dso_local i32 @radeon_dp_mst_prepare_pll(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i64 @radeon_encoder_get_dp_bridge_encoder_id(i32) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(i32) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_get_monitor_bpc(%struct.drm_connector*) #1

declare dso_local i32 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i8* @radeon_atombios_get_asic_ss_info(%struct.radeon_device*, i32*, i32, i32) #1

declare dso_local i8* @radeon_atombios_get_ppll_ss_info(%struct.radeon_device*, i32*, i32) #1

declare dso_local i32 @atombios_adjust_pll(%struct.drm_crtc*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
