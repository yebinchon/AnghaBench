; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_crtc_bandwidth_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_crtc_bandwidth_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_20__, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_22__, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.radeon_crtc = type { i64, %struct.TYPE_19__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_19__ = type { %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.rs690_watermark = type { i32, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_22__, %struct.TYPE_22__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i8* }

@CHIP_RS780 = common dso_local global i64 0, align 8
@CHIP_RS880 = common dso_local global i64 0, align 8
@PM_METHOD_DPM = common dso_local global i64 0, align 8
@RMX_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_crtc*, %struct.rs690_watermark*, i32)* @rs690_crtc_bandwidth_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs690_crtc_bandwidth_compute(%struct.radeon_device* %0, %struct.radeon_crtc* %1, %struct.rs690_watermark* %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_crtc*, align 8
  %7 = alloca %struct.rs690_watermark*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca %struct.TYPE_22__, align 8
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca %struct.TYPE_22__, align 8
  %16 = alloca %struct.TYPE_22__, align 8
  %17 = alloca %struct.TYPE_22__, align 8
  %18 = alloca %struct.TYPE_22__, align 8
  %19 = alloca %struct.TYPE_22__, align 8
  %20 = alloca %struct.TYPE_22__, align 8
  %21 = alloca %struct.TYPE_22__, align 8
  %22 = alloca %struct.TYPE_22__, align 8
  %23 = alloca %struct.TYPE_22__, align 8
  %24 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %6, align 8
  store %struct.rs690_watermark* %2, %struct.rs690_watermark** %7, align 8
  store i32 %3, i32* %8, align 4
  %25 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %26 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  store %struct.drm_display_mode* %27, %struct.drm_display_mode** %9, align 8
  %28 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %29 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %4
  %34 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %35 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %34, i32 0, i32 0
  store i32 4, i32* %35, align 8
  br label %608

36:                                               ; preds = %4
  %37 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CHIP_RS780, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CHIP_RS880, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %42, %36
  %49 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PM_METHOD_DPM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @radeon_dpm_get_sclk(%struct.radeon_device* %62, i32 %63)
  store i32 %64, i32* %24, align 4
  br label %70

65:                                               ; preds = %55, %48, %42
  %66 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %24, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = call i64 @dfixed_const(i32 100)
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* %24, align 4
  %74 = call i64 @dfixed_const(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @dfixed_div(i64 %77, i64 %79)
  %81 = ptrtoint i8* %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  store i64 %81, i64* %82, align 8
  %83 = call i64 @dfixed_const(i32 16)
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  %85 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @dfixed_div(i64 %89, i64 %91)
  %93 = ptrtoint i8* %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  store i64 %93, i64* %94, align 8
  %95 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %96 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @dfixed_const(i32 2)
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %70
  %102 = call i64 @dfixed_const(i32 2)
  %103 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %104 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  store i64 %102, i64* %105, align 8
  br label %111

106:                                              ; preds = %70
  %107 = call i64 @dfixed_const(i32 1)
  %108 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %109 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  store i64 %107, i64* %110, align 8
  br label %111

111:                                              ; preds = %106, %101
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @dfixed_const(i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i64 %115, i64* %116, align 8
  %117 = call i64 @dfixed_const(i32 256)
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  store i64 %117, i64* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @dfixed_div(i64 %120, i64 %122)
  %124 = ptrtoint i8* %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %124, i64* %125, align 8
  %126 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %127 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @dfixed_mul(i64 %129, i64 %131)
  %133 = ptrtoint i8* %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store i64 %133, i64* %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i8* @dfixed_ceil(i64 %136)
  %138 = ptrtoint i8* %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @dfixed_const(i32 4)
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %111
  %145 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %146 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %145, i32 0, i32 0
  store i32 4, i32* %146, align 8
  br label %153

147:                                              ; preds = %111
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @dfixed_trunc(i64 %149)
  %151 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %152 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %147, %144
  %154 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %155 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @dfixed_const(i32 %156)
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %157, i64* %158, align 8
  %159 = call i64 @dfixed_const(i32 1000)
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i64 %159, i64* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i8* @dfixed_div(i64 %162, i64 %164)
  %166 = ptrtoint i8* %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %166, i64* %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i8* @dfixed_div(i64 %169, i64 %171)
  %173 = ptrtoint i8* %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i64 %173, i64* %174, align 8
  %175 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %176 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @RMX_OFF, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %222

180:                                              ; preds = %153
  %181 = call i64 @dfixed_const(i32 2)
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i64 %181, i64* %182, align 8
  %183 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %184 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %186, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %180
  %191 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %192 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i64 %194, i64* %195, align 8
  br label %196

196:                                              ; preds = %190, %180
  %197 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %198 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i8* @dfixed_mul(i64 %200, i64 %202)
  %204 = ptrtoint i8* %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i64 %204, i64* %205, align 8
  %206 = call i64 @dfixed_const(i32 2)
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  store i64 %206, i64* %207, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = call i8* @dfixed_div(i64 %209, i64 %211)
  %213 = ptrtoint i8* %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i64 %213, i64* %214, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call i8* @dfixed_div(i64 %216, i64 %218)
  %220 = ptrtoint i8* %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  store i64 %220, i64* %221, align 8
  br label %226

222:                                              ; preds = %153
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  store i64 %224, i64* %225, align 8
  br label %226

226:                                              ; preds = %222, %196
  %227 = call i64 @dfixed_const(i32 1)
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %227, i64* %228, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = call i8* @dfixed_div(i64 %230, i64 %232)
  %234 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %235 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  store i8* %233, i8** %236, align 8
  %237 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %238 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i64 @dfixed_const(i32 %241)
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %242, i64* %243, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = call i8* @dfixed_mul(i64 %245, i64 %247)
  %249 = ptrtoint i8* %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  store i64 %249, i64* %250, align 8
  %251 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %252 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i64 @dfixed_const(i32 %255)
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %256, i64* %257, align 8
  %258 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %259 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i64 @dfixed_const(i32 %262)
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i64 %263, i64* %264, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = call i8* @dfixed_mul(i64 %266, i64 %268)
  %270 = ptrtoint i8* %269 to i64
  %271 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %272 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %271, i32 0, i32 6
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 0
  store i64 %270, i64* %273, align 8
  %274 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %275 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %274, i32 0, i32 6
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = call i8* @dfixed_div(i64 %277, i64 %279)
  %281 = ptrtoint i8* %280 to i64
  %282 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %283 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %282, i32 0, i32 6
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 0
  store i64 %281, i64* %284, align 8
  %285 = bitcast %struct.TYPE_22__* %23 to i8*
  %286 = bitcast %struct.TYPE_22__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %285, i8* align 8 %286, i64 8, i1 false)
  %287 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %288 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %343

292:                                              ; preds = %226
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %296 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp sgt i64 %294, %299
  br i1 %300, label %301, label %314

301:                                              ; preds = %292
  %302 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %303 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %301
  %309 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %310 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 5
  %312 = bitcast %struct.TYPE_22__* %23 to i8*
  %313 = bitcast %struct.TYPE_22__* %311 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %312, i8* align 8 %313, i64 8, i1 false)
  br label %314

314:                                              ; preds = %308, %301, %292
  %315 = call i64 @dfixed_const(i32 296000)
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  store i64 %315, i64* %316, align 8
  %317 = call i64 @dfixed_const(i32 1000)
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %317, i64* %318, align 8
  %319 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %320 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = call i8* @dfixed_div(i64 %323, i64 %325)
  %327 = ptrtoint i8* %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i64 %327, i64* %328, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = call i8* @dfixed_div(i64 %330, i64 %332)
  %334 = ptrtoint i8* %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  store i64 %334, i64* %335, align 8
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = call i8* @dfixed_mul(i64 %337, i64 %339)
  %341 = ptrtoint i8* %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  store i64 %341, i64* %342, align 8
  br label %390

343:                                              ; preds = %226
  %344 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %347 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = icmp sgt i64 %345, %350
  br i1 %351, label %352, label %365

352:                                              ; preds = %343
  %353 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %354 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %352
  %360 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %361 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 3
  %363 = bitcast %struct.TYPE_22__* %23 to i8*
  %364 = bitcast %struct.TYPE_22__* %362 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %363, i8* align 8 %364, i64 8, i1 false)
  br label %365

365:                                              ; preds = %359, %352, %343
  %366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %369 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = icmp sgt i64 %367, %372
  br i1 %373, label %374, label %387

374:                                              ; preds = %365
  %375 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %376 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %387

381:                                              ; preds = %374
  %382 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %383 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %383, i32 0, i32 2
  %385 = bitcast %struct.TYPE_22__* %23 to i8*
  %386 = bitcast %struct.TYPE_22__* %384 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %385, i8* align 8 %386, i64 8, i1 false)
  br label %387

