; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll }
%struct.radeon_pll = type { i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_crtc = type { i32, i32, i32, %struct.TYPE_5__, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i64 }
%struct.radeon_encoder = type { i32, i32 }

@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*)* @atombios_crtc_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_crtc_set_pll(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.radeon_pll*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %19)
  store %struct.radeon_crtc* %20, %struct.radeon_crtc** %5, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %6, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.radeon_device*, %struct.radeon_device** %25, align 8
  store %struct.radeon_device* %26, %struct.radeon_device** %7, align 8
  %27 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %28 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %29)
  store %struct.radeon_encoder* %30, %struct.radeon_encoder** %8, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %37 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %38 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @atombios_get_encoder_mode(i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %42 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %2
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %50 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 8
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %55 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %53, %48, %44, %2
  %58 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %59 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %70 [
    i32 130, label %61
    i32 129, label %65
    i32 131, label %69
    i32 128, label %69
  ]

61:                                               ; preds = %57
  %62 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store %struct.radeon_pll* %64, %struct.radeon_pll** %15, align 8
  br label %74

65:                                               ; preds = %57
  %66 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store %struct.radeon_pll* %68, %struct.radeon_pll** %15, align 8
  br label %74

69:                                               ; preds = %57, %57
  br label %70

70:                                               ; preds = %57, %69
  %71 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store %struct.radeon_pll* %73, %struct.radeon_pll** %15, align 8
  br label %74

74:                                               ; preds = %70, %65, %61
  %75 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %76 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.radeon_pll*, %struct.radeon_pll** %15, align 8
  %79 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %81 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.radeon_pll*, %struct.radeon_pll** %15, align 8
  %84 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %86 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.radeon_pll*, %struct.radeon_pll** %15, align 8
  %89 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %91 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %74
  %97 = load %struct.radeon_pll*, %struct.radeon_pll** %15, align 8
  %98 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %99 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @radeon_compute_pll_legacy(%struct.radeon_pll* %97, i32 %100, i32* %9, i32* %12, i32* %13, i32* %11, i32* %14)
  br label %119

102:                                              ; preds = %74
  %103 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %104 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load %struct.radeon_pll*, %struct.radeon_pll** %15, align 8
  %108 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %109 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @radeon_compute_pll_avivo(%struct.radeon_pll* %107, i32 %110, i32* %9, i32* %12, i32* %13, i32* %11, i32* %14)
  br label %118

112:                                              ; preds = %102
  %113 = load %struct.radeon_pll*, %struct.radeon_pll** %15, align 8
  %114 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %115 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @radeon_compute_pll_legacy(%struct.radeon_pll* %113, i32 %116, i32* %9, i32* %12, i32* %13, i32* %11, i32* %14)
  br label %118

118:                                              ; preds = %112, %106
  br label %119

119:                                              ; preds = %118, %96
  %120 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %121 = load i32, i32* @ATOM_DISABLE, align 4
  %122 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %123 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %126 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %129 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %128, i32 0, i32 3
  %130 = call i32 @atombios_crtc_program_ss(%struct.radeon_device* %120, i32 %121, i32 %124, i32 %127, %struct.TYPE_5__* %129)
  %131 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %132 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %133 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %136 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %140 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %148 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %151 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %154 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %153, i32 0, i32 3
  %155 = call i32 @atombios_crtc_program_pll(%struct.drm_crtc* %131, i32 %134, i32 %137, i32 %138, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %149, i64 %152, %struct.TYPE_5__* %154)
  %156 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %157 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %262

160:                                              ; preds = %119
  %161 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %162 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %250

164:                                              ; preds = %160
  %165 = load i32, i32* %12, align 4
  %166 = mul nsw i32 %165, 10
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %166, %167
  %169 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %170 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = mul nsw i32 %168, %173
  %175 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %176 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = mul nsw i32 100, %179
  %181 = sdiv i32 %174, %180
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %18, align 4
  %183 = sdiv i32 %182, 10
  %184 = load i32, i32* @ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK, align 4
  %185 = and i32 %183, %184
  %186 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %187 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* %18, align 4
  %191 = sdiv i32 %190, 10
  %192 = sub nsw i32 %189, %191
  %193 = load i32, i32* @ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = load i32, i32* @ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK, align 4
  %196 = and i32 %194, %195
  %197 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %198 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %196
  store i32 %201, i32* %199, align 8
  %202 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %203 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %164
  %210 = load i32, i32* %18, align 4
  %211 = mul nsw i32 4, %210
  %212 = load i32, i32* %11, align 4
  %213 = mul nsw i32 %211, %212
  %214 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %215 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = mul nsw i32 %218, 2048
  %220 = mul nsw i32 %213, %219
  %221 = load %struct.radeon_pll*, %struct.radeon_pll** %15, align 8
  %222 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = mul nsw i32 3125, %223
  %225 = sdiv i32 %224, 100
  %226 = sdiv i32 %220, %225
  store i32 %226, i32* %17, align 4
  br label %245

227:                                              ; preds = %164
  %228 = load i32, i32* %18, align 4
  %229 = mul nsw i32 2, %228
  %230 = load i32, i32* %11, align 4
  %231 = mul nsw i32 %229, %230
  %232 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %233 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = trunc i64 %235 to i32
  %237 = mul nsw i32 %236, 2048
  %238 = mul nsw i32 %231, %237
  %239 = load %struct.radeon_pll*, %struct.radeon_pll** %15, align 8
  %240 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = mul nsw i32 3125, %241
  %243 = sdiv i32 %242, 100
  %244 = sdiv i32 %238, %243
  store i32 %244, i32* %17, align 4
  br label %245

245:                                              ; preds = %227, %209
  %246 = load i32, i32* %17, align 4
  %247 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %248 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 2
  store i32 %246, i32* %249, align 8
  br label %250

250:                                              ; preds = %245, %160
  %251 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %252 = load i32, i32* @ATOM_ENABLE, align 4
  %253 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %254 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %257 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %260 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %259, i32 0, i32 3
  %261 = call i32 @atombios_crtc_program_ss(%struct.radeon_device* %251, i32 %252, i32 %255, i32 %258, %struct.TYPE_5__* %260)
  br label %262

262:                                              ; preds = %250, %119
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local i32 @atombios_get_encoder_mode(i32) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @radeon_compute_pll_legacy(%struct.radeon_pll*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_compute_pll_avivo(%struct.radeon_pll*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @atombios_crtc_program_ss(%struct.radeon_device*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @atombios_crtc_program_pll(%struct.drm_crtc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_5__*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
