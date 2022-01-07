; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_gfx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_gfx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_8__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, %struct.TYPE_13__, i64, i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.amdgpu_ring }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@mmSDMA0_GFX_VIRTUAL_ADDR = common dso_local global i64 0, align 8
@sdma_offsets = common dso_local global i64* null, align 8
@mmSDMA0_GFX_APE1_CNTL = common dso_local global i64 0, align 8
@mmSDMA0_TILING_CONFIG = common dso_local global i64 0, align 8
@mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_CNTL = common dso_local global i64 0, align 8
@SDMA0_GFX_RB_CNTL = common dso_local global i32 0, align 4
@RB_SIZE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_RPTR = common dso_local global i64 0, align 8
@mmSDMA0_GFX_IB_RPTR = common dso_local global i64 0, align 8
@mmSDMA0_GFX_IB_OFFSET = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_RPTR_ADDR_HI = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_RPTR_ADDR_LO = common dso_local global i64 0, align 8
@RPTR_WRITEBACK_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_BASE = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_BASE_HI = common dso_local global i64 0, align 8
@mmSDMA0_GFX_DOORBELL = common dso_local global i64 0, align 8
@SDMA0_GFX_DOORBELL = common dso_local global i32 0, align 4
@OFFSET = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_WPTR_POLL_ADDR_LO = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_WPTR_POLL_ADDR_HI = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_WPTR_POLL_CNTL = common dso_local global i64 0, align 8
@mmSDMA0_GFX_RB_WPTR = common dso_local global i64 0, align 8
@SDMA0_GFX_RB_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@RB_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_IB_CNTL = common dso_local global i64 0, align 8
@SDMA0_GFX_IB_CNTL = common dso_local global i32 0, align 4
@IB_ENABLE = common dso_local global i32 0, align 4
@IB_SWAP_ENABLE = common dso_local global i32 0, align 4
@RB_SWAP_ENABLE = common dso_local global i32 0, align 4
@RPTR_WRITEBACK_SWAP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @sdma_v3_0_gfx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v3_0_gfx_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %356, %1
  %16 = load i32, i32* %12, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %359

22:                                               ; preds = %15
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store %struct.amdgpu_ring* %30, %struct.amdgpu_ring** %4, align 8
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %32 = call i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring* %31)
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 4
  %39 = call i32 @mutex_lock(i32* %38)
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %63, %22
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 16
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @vi_srbm_select(%struct.amdgpu_device* %44, i32 0, i32 0, i32 0, i32 %45)
  %47 = load i64, i64* @mmSDMA0_GFX_VIRTUAL_ADDR, align 8
  %48 = load i64*, i64** @sdma_offsets, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %47, %52
  %54 = call i32 @WREG32(i64 %53, i32 0)
  %55 = load i64, i64* @mmSDMA0_GFX_APE1_CNTL, align 8
  %56 = load i64*, i64** @sdma_offsets, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %55, %60
  %62 = call i32 @WREG32(i64 %61, i32 0)
  br label %63

63:                                               ; preds = %43
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %40

