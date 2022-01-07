; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_test.c_amdgpu_do_test_moves.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_test.c_amdgpu_do_test_moves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__**, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_bo = type { i32 }
%struct.amdgpu_bo_param = type { i32, i8*, i32*, i32, i64, i32 }
%struct.dma_fence = type { i32 }

@AMDGPU_IB_POOL_SIZE = common dso_local global i32 0, align 4
@AMDGPU_MAX_RINGS = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate %d pointers\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i8* null, align 8
@ttm_bo_type_kernel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to create VRAM object\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to pin VRAM object\0A\00", align 1
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to create GTT object %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to pin GTT object %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%p bind failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to map GTT object %d\0A\00", align 1
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @amdgpu_do_test_moves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_do_test_moves(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_bo*, align 8
  %5 = alloca %struct.amdgpu_bo**, align 8
  %6 = alloca %struct.amdgpu_bo_param, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca %struct.dma_fence*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %22, align 8
  store %struct.amdgpu_ring* %23, %struct.amdgpu_ring** %3, align 8
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %4, align 8
  store %struct.amdgpu_bo** null, %struct.amdgpu_bo*** %5, align 8
  store i32 1048576, i32* %10, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AMDGPU_IB_POOL_SIZE, align 4
  %29 = mul nsw i32 %28, 64
  %30 = mul nsw i32 %29, 1024
  %31 = sub i32 %27, %30
  store i32 %31, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %60, %1
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @AMDGPU_MAX_RINGS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %32
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %39, i64 %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = icmp ne %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %36
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %48, i64 %50
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = sub nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %45, %36
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %32

63:                                               ; preds = %32
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i64, i64* @AMDGPU_GPU_PAGE_SIZE, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = sub nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = sub nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %82, %75
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = udiv i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call %struct.amdgpu_bo** @kcalloc(i32 %96, i32 8, i32 %97)
  store %struct.amdgpu_bo** %98, %struct.amdgpu_bo*** %5, align 8
  %99 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %100 = icmp ne %struct.amdgpu_bo** %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %9, align 4
  %103 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %102)
  store i32 1, i32* %12, align 4
  br label %530

104:                                              ; preds = %92
  %105 = call i32 @memset(%struct.amdgpu_bo_param* %6, i32 0, i32 48)
  %106 = load i32, i32* %10, align 4
  %107 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %6, i32 0, i32 0
  store i32 %106, i32* %107, align 8
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %6, i32 0, i32 5
  store i32 %108, i32* %109, align 8
  %110 = load i8*, i8** @AMDGPU_GEM_DOMAIN_VRAM, align 8
  %111 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %6, i32 0, i32 1
  store i8* %110, i8** %111, align 8
  %112 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %6, i32 0, i32 4
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* @ttm_bo_type_kernel, align 4
  %114 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %6, i32 0, i32 3
  store i32 %113, i32* %114, align 8
  %115 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %6, i32 0, i32 2
  store i32* null, i32** %115, align 8
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %117 = call i32 @amdgpu_bo_create(%struct.amdgpu_device* %116, %struct.amdgpu_bo_param* %6, %struct.amdgpu_bo** %4)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %104
  %121 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %530

122:                                              ; preds = %104
  %123 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %124 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %123, i32 0)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %528

131:                                              ; preds = %122
  %132 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %133 = load i8*, i8** @AMDGPU_GEM_DOMAIN_VRAM, align 8
  %134 = call i32 @amdgpu_bo_pin(%struct.amdgpu_bo* %132, i8* %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %525

139:                                              ; preds = %131
  %140 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %141 = call i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %140)
  store i32 %141, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %519, %139
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %522

146:                                              ; preds = %142
  store %struct.dma_fence* null, %struct.dma_fence** %19, align 8
  %147 = load i8*, i8** @AMDGPU_GEM_DOMAIN_GTT, align 8
  %148 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %6, i32 0, i32 1
  store i8* %147, i8** %148, align 8
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %150 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %150, i64 %152
  %154 = call i32 @amdgpu_bo_create(%struct.amdgpu_device* %149, %struct.amdgpu_bo_param* %6, %struct.amdgpu_bo** %153)
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %146
  %158 = load i32, i32* %11, align 4
  %159 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  br label %485

