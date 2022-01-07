; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_test.c_radeon_do_test_moves.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_test.c_radeon_do_test_moves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.radeon_bo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.radeon_fence = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Unknown copy method\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to allocate %d pointers\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to create VRAM object\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to pin VRAM object\0A\00", align 1
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to create GTT object %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to pin GTT object %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to map GTT object %d\0A\00", align 1
@R600_RING_TYPE_DMA_INDEX = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed GTT->VRAM copy %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to wait for GTT->VRAM fence %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Failed to map VRAM object after copy %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [90 x i8] c"Incorrect GTT->VRAM copy %d: Got 0x%p, expected 0x%p (GTT/VRAM offset 0x%16llx/0x%16llx)\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Failed VRAM->GTT copy %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Failed to wait for VRAM->GTT fence %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Failed to map GTT object after copy %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [90 x i8] c"Incorrect VRAM->GTT copy %d: Got 0x%p, expected 0x%p (VRAM/GTT offset 0x%16llx/0x%16llx)\0A\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"Tested GTT->VRAM and VRAM->GTT copy for GTT offset 0x%llx\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Error while testing BO move\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @radeon_do_test_moves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_do_test_moves(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_bo*, align 8
  %6 = alloca %struct.radeon_bo**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca %struct.radeon_fence*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.radeon_bo* null, %struct.radeon_bo** %5, align 8
  store %struct.radeon_bo** null, %struct.radeon_bo*** %6, align 8
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %28 [
    i32 128, label %22
    i32 129, label %25
  ]

22:                                               ; preds = %2
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = call i32 @radeon_copy_dma_ring_index(%struct.radeon_device* %23)
  store i32 %24, i32* %13, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = call i32 @radeon_copy_blit_ring_index(%struct.radeon_device* %26)
  store i32 %27, i32* %13, align 4
  br label %30

28:                                               ; preds = %2
  %29 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %508

30:                                               ; preds = %25, %22
  store i32 1048576, i32* %10, align 4
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 %34, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = udiv i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.radeon_bo** @kcalloc(i32 %42, i32 8, i32 %43)
  store %struct.radeon_bo** %44, %struct.radeon_bo*** %6, align 8
  %45 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %46 = icmp ne %struct.radeon_bo** %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 1, i32* %12, align 4
  br label %501

50:                                               ; preds = %30
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %55 = call i32 @radeon_bo_create(%struct.radeon_device* %51, i32 %52, i32 %53, i32 1, i32 %54, i32 0, i32* null, i32* null, %struct.radeon_bo** %5)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %501

60:                                               ; preds = %50
  %61 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %62 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %61, i32 0)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %499

69:                                               ; preds = %60
  %70 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %71 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %72 = call i32 @radeon_bo_pin(%struct.radeon_bo* %70, i32 %71, i32* %8)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %496

77:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %490, %77
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %493

82:                                               ; preds = %78
  store %struct.radeon_fence* null, %struct.radeon_fence** %20, align 8
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @PAGE_SIZE, align 4
  %86 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %87 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %87, i64 %89
  %91 = call i32 @radeon_bo_create(%struct.radeon_device* %83, i32 %84, i32 %85, i32 1, i32 %86, i32 0, i32* null, i32* null, %struct.radeon_bo** %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load i32, i32* %11, align 4
  %96 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %453

97:                                               ; preds = %82
  %98 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %98, i64 %100
  %102 = load %struct.radeon_bo*, %struct.radeon_bo** %101, align 8
  %103 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %102, i32 0)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  br label %447

110:                                              ; preds = %97
  %111 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %111, i64 %113
  %115 = load %struct.radeon_bo*, %struct.radeon_bo** %114, align 8
  %116 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %117 = call i32 @radeon_bo_pin(%struct.radeon_bo* %115, i32 %116, i32* %7)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load i32, i32* %11, align 4
  %122 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  br label %440

123:                                              ; preds = %110
  %124 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %124, i64 %126
  %128 = load %struct.radeon_bo*, %struct.radeon_bo** %127, align 8
  %129 = call i32 @radeon_bo_kmap(%struct.radeon_bo* %128, i8** %14)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load i32, i32* %11, align 4
  %134 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  br label %433