387:                                              ; preds = %381, %374, %365
  %388 = call i64 @dfixed_const(i32 5000)
  %389 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  store i64 %388, i64* %389, align 8
  br label %390

390:                                              ; preds = %387, %314
  %391 = call i64 @dfixed_const(i32 16)
  %392 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %391, i64* %392, align 8
  %393 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = call i8* @dfixed_mul(i64 %394, i64 %396)
  %398 = ptrtoint i8* %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  store i64 %398, i64* %399, align 8
  %400 = call i64 @dfixed_const(i32 1000)
  %401 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %400, i64* %401, align 8
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = call i8* @dfixed_div(i64 %403, i64 %405)
  %407 = ptrtoint i8* %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  store i64 %407, i64* %408, align 8
  %409 = call i64 @dfixed_const(i32 3328)
  %410 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %409, i64* %410, align 8
  %411 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = call i8* @dfixed_mul(i64 %412, i64 %414)
  %416 = ptrtoint i8* %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  store i64 %416, i64* %417, align 8
  %418 = call i64 @dfixed_const(i32 10)
  %419 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %418, i64* %419, align 8
  %420 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = call i8* @dfixed_div(i64 %421, i64 %423)
  %425 = ptrtoint i8* %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  store i64 %425, i64* %426, align 8
  %427 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %428 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %427, i32 0, i32 5
  %429 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = call i32 @dfixed_trunc(i64 %430)
  %432 = icmp sgt i32 %431, 1
  br i1 %432, label %433, label %452

