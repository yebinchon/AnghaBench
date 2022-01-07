; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_program_watermarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_program_watermarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.amdgpu_crtc = type { i64, i32, i32, i32, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i64, i64, i64 }
%struct.dce8_wm_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64, i64 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@RMX_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"force priority to high\0A\00", align 1
@mmDPG_WATERMARK_MASK_CONTROL = common dso_local global i64 0, align 8
@DPG_WATERMARK_MASK_CONTROL__URGENCY_WATERMARK_MASK__SHIFT = common dso_local global i32 0, align 4
@mmDPG_PIPE_URGENCY_CONTROL = common dso_local global i64 0, align 8
@DPG_PIPE_URGENCY_CONTROL__URGENCY_LOW_WATERMARK__SHIFT = common dso_local global i32 0, align 4
@DPG_PIPE_URGENCY_CONTROL__URGENCY_HIGH_WATERMARK__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_crtc*, i32, i32)* @dce_v8_0_program_watermarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v8_0_program_watermarks(%struct.amdgpu_device* %0, %struct.amdgpu_crtc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.dce8_wm_params, align 8
  %11 = alloca %struct.dce8_wm_params, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_crtc* %1, %struct.amdgpu_crtc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store %struct.drm_display_mode* %21, %struct.drm_display_mode** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %22 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %23 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %249

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %249

30:                                               ; preds = %27
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %32 = icmp ne %struct.drm_display_mode* %31, null
  br i1 %32, label %33, label %249

33:                                               ; preds = %30
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = mul nsw i32 %37, 1000000
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 @div_u64(i32 %38, i32 %42)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = mul nsw i32 %48, 1000000
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i64 @div_u64(i32 %49, i32 %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @min(i32 %56, i32 65535)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %33
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %65 = call i32 @amdgpu_dpm_get_mclk(%struct.amdgpu_device* %64, i32 0)
  %66 = mul nsw i32 %65, 10
  %67 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %69 = call i32 @amdgpu_dpm_get_sclk(%struct.amdgpu_device* %68, i32 0)
  %70 = mul nsw i32 %69, 10
  %71 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  br label %85

72:                                               ; preds = %33
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %76, 10
  %78 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 10
  %84 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %72, %63
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %87 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 12
  store i64 %88, i64* %89, align 8
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 11
  store i64 %92, i64* %93, align 8
  %94 = load i32, i32* %12, align 4
  %95 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 2
  store i32 %94, i32* %95, align 8
  %96 = load i32, i32* %13, align 4
  %97 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %96, %98
  %100 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 3
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 4
  store i32 0, i32* %101, align 8
  %102 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %103 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %85
  %109 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 4
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %108, %85
  %111 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %112 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 10
  store i32 %113, i32* %114, align 8
  %115 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 5
  store i32 1, i32* %115, align 4
  %116 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %117 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @RMX_OFF, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 5
  store i32 2, i32* %122, align 4
  br label %123

123:                                              ; preds = %121, %110
  %124 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 6
  store i32 4, i32* %124, align 8
  %125 = load i32, i32* %7, align 4
  %126 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 7
  store i32 %125, i32* %126, align 4
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %128 = call i8* @cik_get_number_of_dram_channels(%struct.amdgpu_device* %127)
  %129 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 9
  store i8* %128, i8** %129, align 8
  %130 = load i32, i32* %8, align 4
  %131 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %11, i32 0, i32 8
  store i32 %130, i32* %131, align 8
  %132 = call i32 @dce_v8_0_latency_watermark(%struct.dce8_wm_params* %11)
  %133 = call i32 @min(i32 %132, i32 65535)
  store i32 %133, i32* %14, align 4
  %134 = call i32 @dce_v8_0_average_bandwidth_vs_dram_bandwidth_for_display(%struct.dce8_wm_params* %11)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %123
  %137 = call i32 @dce_v8_0_average_bandwidth_vs_available_bandwidth(%struct.dce8_wm_params* %11)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = call i32 @dce_v8_0_check_latency_hiding(%struct.dce8_wm_params* %11)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %150

148:                                              ; preds = %142, %139, %136, %123
  %149 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %142
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %150
  %157 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %158 = call i32 @amdgpu_dpm_get_mclk(%struct.amdgpu_device* %157, i32 1)
  %159 = mul nsw i32 %158, 10
  %160 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 0
  store i32 %159, i32* %160, align 8
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %162 = call i32 @amdgpu_dpm_get_sclk(%struct.amdgpu_device* %161, i32 1)
  %163 = mul nsw i32 %162, 10
  %164 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 1
  store i32 %163, i32* %164, align 4
  br label %178

165:                                              ; preds = %150
  %166 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %167 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 %169, 10
  %171 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 0
  store i32 %170, i32* %171, align 8
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %173 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %175, 10
  %177 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 1
  store i32 %176, i32* %177, align 4
  br label %178

178:                                              ; preds = %165, %156
  %179 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %180 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 12
  store i64 %181, i64* %182, align 8
  %183 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %184 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 11
  store i64 %185, i64* %186, align 8
  %187 = load i32, i32* %12, align 4
  %188 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 2
  store i32 %187, i32* %188, align 8
  %189 = load i32, i32* %13, align 4
  %190 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %189, %191
  %193 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 3
  store i32 %192, i32* %193, align 4
  %194 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 4
  store i32 0, i32* %194, align 8
  %195 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %196 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %178
  %202 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 4
  store i32 1, i32* %202, align 8
  br label %203

203:                                              ; preds = %201, %178
  %204 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %205 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 10
  store i32 %206, i32* %207, align 8
  %208 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 5
  store i32 1, i32* %208, align 4
  %209 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %210 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @RMX_OFF, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %203
  %215 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 5
  store i32 2, i32* %215, align 4
  br label %216

216:                                              ; preds = %214, %203
  %217 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 6
  store i32 4, i32* %217, align 8
  %218 = load i32, i32* %7, align 4
  %219 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 7
  store i32 %218, i32* %219, align 4
  %220 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %221 = call i8* @cik_get_number_of_dram_channels(%struct.amdgpu_device* %220)
  %222 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 9
  store i8* %221, i8** %222, align 8
  %223 = load i32, i32* %8, align 4
  %224 = getelementptr inbounds %struct.dce8_wm_params, %struct.dce8_wm_params* %10, i32 0, i32 8
  store i32 %223, i32* %224, align 8
  %225 = call i32 @dce_v8_0_latency_watermark(%struct.dce8_wm_params* %10)
  %226 = call i32 @min(i32 %225, i32 65535)
  store i32 %226, i32* %15, align 4
  %227 = call i32 @dce_v8_0_average_bandwidth_vs_dram_bandwidth_for_display(%struct.dce8_wm_params* %10)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %216
  %230 = call i32 @dce_v8_0_average_bandwidth_vs_available_bandwidth(%struct.dce8_wm_params* %10)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %229
  %233 = call i32 @dce_v8_0_check_latency_hiding(%struct.dce8_wm_params* %10)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %237 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 2
  br i1 %240, label %241, label %243

241:                                              ; preds = %235, %232, %229, %216
  %242 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %235
  %244 = load i32, i32* %7, align 4
  %245 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %246 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @DIV_ROUND_UP(i32 %244, i64 %247)
  store i32 %248, i32* %18, align 4
  br label %249

249:                                              ; preds = %243, %30, %27, %4
  %250 = load i64, i64* @mmDPG_WATERMARK_MASK_CONTROL, align 8
  %251 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %252 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %251, i32 0, i32 5
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %250, %253
  %255 = call i32 @RREG32(i64 %254)
  store i32 %255, i32* %17, align 4
  %256 = load i32, i32* %17, align 4
  store i32 %256, i32* %16, align 4
  %257 = load i32, i32* @DPG_WATERMARK_MASK_CONTROL__URGENCY_WATERMARK_MASK__SHIFT, align 4
  %258 = shl i32 3, %257
  %259 = xor i32 %258, -1
  %260 = load i32, i32* %16, align 4
  %261 = and i32 %260, %259
  store i32 %261, i32* %16, align 4
  %262 = load i32, i32* @DPG_WATERMARK_MASK_CONTROL__URGENCY_WATERMARK_MASK__SHIFT, align 4
  %263 = shl i32 1, %262
  %264 = load i32, i32* %16, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %16, align 4
  %266 = load i64, i64* @mmDPG_WATERMARK_MASK_CONTROL, align 8
  %267 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %268 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %267, i32 0, i32 5
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %266, %269
  %271 = load i32, i32* %16, align 4
  %272 = call i32 @WREG32(i64 %270, i32 %271)
  %273 = load i64, i64* @mmDPG_PIPE_URGENCY_CONTROL, align 8
  %274 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %275 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %274, i32 0, i32 5
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %273, %276
  %278 = load i32, i32* %14, align 4
  %279 = load i32, i32* @DPG_PIPE_URGENCY_CONTROL__URGENCY_LOW_WATERMARK__SHIFT, align 4
  %280 = shl i32 %278, %279
  %281 = load i32, i32* %13, align 4
  %282 = load i32, i32* @DPG_PIPE_URGENCY_CONTROL__URGENCY_HIGH_WATERMARK__SHIFT, align 4
  %283 = shl i32 %281, %282
  %284 = or i32 %280, %283
  %285 = call i32 @WREG32(i64 %277, i32 %284)
  %286 = load i64, i64* @mmDPG_WATERMARK_MASK_CONTROL, align 8
  %287 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %288 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %287, i32 0, i32 5
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %286, %289
  %291 = call i32 @RREG32(i64 %290)
  store i32 %291, i32* %16, align 4
  %292 = load i32, i32* @DPG_WATERMARK_MASK_CONTROL__URGENCY_WATERMARK_MASK__SHIFT, align 4
  %293 = shl i32 3, %292
  %294 = xor i32 %293, -1
  %295 = load i32, i32* %16, align 4
  %296 = and i32 %295, %294
  store i32 %296, i32* %16, align 4
  %297 = load i32, i32* @DPG_WATERMARK_MASK_CONTROL__URGENCY_WATERMARK_MASK__SHIFT, align 4
  %298 = shl i32 2, %297
  %299 = load i32, i32* %16, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %16, align 4
  %301 = load i64, i64* @mmDPG_WATERMARK_MASK_CONTROL, align 8
  %302 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %303 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %302, i32 0, i32 5
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %301, %304
  %306 = load i32, i32* %16, align 4
  %307 = call i32 @WREG32(i64 %305, i32 %306)
  %308 = load i64, i64* @mmDPG_PIPE_URGENCY_CONTROL, align 8
  %309 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %310 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %309, i32 0, i32 5
  %311 = load i64, i64* %310, align 8
  %312 = add nsw i64 %308, %311
  %313 = load i32, i32* %15, align 4
  %314 = load i32, i32* @DPG_PIPE_URGENCY_CONTROL__URGENCY_LOW_WATERMARK__SHIFT, align 4
  %315 = shl i32 %313, %314
  %316 = load i32, i32* %13, align 4
  %317 = load i32, i32* @DPG_PIPE_URGENCY_CONTROL__URGENCY_HIGH_WATERMARK__SHIFT, align 4
  %318 = shl i32 %316, %317
  %319 = or i32 %315, %318
  %320 = call i32 @WREG32(i64 %312, i32 %319)
  %321 = load i64, i64* @mmDPG_WATERMARK_MASK_CONTROL, align 8
  %322 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %323 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %322, i32 0, i32 5
  %324 = load i64, i64* %323, align 8
  %325 = add nsw i64 %321, %324
  %326 = load i32, i32* %17, align 4
  %327 = call i32 @WREG32(i64 %325, i32 %326)
  %328 = load i32, i32* %13, align 4
  %329 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %330 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %329, i32 0, i32 1
  store i32 %328, i32* %330, align 8
  %331 = load i32, i32* %14, align 4
  %332 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %333 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %332, i32 0, i32 2
  store i32 %331, i32* %333, align 4
  %334 = load i32, i32* %15, align 4
  %335 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %336 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %335, i32 0, i32 3
  store i32 %334, i32* %336, align 8
  %337 = load i32, i32* %18, align 4
  %338 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %339 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %338, i32 0, i32 4
  store i32 %337, i32* %339, align 4
  ret void
}

declare dso_local i64 @div_u64(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @amdgpu_dpm_get_mclk(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_dpm_get_sclk(%struct.amdgpu_device*, i32) #1

declare dso_local i8* @cik_get_number_of_dram_channels(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v8_0_latency_watermark(%struct.dce8_wm_params*) #1

declare dso_local i32 @dce_v8_0_average_bandwidth_vs_dram_bandwidth_for_display(%struct.dce8_wm_params*) #1

declare dso_local i32 @dce_v8_0_average_bandwidth_vs_available_bandwidth(%struct.dce8_wm_params*) #1

declare dso_local i32 @dce_v8_0_check_latency_hiding(%struct.dce8_wm_params*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