160:                                              ; preds = %146
  %161 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %161, i64 %163
  %165 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %164, align 8
  %166 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %165, i32 0)
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i64 @unlikely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %160
  br label %479

173:                                              ; preds = %160
  %174 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %174, i64 %176
  %178 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %177, align 8
  %179 = load i8*, i8** @AMDGPU_GEM_DOMAIN_GTT, align 8
  %180 = call i32 @amdgpu_bo_pin(%struct.amdgpu_bo* %178, i8* %179)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %173
  %184 = load i32, i32* %11, align 4
  %185 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %184)
  br label %472

186:                                              ; preds = %173
  %187 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %187, i64 %189
  %191 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %190, align 8
  %192 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %191, i32 0, i32 0
  %193 = call i32 @amdgpu_ttm_alloc_gart(i32* %192)
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %186
  %197 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %197, i64 %199
  %201 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %200, align 8
  %202 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), %struct.amdgpu_bo* %201)
  br label %465

203:                                              ; preds = %186
  %204 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %204, i64 %206
  %208 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %207, align 8
  %209 = call i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %208)
  store i32 %209, i32* %7, align 4
  %210 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %210, i64 %212
  %214 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %213, align 8
  %215 = call i32 @amdgpu_bo_kmap(%struct.amdgpu_bo* %214, i8** %13)
  store i32 %215, i32* %12, align 4
  %216 = load i32, i32* %12, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %203
  %219 = load i32, i32* %11, align 4
  %220 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %219)
  br label %465

221:                                              ; preds = %203
  %222 = load i8*, i8** %13, align 8
  %223 = bitcast i8* %222 to i8**
  store i8** %223, i8*** %15, align 8
  %224 = load i8*, i8** %13, align 8
  %225 = load i32, i32* %10, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr i8, i8* %224, i64 %226
  %228 = bitcast i8* %227 to i8**
  store i8** %228, i8*** %16, align 8
  br label %229

229:                                              ; preds = %237, %221
  %230 = load i8**, i8*** %15, align 8
  %231 = load i8**, i8*** %16, align 8
  %232 = icmp ult i8** %230, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %229
  %234 = load i8**, i8*** %15, align 8
  %235 = bitcast i8** %234 to i8*
  %236 = load i8**, i8*** %15, align 8
  store i8* %235, i8** %236, align 8
  br label %237

237:                                              ; preds = %233
  %238 = load i8**, i8*** %15, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i32 1
  store i8** %239, i8*** %15, align 8
  br label %229

240:                                              ; preds = %229
  %241 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %241, i64 %243
  %245 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %244, align 8
  %246 = call i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo* %245)
  %247 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* %10, align 4
  %251 = call i32 @amdgpu_copy_buffer(%struct.amdgpu_ring* %247, i32 %248, i32 %249, i32 %250, i32* null, %struct.dma_fence** %19, i32 0, i32 0)
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %12, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %240
  %255 = load i32, i32* %11, align 4
  %256 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %255)
  br label %465

257:                                              ; preds = %240
  %258 = load %struct.dma_fence*, %struct.dma_fence** %19, align 8
  %259 = call i32 @dma_fence_wait(%struct.dma_fence* %258, i32 0)
  store i32 %259, i32* %12, align 4
  %260 = load i32, i32* %12, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %257
  %263 = load i32, i32* %11, align 4
  %264 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %263)
  br label %465

265:                                              ; preds = %257
  %266 = load %struct.dma_fence*, %struct.dma_fence** %19, align 8
  %267 = call i32 @dma_fence_put(%struct.dma_fence* %266)
  %268 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %269 = call i32 @amdgpu_bo_kmap(%struct.amdgpu_bo* %268, i8** %14)
  store i32 %269, i32* %12, align 4
  %270 = load i32, i32* %12, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = load i32, i32* %11, align 4
  %274 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %273)
  br label %465

