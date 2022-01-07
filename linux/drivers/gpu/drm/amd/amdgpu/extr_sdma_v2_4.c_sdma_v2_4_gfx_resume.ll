; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_gfx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_gfx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_14__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.amdgpu_ring }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@mmSDMA0_GFX_VIRTUAL_ADDR = common dso_local global i64 0, align 8
@sdma_offsets = common dso_local global i64* null, align 8
@mmSDMA0_GFX_APE1_CNTL = common dso_local global i64 0, align 8
@mmSDMA0_TILING_CONFIG = common dso_local global i64 0, align 8
@mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_CNTL = common dso_local global i64 0, align 8
@SDMA0_GFX_RB_CNTL = common dso_local global i32 0, align 4
@RB_SIZE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_RPTR = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_WPTR = common dso_local global i64 0, align 8
@mmSDMA0_GFX_IB_RPTR = common dso_local global i64 0, align 8
@mmSDMA0_GFX_IB_OFFSET = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_RPTR_ADDR_HI = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_RPTR_ADDR_LO = common dso_local global i64 0, align 8
@RPTR_WRITEBACK_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_BASE = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_BASE_HI = common dso_local global i64 0, align 8
@RB_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_IB_CNTL = common dso_local global i64 0, align 8
@SDMA0_GFX_IB_CNTL = common dso_local global i32 0, align 4
@IB_ENABLE = common dso_local global i32 0, align 4
@IB_SWAP_ENABLE = common dso_local global i32 0, align 4
@RB_SWAP_ENABLE = common dso_local global i32 0, align 4
@RPTR_WRITEBACK_SWAP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @sdma_v2_4_gfx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v2_4_gfx_resume(%struct.amdgpu_device* %0) #0 {
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

