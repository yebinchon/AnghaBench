; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.amdgpu_pll* }
%struct.amdgpu_pll = type { i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32 }
%struct.amdgpu_crtc = type { i32, i32, i32, %struct.TYPE_5__, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i64 }
%struct.amdgpu_encoder = type { i32 }

@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atombios_crtc_set_pll(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.amdgpu_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_encoder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.amdgpu_pll*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %19)
  store %struct.amdgpu_crtc* %20, %struct.amdgpu_crtc** %5, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %6, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %25, align 8
  store %struct.amdgpu_device* %26, %struct.amdgpu_device** %7, align 8
  %27 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(i32 %29)
  store %struct.amdgpu_encoder* %30, %struct.amdgpu_encoder** %8, align 8
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
  %37 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %38 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %2
  %45 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %46 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 8
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %51 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %49, %44, %2
  %54 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %55 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %70 [
    i32 130, label %57
    i32 129, label %63
    i32 131, label %69
    i32 128, label %69
  ]

57:                                               ; preds = %53
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %60, align 8
  %62 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %61, i64 0
  store %struct.amdgpu_pll* %62, %struct.amdgpu_pll** %15, align 8
  br label %76

63:                                               ; preds = %53
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %66, align 8
  %68 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %67, i64 1
  store %struct.amdgpu_pll* %68, %struct.amdgpu_pll** %15, align 8
  br label %76

69:                                               ; preds = %53, %53
  br label %70

70:                                               ; preds = %53, %69
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %73, align 8
  %75 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %74, i64 2
  store %struct.amdgpu_pll* %75, %struct.amdgpu_pll** %15, align 8
  br label %76

76:                                               ; preds = %70, %63, %57
  %77 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %78 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %15, align 8
  %81 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %83 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %15, align 8
  %86 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %88 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %15, align 8
  %91 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %15, align 8
  %93 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %94 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @amdgpu_pll_compute(%struct.amdgpu_pll* %92, i32 %95, i32* %9, i32* %12, i32* %13, i32* %11, i32* %14)
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %98 = load i32, i32* @ATOM_DISABLE, align 4
  %99 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %100 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %103 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %106 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %105, i32 0, i32 3
  %107 = call i32 @amdgpu_atombios_crtc_program_ss(%struct.amdgpu_device* %97, i32 %98, i32 %101, i32 %104, %struct.TYPE_5__* %106)
  %108 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %109 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %110 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %113 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %8, align 8
  %117 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %125 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %128 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %131 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %130, i32 0, i32 3
  %132 = call i32 @amdgpu_atombios_crtc_program_pll(%struct.drm_crtc* %108, i32 %111, i32 %114, i32 %115, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %126, i64 %129, %struct.TYPE_5__* %131)
  %133 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %134 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %234

137:                                              ; preds = %76
  %138 = load i32, i32* %12, align 4
  %139 = mul nsw i32 %138, 10
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %139, %140
  %142 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %143 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = mul nsw i32 %141, %146
  %148 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %149 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = mul nsw i32 100, %152
  %154 = sdiv i32 %147, %153
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %18, align 4
  %156 = sdiv i32 %155, 10
  %157 = load i32, i32* @ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK, align 4
  %158 = and i32 %156, %157
  %159 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %160 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 8
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  %164 = sdiv i32 %163, 10
  %165 = sub nsw i32 %162, %164
  %166 = load i32, i32* @ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = load i32, i32* @ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK, align 4
  %169 = and i32 %167, %168
  %170 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %171 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %169
  store i32 %174, i32* %172, align 8
  %175 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %176 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %200

182:                                              ; preds = %137
  %183 = load i32, i32* %18, align 4
  %184 = mul nsw i32 4, %183
  %185 = load i32, i32* %11, align 4
  %186 = mul nsw i32 %184, %185
  %187 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %188 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = mul nsw i32 %191, 2048
  %193 = mul nsw i32 %186, %192
  %194 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %15, align 8
  %195 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 3125, %196
  %198 = sdiv i32 %197, 100
  %199 = sdiv i32 %193, %198
  store i32 %199, i32* %17, align 4
  br label %218

200:                                              ; preds = %137
  %201 = load i32, i32* %18, align 4
  %202 = mul nsw i32 2, %201
  %203 = load i32, i32* %11, align 4
  %204 = mul nsw i32 %202, %203
  %205 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %206 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = trunc i64 %208 to i32
  %210 = mul nsw i32 %209, 2048
  %211 = mul nsw i32 %204, %210
  %212 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %15, align 8
  %213 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 3125, %214
  %216 = sdiv i32 %215, 100
  %217 = sdiv i32 %211, %216
  store i32 %217, i32* %17, align 4
  br label %218

218:                                              ; preds = %200, %182
  %219 = load i32, i32* %17, align 4
  %220 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %221 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 2
  store i32 %219, i32* %222, align 8
  %223 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %224 = load i32, i32* @ATOM_ENABLE, align 4
  %225 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %226 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %229 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %5, align 8
  %232 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %231, i32 0, i32 3
  %233 = call i32 @amdgpu_atombios_crtc_program_ss(%struct.amdgpu_device* %223, i32 %224, i32 %227, i32 %230, %struct.TYPE_5__* %232)
  br label %234

234:                                              ; preds = %218, %76
  ret void
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(i32) #1

declare dso_local i32 @amdgpu_pll_compute(%struct.amdgpu_pll*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @amdgpu_atombios_crtc_program_ss(%struct.amdgpu_device*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @amdgpu_atombios_crtc_program_pll(%struct.drm_crtc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
