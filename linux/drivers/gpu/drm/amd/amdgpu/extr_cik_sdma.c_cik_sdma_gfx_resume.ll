; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_gfx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_gfx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_14__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.amdgpu_ring }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@mmSDMA0_GFX_VIRTUAL_ADDR = common dso_local global i64 0, align 8
@sdma_offsets = common dso_local global i64* null, align 8
@mmSDMA0_GFX_APE1_CNTL = common dso_local global i64 0, align 8
@mmSDMA0_TILING_CONFIG = common dso_local global i64 0, align 8
@mmSDMA0_SEM_INCOMPLETE_TIMER_CNTL = common dso_local global i64 0, align 8
@mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_CNTL = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_RPTR = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_WPTR = common dso_local global i64 0, align 8
@mmSDMA0_GFX_IB_RPTR = common dso_local global i64 0, align 8
@mmSDMA0_GFX_IB_OFFSET = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_RPTR_ADDR_HI = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_RPTR_ADDR_LO = common dso_local global i64 0, align 8
@SDMA0_GFX_RB_CNTL__RPTR_WRITEBACK_ENABLE_MASK = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_BASE = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_BASE_HI = common dso_local global i64 0, align 8
@SDMA0_GFX_RB_CNTL__RB_ENABLE_MASK = common dso_local global i32 0, align 4
@SDMA0_GFX_IB_CNTL__IB_ENABLE_MASK = common dso_local global i32 0, align 4
@mmSDMA0_GFX_IB_CNTL = common dso_local global i64 0, align 8
@SDMA0_GFX_IB_CNTL__IB_SWAP_ENABLE_MASK = common dso_local global i32 0, align 4
@SDMA0_GFX_RB_CNTL__RB_SWAP_ENABLE_MASK = common dso_local global i32 0, align 4
@SDMA0_GFX_RB_CNTL__RPTR_WRITEBACK_SWAP_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @cik_sdma_gfx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_sdma_gfx_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %241, %1
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %244

19:                                               ; preds = %12
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store %struct.amdgpu_ring* %27, %struct.amdgpu_ring** %4, align 8
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %30, 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 4
  %34 = call i32 @mutex_lock(i32* %33)
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %58, %19
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @cik_srbm_select(%struct.amdgpu_device* %39, i32 0, i32 0, i32 0, i32 %40)
  %42 = load i64, i64* @mmSDMA0_GFX_VIRTUAL_ADDR, align 8
  %43 = load i64*, i64** @sdma_offsets, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %42, %47
  %49 = call i32 @WREG32(i64 %48, i32 0)
  %50 = load i64, i64* @mmSDMA0_GFX_APE1_CNTL, align 8
  %51 = load i64*, i64** @sdma_offsets, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %50, %55
  %57 = call i32 @WREG32(i64 %56, i32 0)
  br label %58

58:                                               ; preds = %38
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %35

