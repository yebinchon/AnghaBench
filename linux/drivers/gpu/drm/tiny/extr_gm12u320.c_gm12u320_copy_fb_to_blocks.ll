; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_copy_fb_to_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_copy_fb_to_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gm12u320_device = type { %struct.TYPE_8__, i64* }
%struct.TYPE_8__ = type { i32, %struct.drm_framebuffer*, %struct.TYPE_6__ }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to vmap fb: %ld\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"dma_buf_begin_cpu_access err: %d\0A\00", align 1
@GM12U320_REAL_WIDTH = common dso_local global i32 0, align 4
@GM12U320_USER_WIDTH = common dso_local global i32 0, align 4
@DATA_BLOCK_CONTENT_SIZE = common dso_local global i32 0, align 4
@DATA_BLOCK_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"dma_buf_end_cpu_access err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gm12u320_device*)* @gm12u320_copy_fb_to_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm12u320_copy_fb_to_blocks(%struct.gm12u320_device* %0) #0 {
  %2 = alloca %struct.gm12u320_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store %struct.gm12u320_device* %0, %struct.gm12u320_device** %2, align 8
  %15 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %16 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %20 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %21, align 8
  %23 = icmp ne %struct.drm_framebuffer* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %250

25:                                               ; preds = %1
  %26 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %27 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %28, align 8
  store %struct.drm_framebuffer* %29, %struct.drm_framebuffer** %12, align 8
  %30 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %31 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %36 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %41 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %10, align 4
  %45 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %46 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %51 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %52, i64 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = call i8* @drm_gem_shmem_vmap(%struct.TYPE_9__* %54)
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %25
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @PTR_ERR(i8* %60)
  %62 = call i32 @GM12U320_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %244

63:                                               ; preds = %25
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %65 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %66, i64 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = icmp ne %struct.TYPE_7__* %70, null
  br i1 %71, label %72, label %90

72:                                               ; preds = %63
  %73 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %74 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %73, i32 0, i32 1
  %75 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %75, i64 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %83 = call i32 @dma_buf_begin_cpu_access(i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %72
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @GM12U320_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %236

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89, %63
  %91 = load i8*, i8** %13, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %94 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %92, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr i8, i8* %91, i64 %99
  %101 = load i32, i32* %8, align 4
  %102 = mul nsw i32 %101, 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr i8, i8* %100, i64 %103
  %105 = bitcast i8* %104 to i32*
  store i32* %105, i32** %14, align 8
  %106 = load i32, i32* @GM12U320_REAL_WIDTH, align 4
  %107 = load i32, i32* @GM12U320_USER_WIDTH, align 4
  %108 = sub nsw i32 %106, %107
  %109 = sdiv i32 %108, 2
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* @GM12U320_REAL_WIDTH, align 4
  %113 = load i32, i32* @GM12U320_USER_WIDTH, align 4
  %114 = sub nsw i32 %112, %113
  %115 = sdiv i32 %114, 2
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %205, %90
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %208

122:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %8, align 4
  %125 = sub nsw i32 %123, %124
  %126 = mul nsw i32 %125, 3
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @GM12U320_REAL_WIDTH, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %129, %130
  %132 = mul nsw i32 %131, 3
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @DATA_BLOCK_CONTENT_SIZE, align 4
  %135 = sdiv i32 %133, %134
  store i32 %135, i32* %3, align 4
  %136 = load i32, i32* @DATA_BLOCK_CONTENT_SIZE, align 4
  %137 = load i32, i32* %4, align 4
  %138 = srem i32 %137, %136
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* @DATA_BLOCK_CONTENT_SIZE, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %122
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* @DATA_BLOCK_CONTENT_SIZE, align 4
  %149 = sub nsw i32 %147, %148
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* @DATA_BLOCK_CONTENT_SIZE, align 4
  %151 = load i32, i32* %4, align 4
  %152 = sub nsw i32 %150, %151
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %144, %122
  %154 = load i32, i32* @DATA_BLOCK_HEADER_SIZE, align 4
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* %5, align 4
  %158 = sdiv i32 %157, 3
  store i32 %158, i32* %5, align 4
  %159 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %160 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %165, %167
  %169 = load i32*, i32** %14, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @gm12u320_32bpp_to_24bpp_packed(i64 %168, i32* %169, i32 %170)
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %196

174:                                              ; preds = %153
  %175 = load i32, i32* %3, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %3, align 4
  %177 = load i32, i32* @DATA_BLOCK_HEADER_SIZE, align 4
  store i32 %177, i32* %4, align 4
  %178 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %179 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %178, i32 0, i32 1
  %180 = load i64*, i64** %179, align 8
  %181 = load i32, i32* %3, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %184, %186
  %188 = load i32*, i32** %14, align 8
  %189 = load i32, i32* %5, align 4
  %190 = mul nsw i32 %189, 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = load i32, i32* %6, align 4
  %194 = sdiv i32 %193, 3
  %195 = call i32 @gm12u320_32bpp_to_24bpp_packed(i64 %187, i32* %192, i32 %194)
  br label %196

196:                                              ; preds = %174, %153
  %197 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %198 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %14, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32* %204, i32** %14, align 8
  br label %205

205:                                              ; preds = %196
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  br label %118

208:                                              ; preds = %118
  %209 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %210 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %209, i32 0, i32 1
  %211 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %211, i64 0
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = icmp ne %struct.TYPE_7__* %215, null
  br i1 %216, label %217, label %235

217:                                              ; preds = %208
  %218 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %219 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %218, i32 0, i32 1
  %220 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %220, i64 0
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %228 = call i32 @dma_buf_end_cpu_access(i32 %226, i32 %227)
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* %7, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %217
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @GM12U320_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %231, %217
  br label %235

235:                                              ; preds = %234, %208
  br label %236

236:                                              ; preds = %235, %86
  %237 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %238 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %237, i32 0, i32 1
  %239 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %239, i64 0
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = load i8*, i8** %13, align 8
  %243 = call i32 @drm_gem_shmem_vunmap(%struct.TYPE_9__* %241, i8* %242)
  br label %244

244:                                              ; preds = %236, %59
  %245 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %246 = call i32 @drm_framebuffer_put(%struct.drm_framebuffer* %245)
  %247 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %248 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %249, align 8
  br label %250

250:                                              ; preds = %244, %24
  %251 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %252 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = call i32 @mutex_unlock(i32* %253)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @drm_gem_shmem_vmap(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @GM12U320_ERR(i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dma_buf_begin_cpu_access(i32, i32) #1

declare dso_local i32 @gm12u320_32bpp_to_24bpp_packed(i64, i32*, i32) #1

declare dso_local i32 @dma_buf_end_cpu_access(i32, i32) #1

declare dso_local i32 @drm_gem_shmem_vunmap(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @drm_framebuffer_put(%struct.drm_framebuffer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
