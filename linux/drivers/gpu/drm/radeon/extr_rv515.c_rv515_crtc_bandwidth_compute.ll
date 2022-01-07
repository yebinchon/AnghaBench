; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_crtc_bandwidth_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_crtc_bandwidth_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32, i64 }
%struct.radeon_crtc = type { i64, %struct.TYPE_19__, %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.rv515_watermark = type { i32, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i8* }

@CHIP_RV610 = common dso_local global i64 0, align 8
@PM_METHOD_DPM = common dso_local global i64 0, align 8
@RMX_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_crtc*, %struct.rv515_watermark*, i32)* @rv515_crtc_bandwidth_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv515_crtc_bandwidth_compute(%struct.radeon_device* %0, %struct.radeon_crtc* %1, %struct.rv515_watermark* %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_crtc*, align 8
  %7 = alloca %struct.rv515_watermark*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_20__, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca %struct.TYPE_20__, align 8
  %16 = alloca %struct.TYPE_20__, align 8
  %17 = alloca %struct.TYPE_20__, align 8
  %18 = alloca %struct.TYPE_20__, align 8
  %19 = alloca %struct.TYPE_20__, align 8
  %20 = alloca %struct.TYPE_20__, align 8
  %21 = alloca %struct.TYPE_20__, align 8
  %22 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %6, align 8
  store %struct.rv515_watermark* %2, %struct.rv515_watermark** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %24 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  store %struct.drm_display_mode* %25, %struct.drm_display_mode** %9, align 8
  %26 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %27 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %33 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %32, i32 0, i32 0
  store i32 4, i32* %33, align 8
  br label %450

34:                                               ; preds = %4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHIP_RV610, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PM_METHOD_DPM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @radeon_dpm_get_sclk(%struct.radeon_device* %54, i32 %55)
  store i32 %56, i32* %22, align 4
  br label %62

57:                                               ; preds = %47, %40, %34
  %58 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %22, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = call i64 @dfixed_const(i32 100)
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  %65 = load i32, i32* %22, align 4
  %66 = call i64 @dfixed_const(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @dfixed_div(i64 %69, i64 %71)
  %73 = ptrtoint i8* %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  %75 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %76 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @dfixed_const(i32 2)
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %62
  %82 = call i64 @dfixed_const(i32 2)
  %83 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %84 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  br label %91

86:                                               ; preds = %62
  %87 = call i64 @dfixed_const(i32 1)
  %88 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %89 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @dfixed_const(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 %95, i64* %96, align 8
  %97 = call i64 @dfixed_const(i32 256)
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i64 %97, i64* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i8* @dfixed_div(i64 %100, i64 %102)
  %104 = ptrtoint i8* %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  %106 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %107 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i8* @dfixed_mul(i64 %109, i64 %111)
  %113 = ptrtoint i8* %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  store i64 %113, i64* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @dfixed_ceil(i64 %116)
  %118 = ptrtoint i8* %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  store i64 %118, i64* %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @dfixed_const(i32 4)
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %91
  %125 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %126 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %125, i32 0, i32 0
  store i32 4, i32* %126, align 8
  br label %133

127:                                              ; preds = %91
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @dfixed_trunc(i64 %129)
  %131 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %132 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %127, %124
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %135 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @dfixed_const(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %137, i64* %138, align 8
  %139 = call i64 @dfixed_const(i32 1000)
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 %139, i64* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i8* @dfixed_div(i64 %142, i64 %144)
  %146 = ptrtoint i8* %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %146, i64* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i8* @dfixed_div(i64 %149, i64 %151)
  %153 = ptrtoint i8* %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store i64 %153, i64* %154, align 8
  %155 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %156 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @RMX_OFF, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %202

160:                                              ; preds = %133
  %161 = call i64 @dfixed_const(i32 2)
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 %161, i64* %162, align 8
  %163 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %164 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp sgt i64 %166, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %160
  %171 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %172 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 %174, i64* %175, align 8
  br label %176

176:                                              ; preds = %170, %160
  %177 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %178 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i8* @dfixed_mul(i64 %180, i64 %182)
  %184 = ptrtoint i8* %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 %184, i64* %185, align 8
  %186 = call i64 @dfixed_const(i32 2)
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i64 %186, i64* %187, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i8* @dfixed_div(i64 %189, i64 %191)
  %193 = ptrtoint i8* %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 %193, i64* %194, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i8* @dfixed_div(i64 %196, i64 %198)
  %200 = ptrtoint i8* %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  store i64 %200, i64* %201, align 8
  br label %206

202:                                              ; preds = %133
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  store i64 %204, i64* %205, align 8
  br label %206

206:                                              ; preds = %202, %176
  %207 = call i64 @dfixed_const(i32 1)
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %207, i64* %208, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i8* @dfixed_div(i64 %210, i64 %212)
  %214 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %215 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %214, i32 0, i32 7
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  store i8* %213, i8** %216, align 8
  %217 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %218 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @dfixed_const(i32 %221)
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %222, i64* %223, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i8* @dfixed_mul(i64 %225, i64 %227)
  %229 = ptrtoint i8* %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  store i64 %229, i64* %230, align 8
  %231 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %232 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i64 @dfixed_const(i32 %235)
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %236, i64* %237, align 8
  %238 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %239 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i64 @dfixed_const(i32 %242)
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 %243, i64* %244, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i8* @dfixed_mul(i64 %246, i64 %248)
  %250 = ptrtoint i8* %249 to i64
  %251 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %252 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %251, i32 0, i32 6
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 0
  store i64 %250, i64* %253, align 8
  %254 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %255 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %254, i32 0, i32 6
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = call i8* @dfixed_div(i64 %257, i64 %259)
  %261 = ptrtoint i8* %260 to i64
  %262 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %263 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %262, i32 0, i32 6
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 0
  store i64 %261, i64* %264, align 8
  %265 = call i64 @dfixed_const(i32 600000)
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %265, i64* %266, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = call i8* @dfixed_div(i64 %268, i64 %270)
  %272 = ptrtoint i8* %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  store i64 %272, i64* %273, align 8
  %274 = call i64 @dfixed_const(i32 1000)
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  store i64 %274, i64* %275, align 8
  %276 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %277 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %276, i32 0, i32 5
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @dfixed_trunc(i64 %279)
  %281 = icmp sgt i32 %280, 1
  br i1 %281, label %282, label %301

282:                                              ; preds = %206
  %283 = call i64 @dfixed_const(i32 3)
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %283, i64* %284, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = call i8* @dfixed_mul(i64 %286, i64 %288)
  %290 = ptrtoint i8* %289 to i64
  %291 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %292 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 0
  store i64 %290, i64* %293, align 8
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %297 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = add nsw i64 %299, %295
  store i64 %300, i64* %298, align 8
  br label %310

301:                                              ; preds = %206
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %303, %305
  %307 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %308 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  store i64 %306, i64* %309, align 8
  br label %310

310:                                              ; preds = %301, %282
  %311 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %312 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = add nsw i32 2, %313
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = call i32 @dfixed_trunc(i64 %316)
  %318 = icmp sge i32 %314, %317
  br i1 %318, label %319, label %323

319:                                              ; preds = %310
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  store i64 %321, i64* %322, align 8
  br label %349

323:                                              ; preds = %310
  %324 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %325 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = sub nsw i32 %326, 2
  %328 = call i64 @dfixed_const(i32 %327)
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  store i64 %328, i64* %329, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = sub nsw i64 %331, %333
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  store i64 %334, i64* %335, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = call i8* @dfixed_mul(i64 %337, i64 %339)
  %341 = ptrtoint i8* %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  store i64 %341, i64* %342, align 8
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = sub nsw i64 %344, %346
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  store i64 %347, i64* %348, align 8
  br label %349

349:                                              ; preds = %323, %319
  %350 = call i64 @dfixed_const(i32 32)
  %351 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %352 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %351, i32 0, i32 4
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 0
  store i64 %350, i64* %353, align 8
  %354 = call i64 @dfixed_const(i32 16)
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %354, i64* %355, align 8
  %356 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %357 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = call i64 @dfixed_const(i32 %360)
  %362 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %363 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 0
  store i64 %361, i64* %364, align 8
  %365 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %366 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = call i8* @dfixed_div(i64 %368, i64 %370)
  %372 = ptrtoint i8* %371 to i64
  %373 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %374 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %374, i32 0, i32 0
  store i64 %372, i64* %375, align 8
  %376 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %377 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = call i8* @dfixed_ceil(i64 %379)
  %381 = ptrtoint i8* %380 to i64
  %382 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %383 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %382, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %383, i32 0, i32 0
  store i64 %381, i64* %384, align 8
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %388 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %387, i32 0, i32 3
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = sub nsw i64 %386, %390
  %392 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  store i64 %391, i64* %392, align 8
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = call i8* @dfixed_div(i64 %394, i64 %396)
  %398 = ptrtoint i8* %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  store i64 %398, i64* %399, align 8
  %400 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = call i32 @dfixed_trunc(i64 %401)
  %403 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %404 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = icmp sgt i32 %402, %407
  br i1 %408, label %409, label %417

409:                                              ; preds = %349
  %410 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %411 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %415 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %415, i32 0, i32 0
  store i64 %413, i64* %416, align 8
  br label %450

417:                                              ; preds = %349
  %418 = call i64 @dfixed_const(i32 16)
  %419 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %418, i64* %419, align 8
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = call i8* @dfixed_div(i64 %421, i64 %423)
  %425 = ptrtoint i8* %424 to i64
  %426 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %427 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %427, i32 0, i32 0
  store i64 %425, i64* %428, align 8
  %429 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %430 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = call i8* @dfixed_ceil(i64 %432)
  %434 = ptrtoint i8* %433 to i64
  %435 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %436 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %436, i32 0, i32 0
  store i64 %434, i64* %437, align 8
  %438 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %439 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %438, i32 0, i32 2
  %440 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %443 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = sub nsw i64 %441, %445
  %447 = load %struct.rv515_watermark*, %struct.rv515_watermark** %7, align 8
  %448 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %448, i32 0, i32 0
  store i64 %446, i64* %449, align 8
  br label %450

450:                                              ; preds = %31, %417, %409
  ret void
}

declare dso_local i32 @radeon_dpm_get_sclk(%struct.radeon_device*, i32) #1

declare dso_local i64 @dfixed_const(i32) #1

declare dso_local i8* @dfixed_div(i64, i64) #1

declare dso_local i8* @dfixed_mul(i64, i64) #1

declare dso_local i8* @dfixed_ceil(i64) #1

declare dso_local i32 @dfixed_trunc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