66:                                               ; preds = %40
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = call i32 @vi_srbm_select(%struct.amdgpu_device* %67, i32 0, i32 0, i32 0, i32 0)
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 4
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i64, i64* @mmSDMA0_TILING_CONFIG, align 8
  %73 = load i64*, i64** @sdma_offsets, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %72, %77
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 112
  %85 = call i32 @WREG32(i64 %78, i32 %84)
  %86 = load i64, i64* @mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL, align 8
  %87 = load i64*, i64** @sdma_offsets, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %86, %91
  %93 = call i32 @WREG32(i64 %92, i32 0)
  %94 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %95 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %96, 4
  %98 = call i32 @order_base_2(i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i64, i64* @mmSDMA0_GFX_RB_CNTL, align 8
  %100 = load i64*, i64** @sdma_offsets, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %99, %104
  %106 = call i32 @RREG32(i64 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @SDMA0_GFX_RB_CNTL, align 4
  %109 = load i32, i32* @RB_SIZE, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @REG_SET_FIELD(i32 %107, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i64, i64* @mmSDMA0_GFX_RB_CNTL, align 8
  %113 = load i64*, i64** @sdma_offsets, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %112, %117
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @WREG32(i64 %118, i32 %119)
  %121 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %122 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %121, i32 0, i32 8
  store i64 0, i64* %122, align 8
  %123 = load i64, i64* @mmSDMA0_GFX_RB_RPTR, align 8
  %124 = load i64*, i64** @sdma_offsets, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %123, %128
  %130 = call i32 @WREG32(i64 %129, i32 0)
  %131 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %132 = call i32 @sdma_v3_0_ring_set_wptr(%struct.amdgpu_ring* %131)
  %133 = load i64, i64* @mmSDMA0_GFX_IB_RPTR, align 8
  %134 = load i64*, i64** @sdma_offsets, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %133, %138
  %140 = call i32 @WREG32(i64 %139, i32 0)
  %141 = load i64, i64* @mmSDMA0_GFX_IB_OFFSET, align 8
  %142 = load i64*, i64** @sdma_offsets, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %141, %146
  %148 = call i32 @WREG32(i64 %147, i32 0)
  %149 = load i64, i64* @mmSDMA0_GFX_RB_RPTR_ADDR_HI, align 8
  %150 = load i64*, i64** @sdma_offsets, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %149, %154
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %157 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %159, %161
  %163 = call i32 @upper_32_bits(i64 %162)
  %164 = call i32 @WREG32(i64 %155, i32 %163)
  %165 = load i64, i64* @mmSDMA0_GFX_RB_RPTR_ADDR_LO, align 8
  %166 = load i64*, i64** @sdma_offsets, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %165, %170
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %173 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %175, %177
  %179 = call i32 @lower_32_bits(i64 %178)
  %180 = and i32 %179, -4
  %181 = call i32 @WREG32(i64 %171, i32 %180)
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @SDMA0_GFX_RB_CNTL, align 4
  %184 = load i32, i32* @RPTR_WRITEBACK_ENABLE, align 4
  %185 = call i32 @REG_SET_FIELD(i32 %182, i32 %183, i32 %184, i32 1)
  store i32 %185, i32* %5, align 4
  %186 = load i64, i64* @mmSDMA0_GFX_RB_BASE, align 8
  %187 = load i64*, i64** @sdma_offsets, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %186, %191
  %193 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %194 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = ashr i32 %195, 8
  %197 = call i32 @WREG32(i64 %192, i32 %196)
  %198 = load i64, i64* @mmSDMA0_GFX_RB_BASE_HI, align 8
  %199 = load i64*, i64** @sdma_offsets, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %198, %203
  %205 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %206 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = ashr i32 %207, 40
  %209 = call i32 @WREG32(i64 %204, i32 %208)
  %210 = load i64, i64* @mmSDMA0_GFX_DOORBELL, align 8
  %211 = load i64*, i64** @sdma_offsets, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %210, %215
  %217 = call i32 @RREG32(i64 %216)
  store i32 %217, i32* %10, align 4
  %218 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %219 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %218, i32 0, i32 7
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %66
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @SDMA0_GFX_DOORBELL, align 4
  %225 = load i32, i32* @OFFSET, align 4
  %226 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %227 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @REG_SET_FIELD(i32 %223, i32 %224, i32 %225, i32 %228)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @SDMA0_GFX_DOORBELL, align 4
  %232 = load i32, i32* @ENABLE, align 4
  %233 = call i32 @REG_SET_FIELD(i32 %230, i32 %231, i32 %232, i32 1)
  store i32 %233, i32* %10, align 4
  br label %239

234:                                              ; preds = %66
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* @SDMA0_GFX_DOORBELL, align 4
  %237 = load i32, i32* @ENABLE, align 4
  %238 = call i32 @REG_SET_FIELD(i32 %235, i32 %236, i32 %237, i32 0)
  store i32 %238, i32* %10, align 4
  br label %239

239:                                              ; preds = %234, %222
  %240 = load i64, i64* @mmSDMA0_GFX_DOORBELL, align 8
  %241 = load i64*, i64** @sdma_offsets, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i64, i64* %241, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %240, %245
  %247 = load i32, i32* %10, align 4
  %248 = call i32 @WREG32(i64 %246, i32 %247)
  %249 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %250 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %254 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = mul nsw i32 %255, 4
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %252, %257
  store i64 %258, i64* %11, align 8
  %259 = load i64, i64* @mmSDMA0_GFX_RB_WPTR_POLL_ADDR_LO, align 8
  %260 = load i64*, i64** @sdma_offsets, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %260, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %259, %264
  %266 = load i64, i64* %11, align 8
  %267 = call i32 @lower_32_bits(i64 %266)
  %268 = call i32 @WREG32(i64 %265, i32 %267)
  %269 = load i64, i64* @mmSDMA0_GFX_RB_WPTR_POLL_ADDR_HI, align 8
  %270 = load i64*, i64** @sdma_offsets, align 8
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i64, i64* %270, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %269, %274
  %276 = load i64, i64* %11, align 8
  %277 = call i32 @upper_32_bits(i64 %276)
  %278 = call i32 @WREG32(i64 %275, i32 %277)
  %279 = load i64, i64* @mmSDMA0_GFX_RB_WPTR_POLL_CNTL, align 8
  %280 = load i64*, i64** @sdma_offsets, align 8
  %281 = load i32, i32* %12, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i64, i64* %280, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %279, %284
  %286 = call i32 @RREG32(i64 %285)
  store i32 %286, i32* %7, align 4
  %287 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %288 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %287, i32 0, i32 6
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %304

291:                                              ; preds = %239
  %292 = load i64, i64* @mmSDMA0_GFX_RB_WPTR, align 8
  %293 = load i64*, i64** @sdma_offsets, align 8
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64, i64* %293, i64 %295
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %292, %297
  %299 = call i32 @WREG32(i64 %298, i32 0)
  %300 = load i32, i32* %7, align 4
  %301 = load i32, i32* @SDMA0_GFX_RB_WPTR_POLL_CNTL, align 4
  %302 = load i32, i32* @ENABLE, align 4
  %303 = call i32 @REG_SET_FIELD(i32 %300, i32 %301, i32 %302, i32 1)
  store i32 %303, i32* %7, align 4
  br label %309

304:                                              ; preds = %239
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* @SDMA0_GFX_RB_WPTR_POLL_CNTL, align 4
  %307 = load i32, i32* @ENABLE, align 4
  %308 = call i32 @REG_SET_FIELD(i32 %305, i32 %306, i32 %307, i32 0)
  store i32 %308, i32* %7, align 4
  br label %309

309:                                              ; preds = %304, %291
  %310 = load i64, i64* @mmSDMA0_GFX_RB_WPTR_POLL_CNTL, align 8
  %311 = load i64*, i64** @sdma_offsets, align 8
  %312 = load i32, i32* %12, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i64, i64* %311, i64 %313
  %315 = load i64, i64* %314, align 8
  %316 = add nsw i64 %310, %315
  %317 = load i32, i32* %7, align 4
  %318 = call i32 @WREG32(i64 %316, i32 %317)
  %319 = load i32, i32* %5, align 4
  %320 = load i32, i32* @SDMA0_GFX_RB_CNTL, align 4
  %321 = load i32, i32* @RB_ENABLE, align 4
  %322 = call i32 @REG_SET_FIELD(i32 %319, i32 %320, i32 %321, i32 1)
  store i32 %322, i32* %5, align 4
  %323 = load i64, i64* @mmSDMA0_GFX_RB_CNTL, align 8
  %324 = load i64*, i64** @sdma_offsets, align 8
  %325 = load i32, i32* %12, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i64, i64* %324, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = add nsw i64 %323, %328
  %330 = load i32, i32* %5, align 4
  %331 = call i32 @WREG32(i64 %329, i32 %330)
  %332 = load i64, i64* @mmSDMA0_GFX_IB_CNTL, align 8
  %333 = load i64*, i64** @sdma_offsets, align 8
  %334 = load i32, i32* %12, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %333, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %332, %337
  %339 = call i32 @RREG32(i64 %338)
  store i32 %339, i32* %6, align 4
  %340 = load i32, i32* %6, align 4
  %341 = load i32, i32* @SDMA0_GFX_IB_CNTL, align 4
  %342 = load i32, i32* @IB_ENABLE, align 4
  %343 = call i32 @REG_SET_FIELD(i32 %340, i32 %341, i32 %342, i32 1)
  store i32 %343, i32* %6, align 4
  %344 = load i64, i64* @mmSDMA0_GFX_IB_CNTL, align 8
  %345 = load i64*, i64** @sdma_offsets, align 8
  %346 = load i32, i32* %12, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i64, i64* %345, i64 %347
  %349 = load i64, i64* %348, align 8
  %350 = add nsw i64 %344, %349
  %351 = load i32, i32* %6, align 4
  %352 = call i32 @WREG32(i64 %350, i32 %351)
  %353 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %354 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %353, i32 0, i32 5
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  store i32 1, i32* %355, align 4
  br label %356

356:                                              ; preds = %309
  %357 = load i32, i32* %12, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %12, align 4
  br label %15

359:                                              ; preds = %15
  %360 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %361 = call i32 @sdma_v3_0_enable(%struct.amdgpu_device* %360, i32 1)
  %362 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %363 = call i32 @sdma_v3_0_ctx_switch_enable(%struct.amdgpu_device* %362, i32 1)
  store i32 0, i32* %12, align 4
  br label %364

364:                                              ; preds = %397, %359
  %365 = load i32, i32* %12, align 4
  %366 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %367 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = icmp slt i32 %365, %369
  br i1 %370, label %371, label %400

371:                                              ; preds = %364
  %372 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %373 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 1
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %374, align 8
  %376 = load i32, i32* %12, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 0
  store %struct.amdgpu_ring* %379, %struct.amdgpu_ring** %4, align 8
  %380 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %381 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %380)
  store i32 %381, i32* %14, align 4
  %382 = load i32, i32* %14, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %371
  %385 = load i32, i32* %14, align 4
  store i32 %385, i32* %2, align 4
  br label %401

386:                                              ; preds = %371
  %387 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %388 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 0
  %390 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %389, align 8
  %391 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %392 = icmp eq %struct.amdgpu_ring* %390, %391
  br i1 %392, label %393, label %396

393:                                              ; preds = %386
  %394 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %395 = call i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device* %394, i32 1)
  br label %396

396:                                              ; preds = %393, %386
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %12, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %12, align 4
  br label %364

400:                                              ; preds = %364
  store i32 0, i32* %2, align 4
  br label %401

401:                                              ; preds = %400, %384
  %402 = load i32, i32* %2, align 4
  ret i32 %402
}

declare dso_local i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vi_srbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @sdma_v3_0_ring_set_wptr(%struct.amdgpu_ring*) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @sdma_v3_0_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @sdma_v3_0_ctx_switch_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