275:                                              ; preds = %265
  %276 = load i8*, i8** %13, align 8
  %277 = bitcast i8* %276 to i8**
  store i8** %277, i8*** %15, align 8
  %278 = load i8*, i8** %13, align 8
  %279 = load i32, i32* %10, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr i8, i8* %278, i64 %280
  %282 = bitcast i8* %281 to i8**
  store i8** %282, i8*** %16, align 8
  %283 = load i8*, i8** %14, align 8
  %284 = bitcast i8* %283 to i8**
  store i8** %284, i8*** %17, align 8
  %285 = load i8*, i8** %14, align 8
  %286 = load i32, i32* %10, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr i8, i8* %285, i64 %287
  %289 = bitcast i8* %288 to i8**
  store i8** %289, i8*** %18, align 8
  br label %290

290:                                              ; preds = %340, %275
  %291 = load i8**, i8*** %17, align 8
  %292 = load i8**, i8*** %18, align 8
  %293 = icmp ult i8** %291, %292
  br i1 %293, label %294, label %345

294:                                              ; preds = %290
  %295 = load i8**, i8*** %17, align 8
  %296 = load i8*, i8** %295, align 8
  %297 = load i8**, i8*** %15, align 8
  %298 = bitcast i8** %297 to i8*
  %299 = icmp ne i8* %296, %298
  br i1 %299, label %300, label %336

300:                                              ; preds = %294
  %301 = load i32, i32* %11, align 4
  %302 = load i8**, i8*** %17, align 8
  %303 = load i8*, i8** %302, align 8
  %304 = load i8**, i8*** %15, align 8
  %305 = load i32, i32* %7, align 4
  %306 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %307 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %305, %309
  %311 = load i8**, i8*** %15, align 8
  %312 = bitcast i8** %311 to i8*
  %313 = sext i32 %310 to i64
  %314 = getelementptr i8, i8* %312, i64 %313
  %315 = load i8*, i8** %13, align 8
  %316 = ptrtoint i8* %314 to i64
  %317 = ptrtoint i8* %315 to i64
  %318 = sub i64 %316, %317
  %319 = load i32, i32* %8, align 4
  %320 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %321 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = sub nsw i32 %319, %323
  %325 = load i8**, i8*** %15, align 8
  %326 = bitcast i8** %325 to i8*
  %327 = sext i32 %324 to i64
  %328 = getelementptr i8, i8* %326, i64 %327
  %329 = load i8*, i8** %13, align 8
  %330 = ptrtoint i8* %328 to i64
  %331 = ptrtoint i8* %329 to i64
  %332 = sub i64 %330, %331
  %333 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.10, i64 0, i64 0), i32 %301, i8* %303, i8** %304, i64 %318, i64 %332)
  %334 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %335 = call i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo* %334)
  br label %465

336:                                              ; preds = %294
  %337 = load i8**, i8*** %17, align 8
  %338 = bitcast i8** %337 to i8*
  %339 = load i8**, i8*** %17, align 8
  store i8* %338, i8** %339, align 8
  br label %340

340:                                              ; preds = %336
  %341 = load i8**, i8*** %15, align 8
  %342 = getelementptr inbounds i8*, i8** %341, i32 1
  store i8** %342, i8*** %15, align 8
  %343 = load i8**, i8*** %17, align 8
  %344 = getelementptr inbounds i8*, i8** %343, i32 1
  store i8** %344, i8*** %17, align 8
  br label %290

345:                                              ; preds = %290
  %346 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %347 = call i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo* %346)
  %348 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %349 = load i32, i32* %8, align 4
  %350 = load i32, i32* %7, align 4
  %351 = load i32, i32* %10, align 4
  %352 = call i32 @amdgpu_copy_buffer(%struct.amdgpu_ring* %348, i32 %349, i32 %350, i32 %351, i32* null, %struct.dma_fence** %19, i32 0, i32 0)
  store i32 %352, i32* %12, align 4
  %353 = load i32, i32* %12, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %345
  %356 = load i32, i32* %11, align 4
  %357 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %356)
  br label %465