12:                                               ; preds = %261, %1
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %264

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
  %41 = call i32 @vi_srbm_select(%struct.amdgpu_device* %39, i32 0, i32 0, i32 0, i32 %40)
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
  %63 = call i32 @vi_srbm_select(%struct.amdgpu_device* %62, i32 0, i32 0, i32 0, i32 0)
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
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 112
  %80 = call i32 @WREG32(i64 %73, i32 %79)
  %81 = load i64, i64* @mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL, align 8
  %82 = load i64*, i64** @sdma_offsets, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %81, %86
  %88 = call i32 @WREG32(i64 %87, i32 0)
  %89 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %90 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 4
  %93 = call i32 @order_base_2(i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i64, i64* @mmSDMA0_GFX_RB_CNTL, align 8
  %95 = load i64*, i64** @sdma_offsets, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %94, %99
  %101 = call i32 @RREG32(i64 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @SDMA0_GFX_RB_CNTL, align 4
  %104 = load i32, i32* @RB_SIZE, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @REG_SET_FIELD(i32 %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i64, i64* @mmSDMA0_GFX_RB_CNTL, align 8
  %108 = load i64*, i64** @sdma_offsets, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %107, %112
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @WREG32(i64 %113, i32 %114)
  %116 = load i64, i64* @mmSDMA0_GFX_RB_RPTR, align 8
  %117 = load i64*, i64** @sdma_offsets, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %116, %121
  %123 = call i32 @WREG32(i64 %122, i32 0)
  %124 = load i64, i64* @mmSDMA0_GFX_RB_WPTR, align 8
  %125 = load i64*, i64** @sdma_offsets, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %124, %129
  %131 = call i32 @WREG32(i64 %130, i32 0)
  %132 = load i64, i64* @mmSDMA0_GFX_IB_RPTR, align 8
  %133 = load i64*, i64** @sdma_offsets, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %132, %137
  %139 = call i32 @WREG32(i64 %138, i32 0)
  %140 = load i64, i64* @mmSDMA0_GFX_IB_OFFSET, align 8
  %141 = load i64*, i64** @sdma_offsets, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %140, %145
  %147 = call i32 @WREG32(i64 %146, i32 0)
  %148 = load i64, i64* @mmSDMA0_GFX_RB_RPTR_ADDR_HI, align 8
  %149 = load i64*, i64** @sdma_offsets, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %148, %153
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %158, %160
  %162 = call i32 @upper_32_bits(i64 %161)
  %163 = call i32 @WREG32(i64 %154, i32 %162)
  %164 = load i64, i64* @mmSDMA0_GFX_RB_RPTR_ADDR_LO, align 8
  %165 = load i64*, i64** @sdma_offsets, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %164, %169
  %171 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %172 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %174, %176
  %178 = call i32 @lower_32_bits(i64 %177)
  %179 = and i32 %178, -4
  %180 = call i32 @WREG32(i64 %170, i32 %179)
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @SDMA0_GFX_RB_CNTL, align 4
  %183 = load i32, i32* @RPTR_WRITEBACK_ENABLE, align 4
  %184 = call i32 @REG_SET_FIELD(i32 %181, i32 %182, i32 %183, i32 1)
  store i32 %184, i32* %5, align 4
  %185 = load i64, i64* @mmSDMA0_GFX_RB_BASE, align 8
  %186 = load i64*, i64** @sdma_offsets, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %185, %190
  %192 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %193 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = ashr i32 %194, 8
  %196 = call i32 @WREG32(i64 %191, i32 %195)
  %197 = load i64, i64* @mmSDMA0_GFX_RB_BASE_HI, align 8
  %198 = load i64*, i64** @sdma_offsets, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %197, %202
  %204 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %205 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = ashr i32 %206, 40
  %208 = call i32 @WREG32(i64 %203, i32 %207)
  %209 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %210 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %209, i32 0, i32 4
  store i64 0, i64* %210, align 8
  %211 = load i64, i64* @mmSDMA0_GFX_RB_WPTR, align 8
  %212 = load i64*, i64** @sdma_offsets, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %212, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %211, %216
  %218 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %219 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @lower_32_bits(i64 %220)
  %222 = shl i32 %221, 2
  %223 = call i32 @WREG32(i64 %217, i32 %222)
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* @SDMA0_GFX_RB_CNTL, align 4
  %226 = load i32, i32* @RB_ENABLE, align 4
  %227 = call i32 @REG_SET_FIELD(i32 %224, i32 %225, i32 %226, i32 1)
  store i32 %227, i32* %5, align 4
  %228 = load i64, i64* @mmSDMA0_GFX_RB_CNTL, align 8
  %229 = load i64*, i64** @sdma_offsets, align 8
  %230 = load i32, i32* %9, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %228, %233
  %235 = load i32, i32* %5, align 4
  %236 = call i32 @WREG32(i64 %234, i32 %235)
  %237 = load i64, i64* @mmSDMA0_GFX_IB_CNTL, align 8
  %238 = load i64*, i64** @sdma_offsets, align 8
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %237, %242
  %244 = call i32 @RREG32(i64 %243)
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* @SDMA0_GFX_IB_CNTL, align 4
  %247 = load i32, i32* @IB_ENABLE, align 4
  %248 = call i32 @REG_SET_FIELD(i32 %245, i32 %246, i32 %247, i32 1)
  store i32 %248, i32* %6, align 4
  %249 = load i64, i64* @mmSDMA0_GFX_IB_CNTL, align 8
  %250 = load i64*, i64** @sdma_offsets, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %249, %254
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @WREG32(i64 %255, i32 %256)
  %258 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %259 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  store i32 1, i32* %260, align 4
  br label %261

261:                                              ; preds = %61
  %262 = load i32, i32* %9, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %9, align 4
  br label %12

264:                                              ; preds = %12
  %265 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %266 = call i32 @sdma_v2_4_enable(%struct.amdgpu_device* %265, i32 1)
  store i32 0, i32* %9, align 4
  br label %267

267:                                              ; preds = %300, %264
  %268 = load i32, i32* %9, align 4
  %269 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %270 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp slt i32 %268, %272
  br i1 %273, label %274, label %303

274:                                              ; preds = %267
  %275 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %276 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %277, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  store %struct.amdgpu_ring* %282, %struct.amdgpu_ring** %4, align 8
  %283 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %284 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %283)
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %274
  %288 = load i32, i32* %11, align 4
  store i32 %288, i32* %2, align 4
  br label %304

289:                                              ; preds = %274
  %290 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %291 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  %293 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %292, align 8
  %294 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %295 = icmp eq %struct.amdgpu_ring* %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %289
  %297 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %298 = call i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device* %297, i32 1)
  br label %299

299:                                              ; preds = %296, %289
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %9, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %9, align 4
  br label %267

303:                                              ; preds = %267
  store i32 0, i32* %2, align 4
  br label %304

304:                                              ; preds = %303, %287
  %305 = load i32, i32* %2, align 4
  ret i32 %305
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vi_srbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @sdma_v2_4_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