61:                                               ; preds = %35
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = call i32 @cik_srbm_select(%struct.amdgpu_device* %62, i32 0, i32 0, i32 0, i32 0)
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 4
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i64, i64* @mmSDMA0_TILING_CONFIG, align 8
  %68 = load i64*, i64** @sdma_offsets, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %67, %72
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 112
  %80 = call i32 @WREG32(i64 %73, i32 %79)
  %81 = load i64, i64* @mmSDMA0_SEM_INCOMPLETE_TIMER_CNTL, align 8
  %82 = load i64*, i64** @sdma_offsets, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %81, %86
  %88 = call i32 @WREG32(i64 %87, i32 0)
  %89 = load i64, i64* @mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL, align 8
  %90 = load i64*, i64** @sdma_offsets, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %89, %94
  %96 = call i32 @WREG32(i64 %95, i32 0)
  %97 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %98 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %99, 4
  %101 = call i32 @order_base_2(i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = shl i32 %102, 1
  store i32 %103, i32* %5, align 4
  %104 = load i64, i64* @mmSDMA0_GFX_RB_CNTL, align 8
  %105 = load i64*, i64** @sdma_offsets, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %104, %109
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @WREG32(i64 %110, i32 %111)
  %113 = load i64, i64* @mmSDMA0_GFX_RB_RPTR, align 8
  %114 = load i64*, i64** @sdma_offsets, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %113, %118
  %120 = call i32 @WREG32(i64 %119, i32 0)
  %121 = load i64, i64* @mmSDMA0_GFX_RB_WPTR, align 8
  %122 = load i64*, i64** @sdma_offsets, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %121, %126
  %128 = call i32 @WREG32(i64 %127, i32 0)
  %129 = load i64, i64* @mmSDMA0_GFX_IB_RPTR, align 8
  %130 = load i64*, i64** @sdma_offsets, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %129, %134
  %136 = call i32 @WREG32(i64 %135, i32 0)
  %137 = load i64, i64* @mmSDMA0_GFX_IB_OFFSET, align 8
  %138 = load i64*, i64** @sdma_offsets, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %137, %142
  %144 = call i32 @WREG32(i64 %143, i32 0)
  %145 = load i64, i64* @mmSDMA0_GFX_RB_RPTR_ADDR_HI, align 8
  %146 = load i64*, i64** @sdma_offsets, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %145, %150
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %153 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %155, %156
  %158 = call i32 @upper_32_bits(i32 %157)
  %159 = call i32 @WREG32(i64 %151, i32 %158)
  %160 = load i64, i64* @mmSDMA0_GFX_RB_RPTR_ADDR_LO, align 8
  %161 = load i64*, i64** @sdma_offsets, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %160, %165
  %167 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %168 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %170, %171
  %173 = and i32 %172, -4
  %174 = call i32 @WREG32(i64 %166, i32 %173)
  %175 = load i32, i32* @SDMA0_GFX_RB_CNTL__RPTR_WRITEBACK_ENABLE_MASK, align 4
  %176 = load i32, i32* %5, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %5, align 4
  %178 = load i64, i64* @mmSDMA0_GFX_RB_BASE, align 8
  %179 = load i64*, i64** @sdma_offsets, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %178, %183
  %185 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %186 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = ashr i32 %187, 8
  %189 = call i32 @WREG32(i64 %184, i32 %188)
  %190 = load i64, i64* @mmSDMA0_GFX_RB_BASE_HI, align 8
  %191 = load i64*, i64** @sdma_offsets, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %190, %195
  %197 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %198 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = ashr i32 %199, 40
  %201 = call i32 @WREG32(i64 %196, i32 %200)
  %202 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %203 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %202, i32 0, i32 4
  store i64 0, i64* %203, align 8
  %204 = load i64, i64* @mmSDMA0_GFX_RB_WPTR, align 8
  %205 = load i64*, i64** @sdma_offsets, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %204, %209
  %211 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %212 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @lower_32_bits(i64 %213)
  %215 = shl i32 %214, 2
  %216 = call i32 @WREG32(i64 %210, i32 %215)
  %217 = load i64, i64* @mmSDMA0_GFX_RB_CNTL, align 8
  %218 = load i64*, i64** @sdma_offsets, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %217, %222
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* @SDMA0_GFX_RB_CNTL__RB_ENABLE_MASK, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @WREG32(i64 %223, i32 %226)
  %228 = load i32, i32* @SDMA0_GFX_IB_CNTL__IB_ENABLE_MASK, align 4
  store i32 %228, i32* %6, align 4
  %229 = load i64, i64* @mmSDMA0_GFX_IB_CNTL, align 8
  %230 = load i64*, i64** @sdma_offsets, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %229, %234
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @WREG32(i64 %235, i32 %236)
  %238 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %239 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  store i32 1, i32* %240, align 4
  br label %241

241:                                              ; preds = %61
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %9, align 4
  br label %12

244:                                              ; preds = %12
  %245 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %246 = call i32 @cik_sdma_enable(%struct.amdgpu_device* %245, i32 1)
  store i32 0, i32* %9, align 4
  br label %247

247:                                              ; preds = %280, %244
  %248 = load i32, i32* %9, align 4
  %249 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %250 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp slt i32 %248, %252
  br i1 %253, label %254, label %283

254:                                              ; preds = %247
  %255 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %256 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %257, align 8
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  store %struct.amdgpu_ring* %262, %struct.amdgpu_ring** %4, align 8
  %263 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %264 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %263)
  store i32 %264, i32* %11, align 4
  %265 = load i32, i32* %11, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %254
  %268 = load i32, i32* %11, align 4
  store i32 %268, i32* %2, align 4
  br label %284

269:                                              ; preds = %254
  %270 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %271 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  %273 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %272, align 8
  %274 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %275 = icmp eq %struct.amdgpu_ring* %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %269
  %277 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %278 = call i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device* %277, i32 1)
  br label %279

279:                                              ; preds = %276, %269
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %9, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %9, align 4
  br label %247

283:                                              ; preds = %247
  store i32 0, i32* %2, align 4
  br label %284

284:                                              ; preds = %283, %267
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cik_srbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @cik_sdma_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