135:                                              ; preds = %123
  %136 = load i8*, i8** %14, align 8
  %137 = bitcast i8* %136 to i8**
  store i8** %137, i8*** %16, align 8
  %138 = load i8*, i8** %14, align 8
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr i8, i8* %138, i64 %140
  %142 = bitcast i8* %141 to i8**
  store i8** %142, i8*** %17, align 8
  br label %143

143:                                              ; preds = %151, %135
  %144 = load i8**, i8*** %16, align 8
  %145 = load i8**, i8*** %17, align 8
  %146 = icmp ult i8** %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load i8**, i8*** %16, align 8
  %149 = bitcast i8** %148 to i8*
  %150 = load i8**, i8*** %16, align 8
  store i8* %149, i8** %150, align 8
  br label %151

151:                                              ; preds = %147
  %152 = load i8**, i8*** %16, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i32 1
  store i8** %153, i8*** %16, align 8
  br label %143

154:                                              ; preds = %143
  %155 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %155, i64 %157
  %159 = load %struct.radeon_bo*, %struct.radeon_bo** %158, align 8
  %160 = call i32 @radeon_bo_kunmap(%struct.radeon_bo* %159)
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @R600_RING_TYPE_DMA_INDEX, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %154
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %170 = udiv i32 %168, %169
  %171 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %172 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call %struct.radeon_fence* @radeon_copy_dma(%struct.radeon_device* %165, i32 %166, i32 %167, i32 %170, i32 %175)
  store %struct.radeon_fence* %176, %struct.radeon_fence** %20, align 8
  br label %190

177:                                              ; preds = %154
  %178 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %183 = udiv i32 %181, %182
  %184 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %185 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call %struct.radeon_fence* @radeon_copy_blit(%struct.radeon_device* %178, i32 %179, i32 %180, i32 %183, i32 %188)
  store %struct.radeon_fence* %189, %struct.radeon_fence** %20, align 8
  br label %190

190:                                              ; preds = %177, %164
  %191 = load %struct.radeon_fence*, %struct.radeon_fence** %20, align 8
  %192 = call i64 @IS_ERR(%struct.radeon_fence* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = load i32, i32* %11, align 4
  %196 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %195)
  %197 = load %struct.radeon_fence*, %struct.radeon_fence** %20, align 8
  %198 = call i32 @PTR_ERR(%struct.radeon_fence* %197)
  store i32 %198, i32* %12, align 4
  br label %433

199:                                              ; preds = %190
  %200 = load %struct.radeon_fence*, %struct.radeon_fence** %20, align 8
  %201 = call i32 @radeon_fence_wait(%struct.radeon_fence* %200, i32 0)
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i32, i32* %11, align 4
  %206 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %205)
  br label %433

207:                                              ; preds = %199
  %208 = call i32 @radeon_fence_unref(%struct.radeon_fence** %20)
  %209 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %210 = call i32 @radeon_bo_kmap(%struct.radeon_bo* %209, i8** %15)
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load i32, i32* %11, align 4
  %215 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %214)
  br label %433

216:                                              ; preds = %207
  %217 = load i8*, i8** %14, align 8
  %218 = bitcast i8* %217 to i8**
  store i8** %218, i8*** %16, align 8
  %219 = load i8*, i8** %14, align 8
  %220 = load i32, i32* %10, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr i8, i8* %219, i64 %221
  %223 = bitcast i8* %222 to i8**
  store i8** %223, i8*** %17, align 8
  %224 = load i8*, i8** %15, align 8
  %225 = bitcast i8* %224 to i8**
  store i8** %225, i8*** %18, align 8
  %226 = load i8*, i8** %15, align 8
  %227 = load i32, i32* %10, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr i8, i8* %226, i64 %228
  %230 = bitcast i8* %229 to i8**
  store i8** %230, i8*** %19, align 8
  br label %231

231:                                              ; preds = %281, %216
  %232 = load i8**, i8*** %18, align 8
  %233 = load i8**, i8*** %19, align 8
  %234 = icmp ult i8** %232, %233
  br i1 %234, label %235, label %286

235:                                              ; preds = %231
  %236 = load i8**, i8*** %18, align 8
  %237 = load i8*, i8** %236, align 8
  %238 = load i8**, i8*** %16, align 8
  %239 = bitcast i8** %238 to i8*
  %240 = icmp ne i8* %237, %239
  br i1 %240, label %241, label %277