433:                                              ; preds = %390
  %434 = call i64 @dfixed_const(i32 3)
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %434, i64* %435, align 8
  %436 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = call i8* @dfixed_mul(i64 %437, i64 %439)
  %441 = ptrtoint i8* %440 to i64
  %442 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %443 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %442, i32 0, i32 3
  %444 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %443, i32 0, i32 0
  store i64 %441, i64* %444, align 8
  %445 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %448 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %447, i32 0, i32 3
  %449 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = add nsw i64 %450, %446
  store i64 %451, i64* %449, align 8
  br label %471

452:                                              ; preds = %390
  %453 = call i64 @dfixed_const(i32 2)
  %454 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %453, i64* %454, align 8
  %455 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = call i8* @dfixed_mul(i64 %456, i64 %458)
  %460 = ptrtoint i8* %459 to i64
  %461 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %462 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %461, i32 0, i32 3
  %463 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %462, i32 0, i32 0
  store i64 %460, i64* %463, align 8
  %464 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %467 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %466, i32 0, i32 3
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = add nsw i64 %469, %465
  store i64 %470, i64* %468, align 8
  br label %471

471:                                              ; preds = %452, %433
  %472 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %473 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = add nsw i32 2, %474
  %476 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = call i32 @dfixed_trunc(i64 %477)
  %479 = icmp sge i32 %475, %478
  br i1 %479, label %480, label %484

480:                                              ; preds = %471
  %481 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %482 = load i64, i64* %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  store i64 %482, i64* %483, align 8
  br label %510

484:                                              ; preds = %471
  %485 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %486 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = sub nsw i32 %487, 2
  %489 = call i64 @dfixed_const(i32 %488)
  %490 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  store i64 %489, i64* %490, align 8
  %491 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = sub nsw i64 %492, %494
  %496 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  store i64 %495, i64* %496, align 8
  %497 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %498 = load i64, i64* %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = call i8* @dfixed_mul(i64 %498, i64 %500)
  %502 = ptrtoint i8* %501 to i64
  %503 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  store i64 %502, i64* %503, align 8
  %504 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = sub nsw i64 %505, %507
  %509 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  store i64 %508, i64* %509, align 8
  br label %510