358:                                              ; preds = %345
  %359 = load %struct.dma_fence*, %struct.dma_fence** %19, align 8
  %360 = call i32 @dma_fence_wait(%struct.dma_fence* %359, i32 0)
  store i32 %360, i32* %12, align 4
  %361 = load i32, i32* %12, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %358
  %364 = load i32, i32* %11, align 4
  %365 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %364)
  br label %465

366:                                              ; preds = %358
  %367 = load %struct.dma_fence*, %struct.dma_fence** %19, align 8
  %368 = call i32 @dma_fence_put(%struct.dma_fence* %367)
  %369 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %370 = load i32, i32* %11, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %369, i64 %371
  %373 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %372, align 8
  %374 = call i32 @amdgpu_bo_kmap(%struct.amdgpu_bo* %373, i8** %13)
  store i32 %374, i32* %12, align 4
  %375 = load i32, i32* %12, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %366
  %378 = load i32, i32* %11, align 4
  %379 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %378)
  br label %465

380:                                              ; preds = %366
  %381 = load i8*, i8** %13, align 8
  %382 = bitcast i8* %381 to i8**
  store i8** %382, i8*** %15, align 8
  %383 = load i8*, i8** %13, align 8
  %384 = load i32, i32* %10, align 4
  %385 = zext i32 %384 to i64
  %386 = getelementptr i8, i8* %383, i64 %385
  %387 = bitcast i8* %386 to i8**
  store i8** %387, i8*** %16, align 8
  %388 = load i8*, i8** %14, align 8
  %389 = bitcast i8* %388 to i8**
  store i8** %389, i8*** %17, align 8
  %390 = load i8*, i8** %14, align 8
  %391 = load i32, i32* %10, align 4
  %392 = zext i32 %391 to i64
  %393 = getelementptr i8, i8* %390, i64 %392
  %394 = bitcast i8* %393 to i8**
  store i8** %394, i8*** %18, align 8
  br label %395

395:                                              ; preds = %446, %380
  %396 = load i8**, i8*** %15, align 8
  %397 = load i8**, i8*** %16, align 8
  %398 = icmp ult i8** %396, %397
  br i1 %398, label %399, label %451

399:                                              ; preds = %395
  %400 = load i8**, i8*** %15, align 8
  %401 = load i8*, i8** %400, align 8
  %402 = load i8**, i8*** %17, align 8
  %403 = bitcast i8** %402 to i8*
  %404 = icmp ne i8* %401, %403
  br i1 %404, label %405, label %445

405:                                              ; preds = %399
  %406 = load i32, i32* %11, align 4
  %407 = load i8**, i8*** %15, align 8
  %408 = load i8*, i8** %407, align 8
  %409 = load i8**, i8*** %17, align 8
  %410 = load i32, i32* %8, align 4
  %411 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %412 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = sub nsw i32 %410, %414
  %416 = load i8**, i8*** %17, align 8
  %417 = bitcast i8** %416 to i8*
  %418 = sext i32 %415 to i64
  %419 = getelementptr i8, i8* %417, i64 %418
  %420 = load i8*, i8** %14, align 8
  %421 = ptrtoint i8* %419 to i64
  %422 = ptrtoint i8* %420 to i64
  %423 = sub i64 %421, %422
  %424 = load i32, i32* %7, align 4
  %425 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %426 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = sub nsw i32 %424, %428
  %430 = load i8**, i8*** %17, align 8
  %431 = bitcast i8** %430 to i8*
  %432 = sext i32 %429 to i64
  %433 = getelementptr i8, i8* %431, i64 %432
  %434 = load i8*, i8** %14, align 8
  %435 = ptrtoint i8* %433 to i64
  %436 = ptrtoint i8* %434 to i64
  %437 = sub i64 %435, %436
  %438 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.14, i64 0, i64 0), i32 %406, i8* %408, i8** %409, i64 %423, i64 %437)
  %439 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %440 = load i32, i32* %11, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %439, i64 %441
  %443 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %442, align 8
  %444 = call i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo* %443)
  br label %465

445:                                              ; preds = %399
  br label %446