241:                                              ; preds = %235
  %242 = load i32, i32* %11, align 4
  %243 = load i8**, i8*** %18, align 8
  %244 = load i8*, i8** %243, align 8
  %245 = load i8**, i8*** %16, align 8
  %246 = load i32, i32* %7, align 4
  %247 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %248 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = sub nsw i32 %246, %250
  %252 = load i8**, i8*** %16, align 8
  %253 = bitcast i8** %252 to i8*
  %254 = sext i32 %251 to i64
  %255 = getelementptr i8, i8* %253, i64 %254
  %256 = load i8*, i8** %14, align 8
  %257 = ptrtoint i8* %255 to i64
  %258 = ptrtoint i8* %256 to i64
  %259 = sub i64 %257, %258
  %260 = load i32, i32* %8, align 4
  %261 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %262 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 %260, %264
  %266 = load i8**, i8*** %16, align 8
  %267 = bitcast i8** %266 to i8*
  %268 = sext i32 %265 to i64
  %269 = getelementptr i8, i8* %267, i64 %268
  %270 = load i8*, i8** %14, align 8
  %271 = ptrtoint i8* %269 to i64
  %272 = ptrtoint i8* %270 to i64
  %273 = sub i64 %271, %272
  %274 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.10, i64 0, i64 0), i32 %242, i8* %244, i8** %245, i64 %259, i64 %273)
  %275 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %276 = call i32 @radeon_bo_kunmap(%struct.radeon_bo* %275)
  br label %433

277:                                              ; preds = %235
  %278 = load i8**, i8*** %18, align 8
  %279 = bitcast i8** %278 to i8*
  %280 = load i8**, i8*** %18, align 8
  store i8* %279, i8** %280, align 8
  br label %281

281:                                              ; preds = %277
  %282 = load i8**, i8*** %16, align 8
  %283 = getelementptr inbounds i8*, i8** %282, i32 1
  store i8** %283, i8*** %16, align 8
  %284 = load i8**, i8*** %18, align 8
  %285 = getelementptr inbounds i8*, i8** %284, i32 1
  store i8** %285, i8*** %18, align 8
  br label %231

286:                                              ; preds = %231
  %287 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %288 = call i32 @radeon_bo_kunmap(%struct.radeon_bo* %287)
  %289 = load i32, i32* %13, align 4
  %290 = load i32, i32* @R600_RING_TYPE_DMA_INDEX, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %305

292:                                              ; preds = %286
  %293 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %298 = udiv i32 %296, %297
  %299 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %300 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call %struct.radeon_fence* @radeon_copy_dma(%struct.radeon_device* %293, i32 %294, i32 %295, i32 %298, i32 %303)
  store %struct.radeon_fence* %304, %struct.radeon_fence** %20, align 8
  br label %318

305:                                              ; preds = %286
  %306 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %307 = load i32, i32* %8, align 4
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %311 = udiv i32 %309, %310
  %312 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %313 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call %struct.radeon_fence* @radeon_copy_blit(%struct.radeon_device* %306, i32 %307, i32 %308, i32 %311, i32 %316)
  store %struct.radeon_fence* %317, %struct.radeon_fence** %20, align 8
  br label %318

318:                                              ; preds = %305, %292
  %319 = load %struct.radeon_fence*, %struct.radeon_fence** %20, align 8
  %320 = call i64 @IS_ERR(%struct.radeon_fence* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %318
  %323 = load i32, i32* %11, align 4
  %324 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %323)
  %325 = load %struct.radeon_fence*, %struct.radeon_fence** %20, align 8
  %326 = call i32 @PTR_ERR(%struct.radeon_fence* %325)
  store i32 %326, i32* %12, align 4
  br label %433

327:                                              ; preds = %318
  %328 = load %struct.radeon_fence*, %struct.radeon_fence** %20, align 8
  %329 = call i32 @radeon_fence_wait(%struct.radeon_fence* %328, i32 0)
  store i32 %329, i32* %12, align 4
  %330 = load i32, i32* %12, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %327
  %333 = load i32, i32* %11, align 4
  %334 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %333)
  br label %433

335:                                              ; preds = %327
  %336 = call i32 @radeon_fence_unref(%struct.radeon_fence** %20)
  %337 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %337, i64 %339
  %341 = load %struct.radeon_bo*, %struct.radeon_bo** %340, align 8
  %342 = call i32 @radeon_bo_kmap(%struct.radeon_bo* %341, i8** %14)
  store i32 %342, i32* %12, align 4
  %343 = load i32, i32* %12, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %335
  %346 = load i32, i32* %11, align 4
  %347 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %346)
  br label %433

