; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_compute_mode_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_compute_mode_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rs690_watermark = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.drm_display_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.rs690_watermark*, %struct.rs690_watermark*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32*, i32*)* @rs690_compute_mode_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs690_compute_mode_priority(%struct.radeon_device* %0, %struct.rs690_watermark* %1, %struct.rs690_watermark* %2, %struct.drm_display_mode* %3, %struct.drm_display_mode* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.rs690_watermark*, align 8
  %10 = alloca %struct.rs690_watermark*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca %struct.drm_display_mode*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca %struct.TYPE_11__, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca %struct.TYPE_11__, align 8
  %19 = alloca %struct.TYPE_11__, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %8, align 8
  store %struct.rs690_watermark* %1, %struct.rs690_watermark** %9, align 8
  store %struct.rs690_watermark* %2, %struct.rs690_watermark** %10, align 8
  store %struct.drm_display_mode* %3, %struct.drm_display_mode** %11, align 8
  store %struct.drm_display_mode* %4, %struct.drm_display_mode** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = call i32 @S_006548_D1MODE_PRIORITY_A_OFF(i32 1)
  %21 = load i32*, i32** %13, align 8
  store i32 %20, i32* %21, align 4
  %22 = call i32 @S_006548_D1MODE_PRIORITY_A_OFF(i32 1)
  %23 = load i32*, i32** %14, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %25 = icmp ne %struct.drm_display_mode* %24, null
  br i1 %25, label %26, label %322

26:                                               ; preds = %7
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %28 = icmp ne %struct.drm_display_mode* %27, null
  br i1 %28, label %29, label %322

29:                                               ; preds = %26
  %30 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %31 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dfixed_trunc(i64 %33)
  %35 = icmp sgt i32 %34, 64
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %38 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %37, i32 0, i32 7
  %39 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %40 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @dfixed_mul(i64 %42, i64 %44)
  %46 = ptrtoint i8* %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  br label %54

48:                                               ; preds = %29
  %49 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %50 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %48, %36
  %55 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %56 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @dfixed_trunc(i64 %58)
  %60 = icmp sgt i32 %59, 64
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %63 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %62, i32 0, i32 7
  %64 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %65 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i8* @dfixed_mul(i64 %67, i64 %69)
  %71 = ptrtoint i8* %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  br label %79

73:                                               ; preds = %54
  %74 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %75 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %61
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %81
  store i64 %84, i64* %82, align 8
  %85 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %86 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @dfixed_div(i64 %88, i64 %90)
  %92 = ptrtoint i8* %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i64 %92, i64* %93, align 8
  %94 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %95 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %97, %99
  br i1 %100, label %101, label %146

101:                                              ; preds = %79
  %102 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %103 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %105, %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %108, i64* %109, align 8
  %110 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %111 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @dfixed_mul(i64 %113, i64 %115)
  %117 = ptrtoint i8* %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %117, i64* %118, align 8
  %119 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %120 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %119, i32 0, i32 3
  %121 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %122 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @dfixed_mul(i64 %124, i64 %126)
  %128 = ptrtoint i8* %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %128, i64* %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %131, %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %134, i64* %135, align 8
  %136 = call i8* @dfixed_const(i32 16000)
  %137 = ptrtoint i8* %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %137, i64* %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @dfixed_div(i64 %140, i64 %142)
  %144 = ptrtoint i8* %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i64 %144, i64* %145, align 8
  br label %168

146:                                              ; preds = %79
  %147 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %148 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %147, i32 0, i32 3
  %149 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %150 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i8* @dfixed_mul(i64 %152, i64 %154)
  %156 = ptrtoint i8* %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %156, i64* %157, align 8
  %158 = call i8* @dfixed_const(i32 16000)
  %159 = ptrtoint i8* %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %159, i64* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i8* @dfixed_div(i64 %162, i64 %164)
  %166 = ptrtoint i8* %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i64 %166, i64* %167, align 8
  br label %168

168:                                              ; preds = %146, %101
  %169 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %170 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp sgt i64 %172, %174
  br i1 %175, label %176, label %221

176:                                              ; preds = %168
  %177 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %178 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %180, %182
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %183, i64* %184, align 8
  %185 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %186 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i8* @dfixed_mul(i64 %188, i64 %190)
  %192 = ptrtoint i8* %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %192, i64* %193, align 8
  %194 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %195 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %194, i32 0, i32 3
  %196 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %197 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i8* @dfixed_mul(i64 %199, i64 %201)
  %203 = ptrtoint i8* %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %203, i64* %204, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %206, %208
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %209, i64* %210, align 8
  %211 = call i8* @dfixed_const(i32 16000)
  %212 = ptrtoint i8* %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %212, i64* %213, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i8* @dfixed_div(i64 %215, i64 %217)
  %219 = ptrtoint i8* %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 %219, i64* %220, align 8
  br label %243

221:                                              ; preds = %168
  %222 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %223 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %222, i32 0, i32 3
  %224 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %225 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call i8* @dfixed_mul(i64 %227, i64 %229)
  %231 = ptrtoint i8* %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %231, i64* %232, align 8
  %233 = call i8* @dfixed_const(i32 16000)
  %234 = ptrtoint i8* %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %234, i64* %235, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = call i8* @dfixed_div(i64 %237, i64 %239)
  %241 = ptrtoint i8* %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 %241, i64* %242, align 8
  br label %243

243:                                              ; preds = %221, %176
  %244 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %245 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp sgt i64 %247, %249
  br i1 %250, label %251, label %257

251:                                              ; preds = %243
  %252 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %253 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i64 %255, i64* %256, align 8
  br label %257

257:                                              ; preds = %251, %243
  %258 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %259 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp sgt i64 %261, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %257
  %266 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %267 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i64 %269, i64* %270, align 8
  br label %271

271:                                              ; preds = %265, %257
  %272 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %273 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp sgt i64 %275, %277
  br i1 %278, label %279, label %285

279:                                              ; preds = %271
  %280 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %281 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 %283, i64* %284, align 8
  br label %285

285:                                              ; preds = %279, %271
  %286 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %287 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp sgt i64 %289, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %285
  %294 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %295 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 %297, i64* %298, align 8
  br label %299

299:                                              ; preds = %293, %285
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = call i32 @dfixed_trunc(i64 %301)
  %303 = load i32*, i32** %13, align 8
  store i32 %302, i32* %303, align 4
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @dfixed_trunc(i64 %305)
  %307 = load i32*, i32** %14, align 8
  store i32 %306, i32* %307, align 4
  %308 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %309 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = icmp eq i32 %310, 2
  br i1 %311, label %312, label %321

312:                                              ; preds = %299
  %313 = call i32 @S_006548_D1MODE_PRIORITY_A_ALWAYS_ON(i32 1)
  %314 = load i32*, i32** %13, align 8
  %315 = load i32, i32* %314, align 4
  %316 = or i32 %315, %313
  store i32 %316, i32* %314, align 4
  %317 = call i32 @S_006D48_D2MODE_PRIORITY_A_ALWAYS_ON(i32 1)
  %318 = load i32*, i32** %14, align 8
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %319, %317
  store i32 %320, i32* %318, align 4
  br label %321

321:                                              ; preds = %312, %299
  br label %634

322:                                              ; preds = %26, %7
  %323 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %324 = icmp ne %struct.drm_display_mode* %323, null
  br i1 %324, label %325, label %477

325:                                              ; preds = %322
  %326 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %327 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %326, i32 0, i32 7
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @dfixed_trunc(i64 %329)
  %331 = icmp sgt i32 %330, 64
  br i1 %331, label %332, label %344

332:                                              ; preds = %325
  %333 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %334 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %333, i32 0, i32 7
  %335 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %336 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %335, i32 0, i32 6
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = call i8* @dfixed_mul(i64 %338, i64 %340)
  %342 = ptrtoint i8* %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %342, i64* %343, align 8
  br label %350

344:                                              ; preds = %325
  %345 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %346 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %345, i32 0, i32 6
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %348, i64* %349, align 8
  br label %350

350:                                              ; preds = %344, %332
  %351 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %352 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %351, i32 0, i32 5
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = call i8* @dfixed_div(i64 %354, i64 %356)
  %358 = ptrtoint i8* %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i64 %358, i64* %359, align 8
  %360 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %361 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = icmp sgt i64 %363, %365
  br i1 %366, label %367, label %412

367:                                              ; preds = %350
  %368 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %369 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = sub nsw i64 %371, %373
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %374, i64* %375, align 8
  %376 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %377 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %376, i32 0, i32 4
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = call i8* @dfixed_mul(i64 %379, i64 %381)
  %383 = ptrtoint i8* %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %383, i64* %384, align 8
  %385 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %386 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %385, i32 0, i32 3
  %387 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %388 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = call i8* @dfixed_mul(i64 %390, i64 %392)
  %394 = ptrtoint i8* %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %394, i64* %395, align 8
  %396 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = add nsw i64 %397, %399
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %400, i64* %401, align 8
  %402 = call i8* @dfixed_const(i32 16000)
  %403 = ptrtoint i8* %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %403, i64* %404, align 8
  %405 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = call i8* @dfixed_div(i64 %406, i64 %408)
  %410 = ptrtoint i8* %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i64 %410, i64* %411, align 8
  br label %434

412:                                              ; preds = %350
  %413 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %414 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %413, i32 0, i32 3
  %415 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %416 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %416, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = call i8* @dfixed_mul(i64 %418, i64 %420)
  %422 = ptrtoint i8* %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %422, i64* %423, align 8
  %424 = call i8* @dfixed_const(i32 16000)
  %425 = ptrtoint i8* %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %425, i64* %426, align 8
  %427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = call i8* @dfixed_div(i64 %428, i64 %430)
  %432 = ptrtoint i8* %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i64 %432, i64* %433, align 8
  br label %434

434:                                              ; preds = %412, %367
  %435 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %436 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = icmp sgt i64 %438, %440
  br i1 %441, label %442, label %448

442:                                              ; preds = %434
  %443 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %444 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i64 %446, i64* %447, align 8
  br label %448

448:                                              ; preds = %442, %434
  %449 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %450 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = icmp sgt i64 %452, %454
  br i1 %455, label %456, label %462

456:                                              ; preds = %448
  %457 = load %struct.rs690_watermark*, %struct.rs690_watermark** %9, align 8
  %458 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i64 %460, i64* %461, align 8
  br label %462

462:                                              ; preds = %456, %448
  %463 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = call i32 @dfixed_trunc(i64 %464)
  %466 = load i32*, i32** %13, align 8
  store i32 %465, i32* %466, align 4
  %467 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %468 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = icmp eq i32 %469, 2
  br i1 %470, label %471, label %476

471:                                              ; preds = %462
  %472 = call i32 @S_006548_D1MODE_PRIORITY_A_ALWAYS_ON(i32 1)
  %473 = load i32*, i32** %13, align 8
  %474 = load i32, i32* %473, align 4
  %475 = or i32 %474, %472
  store i32 %475, i32* %473, align 4
  br label %476

476:                                              ; preds = %471, %462
  br label %633

477:                                              ; preds = %322
  %478 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %479 = icmp ne %struct.drm_display_mode* %478, null
  br i1 %479, label %480, label %632

480:                                              ; preds = %477
  %481 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %482 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %481, i32 0, i32 7
  %483 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %482, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = call i32 @dfixed_trunc(i64 %484)
  %486 = icmp sgt i32 %485, 64
  br i1 %486, label %487, label %499

487:                                              ; preds = %480
  %488 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %489 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %488, i32 0, i32 7
  %490 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %491 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %490, i32 0, i32 6
  %492 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %489, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %491, i32 0, i32 0
  %495 = load i64, i64* %494, align 8
  %496 = call i8* @dfixed_mul(i64 %493, i64 %495)
  %497 = ptrtoint i8* %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %497, i64* %498, align 8
  br label %505

499:                                              ; preds = %480
  %500 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %501 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %500, i32 0, i32 6
  %502 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %503, i64* %504, align 8
  br label %505

505:                                              ; preds = %499, %487
  %506 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %507 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %506, i32 0, i32 5
  %508 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %507, i32 0, i32 0
  %509 = load i64, i64* %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = call i8* @dfixed_div(i64 %509, i64 %511)
  %513 = ptrtoint i8* %512 to i64
  %514 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i64 %513, i64* %514, align 8
  %515 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %516 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %515, i32 0, i32 2
  %517 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %520 = load i64, i64* %519, align 8
  %521 = icmp sgt i64 %518, %520
  br i1 %521, label %522, label %567

522:                                              ; preds = %505
  %523 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %524 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %523, i32 0, i32 2
  %525 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %528 = load i64, i64* %527, align 8
  %529 = sub nsw i64 %526, %528
  %530 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %529, i64* %530, align 8
  %531 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %532 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %531, i32 0, i32 4
  %533 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %532, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = call i8* @dfixed_mul(i64 %534, i64 %536)
  %538 = ptrtoint i8* %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %538, i64* %539, align 8
  %540 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %541 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %540, i32 0, i32 3
  %542 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %543 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %542, i32 0, i32 2
  %544 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %541, i32 0, i32 0
  %545 = load i64, i64* %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %543, i32 0, i32 0
  %547 = load i64, i64* %546, align 8
  %548 = call i8* @dfixed_mul(i64 %545, i64 %547)
  %549 = ptrtoint i8* %548 to i64
  %550 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %549, i64* %550, align 8
  %551 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %554 = load i64, i64* %553, align 8
  %555 = add nsw i64 %552, %554
  %556 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %555, i64* %556, align 8
  %557 = call i8* @dfixed_const(i32 16000)
  %558 = ptrtoint i8* %557 to i64
  %559 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %558, i64* %559, align 8
  %560 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %563 = load i64, i64* %562, align 8
  %564 = call i8* @dfixed_div(i64 %561, i64 %563)
  %565 = ptrtoint i8* %564 to i64
  %566 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 %565, i64* %566, align 8
  br label %589

567:                                              ; preds = %505
  %568 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %569 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %568, i32 0, i32 3
  %570 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %571 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %570, i32 0, i32 2
  %572 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %569, i32 0, i32 0
  %573 = load i64, i64* %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %571, i32 0, i32 0
  %575 = load i64, i64* %574, align 8
  %576 = call i8* @dfixed_mul(i64 %573, i64 %575)
  %577 = ptrtoint i8* %576 to i64
  %578 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %577, i64* %578, align 8
  %579 = call i8* @dfixed_const(i32 16000)
  %580 = ptrtoint i8* %579 to i64
  %581 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 %580, i64* %581, align 8
  %582 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %583 = load i64, i64* %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %585 = load i64, i64* %584, align 8
  %586 = call i8* @dfixed_div(i64 %583, i64 %585)
  %587 = ptrtoint i8* %586 to i64
  %588 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 %587, i64* %588, align 8
  br label %589

589:                                              ; preds = %567, %522
  %590 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %591 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %590, i32 0, i32 1
  %592 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %591, i32 0, i32 0
  %593 = load i64, i64* %592, align 8
  %594 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %595 = load i64, i64* %594, align 8
  %596 = icmp sgt i64 %593, %595
  br i1 %596, label %597, label %603

597:                                              ; preds = %589
  %598 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %599 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %599, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 %601, i64* %602, align 8
  br label %603

603:                                              ; preds = %597, %589
  %604 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %605 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %605, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %609 = load i64, i64* %608, align 8
  %610 = icmp sgt i64 %607, %609
  br i1 %610, label %611, label %617

611:                                              ; preds = %603
  %612 = load %struct.rs690_watermark*, %struct.rs690_watermark** %10, align 8
  %613 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %613, i32 0, i32 0
  %615 = load i64, i64* %614, align 8
  %616 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 %615, i64* %616, align 8
  br label %617

617:                                              ; preds = %611, %603
  %618 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %619 = load i64, i64* %618, align 8
  %620 = call i32 @dfixed_trunc(i64 %619)
  %621 = load i32*, i32** %14, align 8
  store i32 %620, i32* %621, align 4
  %622 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %623 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 4
  %625 = icmp eq i32 %624, 2
  br i1 %625, label %626, label %631

626:                                              ; preds = %617
  %627 = call i32 @S_006D48_D2MODE_PRIORITY_A_ALWAYS_ON(i32 1)
  %628 = load i32*, i32** %14, align 8
  %629 = load i32, i32* %628, align 4
  %630 = or i32 %629, %627
  store i32 %630, i32* %628, align 4
  br label %631

631:                                              ; preds = %626, %617
  br label %632

632:                                              ; preds = %631, %477
  br label %633

633:                                              ; preds = %632, %476
  br label %634

634:                                              ; preds = %633, %321
  ret void
}

declare dso_local i32 @S_006548_D1MODE_PRIORITY_A_OFF(i32) #1

declare dso_local i32 @dfixed_trunc(i64) #1

declare dso_local i8* @dfixed_mul(i64, i64) #1

declare dso_local i8* @dfixed_div(i64, i64) #1

declare dso_local i8* @dfixed_const(i32) #1

declare dso_local i32 @S_006548_D1MODE_PRIORITY_A_ALWAYS_ON(i32) #1

declare dso_local i32 @S_006D48_D2MODE_PRIORITY_A_ALWAYS_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