510:                                              ; preds = %484, %480
  %511 = call i64 @dfixed_const(i32 32)
  %512 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %513 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %512, i32 0, i32 4
  %514 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %513, i32 0, i32 0
  store i64 %511, i64* %514, align 8
  %515 = call i64 @dfixed_const(i32 16)
  %516 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %515, i64* %516, align 8
  %517 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %518 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = call i64 @dfixed_const(i32 %521)
  %523 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %524 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %523, i32 0, i32 2
  %525 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %524, i32 0, i32 0
  store i64 %522, i64* %525, align 8
  %526 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %527 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %526, i32 0, i32 2
  %528 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %527, i32 0, i32 0
  %529 = load i64, i64* %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = call i8* @dfixed_div(i64 %529, i64 %531)
  %533 = ptrtoint i8* %532 to i64
  %534 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %535 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %534, i32 0, i32 2
  %536 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %535, i32 0, i32 0
  store i64 %533, i64* %536, align 8
  %537 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %538 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %537, i32 0, i32 2
  %539 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %538, i32 0, i32 0
  %540 = load i64, i64* %539, align 8
  %541 = call i8* @dfixed_ceil(i64 %540)
  %542 = ptrtoint i8* %541 to i64
  %543 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %544 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %543, i32 0, i32 2
  %545 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %544, i32 0, i32 0
  store i64 %542, i64* %545, align 8
  %546 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %547 = load i64, i64* %546, align 8
  %548 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %549 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %548, i32 0, i32 3
  %550 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %549, i32 0, i32 0
  %551 = load i64, i64* %550, align 8
  %552 = sub nsw i64 %547, %551
  %553 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  store i64 %552, i64* %553, align 8
  %554 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %557 = load i64, i64* %556, align 8
  %558 = call i8* @dfixed_div(i64 %555, i64 %557)
  %559 = ptrtoint i8* %558 to i64
  %560 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  store i64 %559, i64* %560, align 8
  %561 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %562 = load i64, i64* %561, align 8
  %563 = call i32 @dfixed_trunc(i64 %562)
  %564 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %565 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %564, i32 0, i32 1
  %566 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 8
  %569 = icmp sgt i32 %563, %568
  br i1 %569, label %570, label %575

570:                                              ; preds = %510
  %571 = call i64 @dfixed_const(i32 10)
  %572 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %573 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %573, i32 0, i32 0
  store i64 %571, i64* %574, align 8
  br label %608

575:                                              ; preds = %510
  %576 = call i64 @dfixed_const(i32 16)
  %577 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i64 %576, i64* %577, align 8
  %578 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %579 = load i64, i64* %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %581 = load i64, i64* %580, align 8
  %582 = call i8* @dfixed_div(i64 %579, i64 %581)
  %583 = ptrtoint i8* %582 to i64
  %584 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %585 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %585, i32 0, i32 0
  store i64 %583, i64* %586, align 8
  %587 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %588 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %587, i32 0, i32 1
  %589 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %588, i32 0, i32 0
  %590 = load i64, i64* %589, align 8
  %591 = call i8* @dfixed_ceil(i64 %590)
  %592 = ptrtoint i8* %591 to i64
  %593 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %594 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %594, i32 0, i32 0
  store i64 %592, i64* %595, align 8
  %596 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %597 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %596, i32 0, i32 2
  %598 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %597, i32 0, i32 0
  %599 = load i64, i64* %598, align 8
  %600 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %601 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %600, i32 0, i32 1
  %602 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %601, i32 0, i32 0
  %603 = load i64, i64* %602, align 8
  %604 = sub nsw i64 %599, %603
  %605 = load %struct.rs690_watermark*, %struct.rs690_watermark** %7, align 8
  %606 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %605, i32 0, i32 1
  %607 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %606, i32 0, i32 0
  store i64 %604, i64* %607, align 8
  br label %608

608:                                              ; preds = %33, %575, %570
  ret void
}

declare dso_local i32 @radeon_dpm_get_sclk(%struct.radeon_device*, i32) #1

declare dso_local i64 @dfixed_const(i32) #1

declare dso_local i8* @dfixed_div(i64, i64) #1

declare dso_local i8* @dfixed_mul(i64, i64) #1

declare dso_local i8* @dfixed_ceil(i64) #1

declare dso_local i32 @dfixed_trunc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
