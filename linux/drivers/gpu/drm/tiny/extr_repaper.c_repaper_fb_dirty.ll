; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_fb_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_fb_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_gem_cma_object = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dma_buf_attachment* }
%struct.dma_buf_attachment = type { i32 }
%struct.repaper_epd = type { i32, i32, i64*, i64, i32, i32 }
%struct.drm_rect = type { i32, i32, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Flushing [FB:%d] st=%ums\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@REPAPER_NORMAL = common dso_local global i32 0, align 4
@REPAPER_COMPENSATE = common dso_local global i32 0, align 4
@REPAPER_WHITE = common dso_local global i32 0, align 4
@REPAPER_INVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*)* @repaper_fb_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @repaper_fb_dirty(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_framebuffer*, align 8
  %4 = alloca %struct.drm_gem_cma_object*, align 8
  %5 = alloca %struct.dma_buf_attachment*, align 8
  %6 = alloca %struct.repaper_epd*, align 8
  %7 = alloca %struct.drm_rect, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %3, align 8
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %13 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %12, i32 0)
  store %struct.drm_gem_cma_object* %13, %struct.drm_gem_cma_object** %4, align 8
  %14 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %4, align 8
  %15 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %16, align 8
  store %struct.dma_buf_attachment* %17, %struct.dma_buf_attachment** %5, align 8
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %19 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.repaper_epd* @drm_to_epd(i32 %20)
  store %struct.repaper_epd* %21, %struct.repaper_epd** %6, align 8
  store i32 0, i32* %9, align 4
  store i64* null, i64** %10, align 8
  %22 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %23 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %247

27:                                               ; preds = %1
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %29 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @drm_dev_enter(i32 %30, i32* %8)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %247

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %7, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %39 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %7, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %7, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %44 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %7, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %48 = call i32 @repaper_get_temperature(%struct.repaper_epd* %47)
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %50 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %54 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %58 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %61 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i64* @kmalloc_array(i32 %59, i32 %62, i32 %63)
  store i64* %64, i64** %10, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = icmp ne i64* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %36
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %243