446:                                              ; preds = %445
  %447 = load i8**, i8*** %15, align 8
  %448 = getelementptr inbounds i8*, i8** %447, i32 1
  store i8** %448, i8*** %15, align 8
  %449 = load i8**, i8*** %17, align 8
  %450 = getelementptr inbounds i8*, i8** %449, i32 1
  store i8** %450, i8*** %17, align 8
  br label %395

451:                                              ; preds = %395
  %452 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %453 = load i32, i32* %11, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %452, i64 %454
  %456 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %455, align 8
  %457 = call i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo* %456)
  %458 = load i32, i32* %7, align 4
  %459 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %460 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = sub nsw i32 %458, %462
  %464 = call i32 @DRM_INFO(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0), i32 %463)
  br label %519

465:                                              ; preds = %405, %377, %363, %355, %300, %272, %262, %254, %218, %196
  %466 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %467 = load i32, i32* %11, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %466, i64 %468
  %470 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %469, align 8
  %471 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %470)
  br label %472

472:                                              ; preds = %465, %183
  %473 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %474 = load i32, i32* %11, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %473, i64 %475
  %477 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %476, align 8
  %478 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %477)
  br label %479

479:                                              ; preds = %472, %172
  %480 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %481 = load i32, i32* %11, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %480, i64 %482
  %484 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %483)
  br label %485

485:                                              ; preds = %479, %157
  %486 = load i32, i32* %11, align 4
  %487 = add nsw i32 %486, -1
  store i32 %487, i32* %11, align 4
  br label %488

488:                                              ; preds = %509, %485
  %489 = load i32, i32* %11, align 4
  %490 = icmp sge i32 %489, 0
  br i1 %490, label %491, label %512

491:                                              ; preds = %488
  %492 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %493 = load i32, i32* %11, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %492, i64 %494
  %496 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %495, align 8
  %497 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %496)
  %498 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %499 = load i32, i32* %11, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %498, i64 %500
  %502 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %501, align 8
  %503 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %502)
  %504 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %505 = load i32, i32* %11, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.amdgpu_bo*, %struct.amdgpu_bo** %504, i64 %506
  %508 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %507)
  br label %509

509:                                              ; preds = %491
  %510 = load i32, i32* %11, align 4
  %511 = add nsw i32 %510, -1
  store i32 %511, i32* %11, align 4
  br label %488

512:                                              ; preds = %488
  %513 = load %struct.dma_fence*, %struct.dma_fence** %19, align 8
  %514 = icmp ne %struct.dma_fence* %513, null
  br i1 %514, label %515, label %518

515:                                              ; preds = %512
  %516 = load %struct.dma_fence*, %struct.dma_fence** %19, align 8
  %517 = call i32 @dma_fence_put(%struct.dma_fence* %516)
  br label %518

518:                                              ; preds = %515, %512
  br label %522

519:                                              ; preds = %451
  %520 = load i32, i32* %11, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %11, align 4
  br label %142

522:                                              ; preds = %518, %142
  %523 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %524 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %523)
  br label %525

525:                                              ; preds = %522, %137
  %526 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %527 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %526)
  br label %528

528:                                              ; preds = %525, %130
  %529 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %4)
  br label %530

530:                                              ; preds = %528, %120, %101
  %531 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %5, align 8
  %532 = call i32 @kfree(%struct.amdgpu_bo** %531)
  %533 = load i32, i32* %12, align 4
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %537

535:                                              ; preds = %530
  %536 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  br label %537

537:                                              ; preds = %535, %530
  ret void
}

declare dso_local %struct.amdgpu_bo** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @memset(%struct.amdgpu_bo_param*, i32, i32) #1

declare dso_local i32 @amdgpu_bo_create(%struct.amdgpu_device*, %struct.amdgpu_bo_param*, %struct.amdgpu_bo**) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_bo_pin(%struct.amdgpu_bo*, i8*) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_ttm_alloc_gart(i32*) #1

declare dso_local i32 @amdgpu_bo_kmap(%struct.amdgpu_bo*, i8**) #1

declare dso_local i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_copy_buffer(%struct.amdgpu_ring*, i32, i32, i32, i32*, %struct.dma_fence**, i32, i32) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

declare dso_local i32 @kfree(%struct.amdgpu_bo**) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