348:                                              ; preds = %335
  %349 = load i8*, i8** %14, align 8
  %350 = bitcast i8* %349 to i8**
  store i8** %350, i8*** %16, align 8
  %351 = load i8*, i8** %14, align 8
  %352 = load i32, i32* %10, align 4
  %353 = zext i32 %352 to i64
  %354 = getelementptr i8, i8* %351, i64 %353
  %355 = bitcast i8* %354 to i8**
  store i8** %355, i8*** %17, align 8
  %356 = load i8*, i8** %15, align 8
  %357 = bitcast i8* %356 to i8**
  store i8** %357, i8*** %18, align 8
  %358 = load i8*, i8** %15, align 8
  %359 = load i32, i32* %10, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr i8, i8* %358, i64 %360
  %362 = bitcast i8* %361 to i8**
  store i8** %362, i8*** %19, align 8
  br label %363

363:                                              ; preds = %414, %348
  %364 = load i8**, i8*** %16, align 8
  %365 = load i8**, i8*** %17, align 8
  %366 = icmp ult i8** %364, %365
  br i1 %366, label %367, label %419

367:                                              ; preds = %363
  %368 = load i8**, i8*** %16, align 8
  %369 = load i8*, i8** %368, align 8
  %370 = load i8**, i8*** %18, align 8
  %371 = bitcast i8** %370 to i8*
  %372 = icmp ne i8* %369, %371
  br i1 %372, label %373, label %413

373:                                              ; preds = %367
  %374 = load i32, i32* %11, align 4
  %375 = load i8**, i8*** %16, align 8
  %376 = load i8*, i8** %375, align 8
  %377 = load i8**, i8*** %18, align 8
  %378 = load i32, i32* %8, align 4
  %379 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %380 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 4
  %383 = sub nsw i32 %378, %382
  %384 = load i8**, i8*** %18, align 8
  %385 = bitcast i8** %384 to i8*
  %386 = sext i32 %383 to i64
  %387 = getelementptr i8, i8* %385, i64 %386
  %388 = load i8*, i8** %15, align 8
  %389 = ptrtoint i8* %387 to i64
  %390 = ptrtoint i8* %388 to i64
  %391 = sub i64 %389, %390
  %392 = load i32, i32* %7, align 4
  %393 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %394 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = sub nsw i32 %392, %396
  %398 = load i8**, i8*** %18, align 8
  %399 = bitcast i8** %398 to i8*
  %400 = sext i32 %397 to i64
  %401 = getelementptr i8, i8* %399, i64 %400
  %402 = load i8*, i8** %15, align 8
  %403 = ptrtoint i8* %401 to i64
  %404 = ptrtoint i8* %402 to i64
  %405 = sub i64 %403, %404
  %406 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.14, i64 0, i64 0), i32 %374, i8* %376, i8** %377, i64 %391, i64 %405)
  %407 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %408 = load i32, i32* %11, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %407, i64 %409
  %411 = load %struct.radeon_bo*, %struct.radeon_bo** %410, align 8
  %412 = call i32 @radeon_bo_kunmap(%struct.radeon_bo* %411)
  br label %433

413:                                              ; preds = %367
  br label %414

414:                                              ; preds = %413
  %415 = load i8**, i8*** %16, align 8
  %416 = getelementptr inbounds i8*, i8** %415, i32 1
  store i8** %416, i8*** %16, align 8
  %417 = load i8**, i8*** %18, align 8
  %418 = getelementptr inbounds i8*, i8** %417, i32 1
  store i8** %418, i8*** %18, align 8
  br label %363

419:                                              ; preds = %363
  %420 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %421 = load i32, i32* %11, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %420, i64 %422
  %424 = load %struct.radeon_bo*, %struct.radeon_bo** %423, align 8
  %425 = call i32 @radeon_bo_kunmap(%struct.radeon_bo* %424)
  %426 = load i32, i32* %7, align 4
  %427 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %428 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = sub nsw i32 %426, %430
  %432 = call i32 @DRM_INFO(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0), i32 %431)
  br label %490

433:                                              ; preds = %373, %345, %332, %322, %241, %213, %204, %194, %132
  %434 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %435 = load i32, i32* %11, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %434, i64 %436
  %438 = load %struct.radeon_bo*, %struct.radeon_bo** %437, align 8
  %439 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %438)
  br label %440