70:                                               ; preds = %36
  %71 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %72 = icmp ne %struct.dma_buf_attachment* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %75 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %78 = call i32 @dma_buf_begin_cpu_access(i32 %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %240

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %70
  %84 = load i64*, i64** %10, align 8
  %85 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %4, align 8
  %86 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %89 = call i32 @drm_fb_xrgb8888_to_gray8(i64* %84, i32 %87, %struct.drm_framebuffer* %88, %struct.drm_rect* %7)
  %90 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %91 = icmp ne %struct.dma_buf_attachment* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %83
  %93 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %94 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %97 = call i32 @dma_buf_end_cpu_access(i32 %95, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %240

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %83
  %103 = load i64*, i64** %10, align 8
  %104 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %105 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %108 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @repaper_gray8_to_mono_reversed(i64* %103, i32 %106, i32 %109)
  %111 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %112 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %102
  %116 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %117 = load i64*, i64** %10, align 8
  %118 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %119 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %118, i32 0, i32 2
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* @REPAPER_NORMAL, align 4
  %122 = call i32 @repaper_frame_data_repeat(%struct.repaper_epd* %116, i64* %117, i64* %120, i32 %121)
  br label %183

123:                                              ; preds = %102
  %124 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %125 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %123
  %129 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %130 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %131 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %130, i32 0, i32 2
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* @REPAPER_COMPENSATE, align 4
  %134 = call i32 @repaper_frame_data_repeat(%struct.repaper_epd* %129, i64* %132, i64* null, i32 %133)
  %135 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %136 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %137 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %136, i32 0, i32 2
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* @REPAPER_WHITE, align 4
  %140 = call i32 @repaper_frame_data_repeat(%struct.repaper_epd* %135, i64* %138, i64* null, i32 %139)
  %141 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %142 = load i64*, i64** %10, align 8
  %143 = load i32, i32* @REPAPER_INVERSE, align 4
  %144 = call i32 @repaper_frame_data_repeat(%struct.repaper_epd* %141, i64* %142, i64* null, i32 %143)
  %145 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %146 = load i64*, i64** %10, align 8
  %147 = load i32, i32* @REPAPER_NORMAL, align 4
  %148 = call i32 @repaper_frame_data_repeat(%struct.repaper_epd* %145, i64* %146, i64* null, i32 %147)
  %149 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %150 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  br label %182

151:                                              ; preds = %123
  %152 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %153 = load i32, i32* @REPAPER_COMPENSATE, align 4
  %154 = call i32 @repaper_frame_fixed_repeat(%struct.repaper_epd* %152, i32 255, i32 %153)
  %155 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %156 = load i32, i32* @REPAPER_WHITE, align 4
  %157 = call i32 @repaper_frame_fixed_repeat(%struct.repaper_epd* %155, i32 255, i32 %156)
  %158 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %159 = load i32, i32* @REPAPER_INVERSE, align 4
  %160 = call i32 @repaper_frame_fixed_repeat(%struct.repaper_epd* %158, i32 170, i32 %159)
  %161 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %162 = load i32, i32* @REPAPER_NORMAL, align 4
  %163 = call i32 @repaper_frame_fixed_repeat(%struct.repaper_epd* %161, i32 170, i32 %162)
  %164 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %165 = load i32, i32* @REPAPER_COMPENSATE, align 4
  %166 = call i32 @repaper_frame_fixed_repeat(%struct.repaper_epd* %164, i32 170, i32 %165)
  %167 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %168 = load i32, i32* @REPAPER_WHITE, align 4
  %169 = call i32 @repaper_frame_fixed_repeat(%struct.repaper_epd* %167, i32 170, i32 %168)
  %170 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %171 = load i64*, i64** %10, align 8
  %172 = load i32, i32* @REPAPER_INVERSE, align 4
  %173 = call i32 @repaper_frame_data_repeat(%struct.repaper_epd* %170, i64* %171, i64* null, i32 %172)
  %174 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %175 = load i64*, i64** %10, align 8
  %176 = load i32, i32* @REPAPER_NORMAL, align 4
  %177 = call i32 @repaper_frame_data_repeat(%struct.repaper_epd* %174, i64* %175, i64* null, i32 %176)
  %178 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %179 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %178, i32 0, i32 1
  store i32 1, i32* %179, align 4
  %180 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %181 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  br label %182

182:                                              ; preds = %151, %128
  br label %183

183:                                              ; preds = %182, %115
  %184 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %185 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %184, i32 0, i32 2
  %186 = load i64*, i64** %185, align 8
  %187 = load i64*, i64** %10, align 8
  %188 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %189 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %192 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 %190, %193
  %195 = sdiv i32 %194, 8
  %196 = call i32 @memcpy(i64* %186, i64* %187, i32 %195)
  %197 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %198 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %239

201:                                              ; preds = %183
  store i32 0, i32* %11, align 4
  br label %202

202:                                              ; preds = %235, %201
  %203 = load i32, i32* %11, align 4
  %204 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %205 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = sdiv i32 %206, 8
  %208 = icmp ult i32 %203, %207
  br i1 %208, label %209, label %238

209:                                              ; preds = %202
  %210 = load i64*, i64** %10, align 8
  %211 = load i32, i32* %11, align 4
  %212 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %213 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %216 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %217, 1
  %219 = mul nsw i32 %214, %218
  %220 = sdiv i32 %219, 8
  %221 = add i32 %211, %220
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %210, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %209
  %227 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %228 = load i64*, i64** %10, align 8
  %229 = load %struct.repaper_epd*, %struct.repaper_epd** %6, align 8
  %230 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %229, i32 0, i32 2
  %231 = load i64*, i64** %230, align 8
  %232 = load i32, i32* @REPAPER_NORMAL, align 4
  %233 = call i32 @repaper_frame_data_repeat(%struct.repaper_epd* %227, i64* %228, i64* %231, i32 %232)
  br label %238

234:                                              ; preds = %209
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %11, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %11, align 4
  br label %202

238:                                              ; preds = %226, %202
  br label %239

239:                                              ; preds = %238, %183
  br label %240

240:                                              ; preds = %239, %100, %81
  %241 = load i64*, i64** %10, align 8
  %242 = call i32 @kfree(i64* %241)
  br label %243

243:                                              ; preds = %240, %67
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @drm_dev_exit(i32 %244)
  %246 = load i32, i32* %9, align 4
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %243, %33, %26
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local %struct.repaper_epd* @drm_to_epd(i32) #1

declare dso_local i32 @drm_dev_enter(i32, i32*) #1

declare dso_local i32 @repaper_get_temperature(%struct.repaper_epd*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i64* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @dma_buf_begin_cpu_access(i32, i32) #1

declare dso_local i32 @drm_fb_xrgb8888_to_gray8(i64*, i32, %struct.drm_framebuffer*, %struct.drm_rect*) #1

declare dso_local i32 @dma_buf_end_cpu_access(i32, i32) #1

declare dso_local i32 @repaper_gray8_to_mono_reversed(i64*, i32, i32) #1

declare dso_local i32 @repaper_frame_data_repeat(%struct.repaper_epd*, i64*, i64*, i32) #1

declare dso_local i32 @repaper_frame_fixed_repeat(%struct.repaper_epd*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @drm_dev_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