440:                                              ; preds = %433, %120
  %441 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %442 = load i32, i32* %11, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %441, i64 %443
  %445 = load %struct.radeon_bo*, %struct.radeon_bo** %444, align 8
  %446 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %445)
  br label %447

447:                                              ; preds = %440, %109
  %448 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %449 = load i32, i32* %11, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %448, i64 %450
  %452 = call i32 @radeon_bo_unref(%struct.radeon_bo** %451)
  br label %453

453:                                              ; preds = %447, %94
  %454 = load i32, i32* %11, align 4
  %455 = add nsw i32 %454, -1
  store i32 %455, i32* %11, align 4
  br label %456

456:                                              ; preds = %477, %453
  %457 = load i32, i32* %11, align 4
  %458 = icmp sge i32 %457, 0
  br i1 %458, label %459, label %480

459:                                              ; preds = %456
  %460 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %461 = load i32, i32* %11, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %460, i64 %462
  %464 = load %struct.radeon_bo*, %struct.radeon_bo** %463, align 8
  %465 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %464)
  %466 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %467 = load i32, i32* %11, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %466, i64 %468
  %470 = load %struct.radeon_bo*, %struct.radeon_bo** %469, align 8
  %471 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %470)
  %472 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %473 = load i32, i32* %11, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.radeon_bo*, %struct.radeon_bo** %472, i64 %474
  %476 = call i32 @radeon_bo_unref(%struct.radeon_bo** %475)
  br label %477

477:                                              ; preds = %459
  %478 = load i32, i32* %11, align 4
  %479 = add nsw i32 %478, -1
  store i32 %479, i32* %11, align 4
  br label %456

480:                                              ; preds = %456
  %481 = load %struct.radeon_fence*, %struct.radeon_fence** %20, align 8
  %482 = icmp ne %struct.radeon_fence* %481, null
  br i1 %482, label %483, label %489

483:                                              ; preds = %480
  %484 = load %struct.radeon_fence*, %struct.radeon_fence** %20, align 8
  %485 = call i64 @IS_ERR(%struct.radeon_fence* %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %489, label %487

487:                                              ; preds = %483
  %488 = call i32 @radeon_fence_unref(%struct.radeon_fence** %20)
  br label %489

489:                                              ; preds = %487, %483, %480
  br label %493

490:                                              ; preds = %419
  %491 = load i32, i32* %11, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %11, align 4
  br label %78

493:                                              ; preds = %489, %78
  %494 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %495 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %494)
  br label %496

496:                                              ; preds = %493, %75
  %497 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %498 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %497)
  br label %499

499:                                              ; preds = %496, %68
  %500 = call i32 @radeon_bo_unref(%struct.radeon_bo** %5)
  br label %501

501:                                              ; preds = %499, %58, %47
  %502 = load %struct.radeon_bo**, %struct.radeon_bo*** %6, align 8
  %503 = call i32 @kfree(%struct.radeon_bo** %502)
  %504 = load i32, i32* %12, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %508

506:                                              ; preds = %501
  %507 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  br label %508

508:                                              ; preds = %28, %506, %501
  ret void
}

declare dso_local i32 @radeon_copy_dma_ring_index(%struct.radeon_device*) #1

declare dso_local i32 @radeon_copy_blit_ring_index(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.radeon_bo** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32, i32*, i32*, %struct.radeon_bo**) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_pin(%struct.radeon_bo*, i32, i32*) #1

declare dso_local i32 @radeon_bo_kmap(%struct.radeon_bo*, i8**) #1

declare dso_local i32 @radeon_bo_kunmap(%struct.radeon_bo*) #1

declare dso_local %struct.radeon_fence* @radeon_copy_dma(%struct.radeon_device*, i32, i32, i32, i32) #1

declare dso_local %struct.radeon_fence* @radeon_copy_blit(%struct.radeon_device*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.radeon_fence*) #1

declare dso_local i32 @PTR_ERR(%struct.radeon_fence*) #1

declare dso_local i32 @radeon_fence_wait(%struct.radeon_fence*, i32) #1

declare dso_local i32 @radeon_fence_unref(%struct.radeon_fence**) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @radeon_bo_unpin(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_unref(%struct.radeon_bo**) #1

declare dso_local i32 @kfree(%struct.radeon_bo**) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
