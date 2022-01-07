; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_gfx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_gfx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32 (%struct.amdgpu_device*, i32, i64, i32, i32)* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.amdgpu_ring }

@mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_CNTL = common dso_local global i32 0, align 4
@SDMA0_GFX_RB_CNTL = common dso_local global i32 0, align 4
@RB_SIZE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_RPTR = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_RPTR_HI = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_WPTR = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_WPTR_HI = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_WPTR_POLL_ADDR_LO = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_WPTR_POLL_ADDR_HI = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@SDMA0_GFX_RB_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@F32_POLL_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_RPTR_ADDR_LO = common dso_local global i32 0, align 4
@RPTR_WRITEBACK_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_BASE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_BASE_HI = common dso_local global i32 0, align 4
@mmSDMA0_GFX_MINOR_PTR_UPDATE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_DOORBELL = common dso_local global i32 0, align 4
@mmSDMA0_GFX_DOORBELL_OFFSET = common dso_local global i32 0, align 4
@SDMA0_GFX_DOORBELL = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@SDMA0_GFX_DOORBELL_OFFSET = common dso_local global i32 0, align 4
@OFFSET = common dso_local global i32 0, align 4
@mmSDMA0_CNTL = common dso_local global i32 0, align 4
@SDMA0_CNTL = common dso_local global i32 0, align 4
@UTC_L1_ENABLE = common dso_local global i32 0, align 4
@MIDCMD_PREEMPT_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_UTCL1_CNTL = common dso_local global i32 0, align 4
@SDMA0_UTCL1_CNTL = common dso_local global i32 0, align 4
@RESP_MODE = common dso_local global i32 0, align 4
@REDO_DELAY = common dso_local global i32 0, align 4
@mmSDMA0_UTCL1_PAGE = common dso_local global i32 0, align 4
@CACHE_READ_POLICY_L2__DEFAULT = common dso_local global i32 0, align 4
@CACHE_WRITE_POLICY_L2__DEFAULT = common dso_local global i32 0, align 4
@mmSDMA0_F32_CNTL = common dso_local global i32 0, align 4
@SDMA0_F32_CNTL = common dso_local global i32 0, align 4
@HALT = common dso_local global i32 0, align 4
@RB_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_IB_CNTL = common dso_local global i32 0, align 4
@SDMA0_GFX_IB_CNTL = common dso_local global i32 0, align 4
@IB_ENABLE = common dso_local global i32 0, align 4
@IB_SWAP_ENABLE = common dso_local global i32 0, align 4
@RB_SWAP_ENABLE = common dso_local global i32 0, align 4
@RPTR_WRITEBACK_SWAP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @sdma_v5_0_gfx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v5_0_gfx_resume(%struct.amdgpu_device* %0) #0 {
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
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %407, %1
  %17 = load i32, i32* %14, align 4
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %410

23:                                               ; preds = %16
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store %struct.amdgpu_ring* %31, %struct.amdgpu_ring** %4, align 8
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL, align 4
  %39 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %36, i32 %37, i32 %38)
  %40 = call i32 @WREG32(i32 %39, i32 0)
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 4
  %45 = call i32 @order_base_2(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @mmSDMA0_GFX_RB_CNTL, align 4
  %49 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %46, i32 %47, i32 %48)
  %50 = call i32 @RREG32(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SDMA0_GFX_RB_CNTL, align 4
  %53 = load i32, i32* @RB_SIZE, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @REG_SET_FIELD(i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @mmSDMA0_GFX_RB_CNTL, align 4
  %59 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %56, i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @WREG32(i32 %59, i32 %60)
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @mmSDMA0_GFX_RB_RPTR, align 4
  %65 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %62, i32 %63, i32 %64)
  %66 = call i32 @WREG32(i32 %65, i32 0)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @mmSDMA0_GFX_RB_RPTR_HI, align 4
  %70 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %67, i32 %68, i32 %69)
  %71 = call i32 @WREG32(i32 %70, i32 0)
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @mmSDMA0_GFX_RB_WPTR, align 4
  %75 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %72, i32 %73, i32 %74)
  %76 = call i32 @WREG32(i32 %75, i32 0)
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @mmSDMA0_GFX_RB_WPTR_HI, align 4
  %80 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %77, i32 %78, i32 %79)
  %81 = call i32 @WREG32(i32 %80, i32 0)
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %87 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %88, 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %85, %90
  store i64 %91, i64* %13, align 8
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @mmSDMA0_GFX_RB_WPTR_POLL_ADDR_LO, align 4
  %95 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %92, i32 %93, i32 %94)
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @lower_32_bits(i64 %96)
  %98 = call i32 @WREG32(i32 %95, i32 %97)
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @mmSDMA0_GFX_RB_WPTR_POLL_ADDR_HI, align 4
  %102 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %99, i32 %100, i32 %101)
  %103 = load i64, i64* %13, align 8
  %104 = call i32 @upper_32_bits(i64 %103)
  %105 = call i32 @WREG32(i32 %102, i32 %104)
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @mmSDMA0_GFX_RB_WPTR_POLL_CNTL, align 4
  %109 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %106, i32 %107, i32 %108)
  %110 = call i32 @RREG32(i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @SDMA0_GFX_RB_WPTR_POLL_CNTL, align 4
  %113 = load i32, i32* @F32_POLL_ENABLE, align 4
  %114 = call i32 @REG_SET_FIELD(i32 %111, i32 %112, i32 %113, i32 1)
  store i32 %114, i32* %12, align 4
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @mmSDMA0_GFX_RB_WPTR_POLL_CNTL, align 4
  %118 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %115, i32 %116, i32 %117)
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @WREG32(i32 %118, i32 %119)
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @mmSDMA0_GFX_RB_RPTR_ADDR_HI, align 4
  %124 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %121, i32 %122, i32 %123)
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %126 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = call i32 @upper_32_bits(i64 %131)
  %133 = call i32 @WREG32(i32 %124, i32 %132)
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @mmSDMA0_GFX_RB_RPTR_ADDR_LO, align 4
  %137 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %134, i32 %135, i32 %136)
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = call i32 @lower_32_bits(i64 %144)
  %146 = and i32 %145, -4
  %147 = call i32 @WREG32(i32 %137, i32 %146)
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @SDMA0_GFX_RB_CNTL, align 4
  %150 = load i32, i32* @RPTR_WRITEBACK_ENABLE, align 4
  %151 = call i32 @REG_SET_FIELD(i32 %148, i32 %149, i32 %150, i32 1)
  store i32 %151, i32* %5, align 4
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* @mmSDMA0_GFX_RB_BASE, align 4
  %155 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %152, i32 %153, i32 %154)
  %156 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %157 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 8
  %160 = call i32 @WREG32(i32 %155, i32 %159)
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* @mmSDMA0_GFX_RB_BASE_HI, align 4
  %164 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %161, i32 %162, i32 %163)
  %165 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %166 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = ashr i32 %167, 40
  %169 = call i32 @WREG32(i32 %164, i32 %168)
  %170 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %171 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %170, i32 0, i32 7
  store i64 0, i64* %171, align 8
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* @mmSDMA0_GFX_MINOR_PTR_UPDATE, align 4
  %175 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %172, i32 %173, i32 %174)
  %176 = call i32 @WREG32(i32 %175, i32 1)
  %177 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %178 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %201, label %180

180:                                              ; preds = %23
  %181 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @mmSDMA0_GFX_RB_WPTR, align 4
  %184 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %181, i32 %182, i32 %183)
  %185 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %186 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %185, i32 0, i32 7
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @lower_32_bits(i64 %187)
  %189 = shl i32 %188, 2
  %190 = call i32 @WREG32(i32 %184, i32 %189)
  %191 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* @mmSDMA0_GFX_RB_WPTR_HI, align 4
  %194 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %191, i32 %192, i32 %193)
  %195 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %196 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %195, i32 0, i32 7
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @upper_32_bits(i64 %197)
  %199 = shl i32 %198, 2
  %200 = call i32 @WREG32(i32 %194, i32 %199)
  br label %201

201:                                              ; preds = %180, %23
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* @mmSDMA0_GFX_DOORBELL, align 4
  %205 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %202, i32 %203, i32 %204)
  %206 = call i32 @RREG32(i32 %205)
  store i32 %206, i32* %9, align 4
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* @mmSDMA0_GFX_DOORBELL_OFFSET, align 4
  %210 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %207, i32 %208, i32 %209)
  %211 = call i32 @RREG32(i32 %210)
  store i32 %211, i32* %10, align 4
  %212 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %213 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %212, i32 0, i32 6
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %228

216:                                              ; preds = %201
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* @SDMA0_GFX_DOORBELL, align 4
  %219 = load i32, i32* @ENABLE, align 4
  %220 = call i32 @REG_SET_FIELD(i32 %217, i32 %218, i32 %219, i32 1)
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @SDMA0_GFX_DOORBELL_OFFSET, align 4
  %223 = load i32, i32* @OFFSET, align 4
  %224 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %225 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @REG_SET_FIELD(i32 %221, i32 %222, i32 %223, i32 %226)
  store i32 %227, i32* %10, align 4
  br label %233

228:                                              ; preds = %201
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* @SDMA0_GFX_DOORBELL, align 4
  %231 = load i32, i32* @ENABLE, align 4
  %232 = call i32 @REG_SET_FIELD(i32 %229, i32 %230, i32 %231, i32 0)
  store i32 %232, i32* %9, align 4
  br label %233

233:                                              ; preds = %228, %216
  %234 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* @mmSDMA0_GFX_DOORBELL, align 4
  %237 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %234, i32 %235, i32 %236)
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @WREG32(i32 %237, i32 %238)
  %240 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* @mmSDMA0_GFX_DOORBELL_OFFSET, align 4
  %243 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %240, i32 %241, i32 %242)
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @WREG32(i32 %243, i32 %244)
  %246 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %247 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %246, i32 0, i32 1
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i32 (%struct.amdgpu_device*, i32, i64, i32, i32)*, i32 (%struct.amdgpu_device*, i32, i64, i32, i32)** %249, align 8
  %251 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %252 = load i32, i32* %14, align 4
  %253 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %254 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %253, i32 0, i32 6
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %257 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = call i32 %250(%struct.amdgpu_device* %251, i32 %252, i64 %255, i32 %258, i32 20)
  %260 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %261 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %233
  %264 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %265 = call i32 @sdma_v5_0_ring_set_wptr(%struct.amdgpu_ring* %264)
  br label %266

266:                                              ; preds = %263, %233
  %267 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %268 = load i32, i32* %14, align 4
  %269 = load i32, i32* @mmSDMA0_GFX_MINOR_PTR_UPDATE, align 4
  %270 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %267, i32 %268, i32 %269)
  %271 = call i32 @WREG32(i32 %270, i32 0)
  %272 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* @mmSDMA0_CNTL, align 4
  %275 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %272, i32 %273, i32 %274)
  %276 = call i32 @RREG32(i32 %275)
  store i32 %276, i32* %11, align 4
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* @SDMA0_CNTL, align 4
  %279 = load i32, i32* @UTC_L1_ENABLE, align 4
  %280 = call i32 @REG_SET_FIELD(i32 %277, i32 %278, i32 %279, i32 1)
  store i32 %280, i32* %11, align 4
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* @SDMA0_CNTL, align 4
  %283 = load i32, i32* @MIDCMD_PREEMPT_ENABLE, align 4
  %284 = call i32 @REG_SET_FIELD(i32 %281, i32 %282, i32 %283, i32 1)
  store i32 %284, i32* %11, align 4
  %285 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* @mmSDMA0_CNTL, align 4
  %288 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %285, i32 %286, i32 %287)
  %289 = load i32, i32* %11, align 4
  %290 = call i32 @WREG32(i32 %288, i32 %289)
  %291 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %292 = load i32, i32* %14, align 4
  %293 = load i32, i32* @mmSDMA0_UTCL1_CNTL, align 4
  %294 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %291, i32 %292, i32 %293)
  %295 = call i32 @RREG32(i32 %294)
  store i32 %295, i32* %11, align 4
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* @SDMA0_UTCL1_CNTL, align 4
  %298 = load i32, i32* @RESP_MODE, align 4
  %299 = call i32 @REG_SET_FIELD(i32 %296, i32 %297, i32 %298, i32 3)
  store i32 %299, i32* %11, align 4
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* @SDMA0_UTCL1_CNTL, align 4
  %302 = load i32, i32* @REDO_DELAY, align 4
  %303 = call i32 @REG_SET_FIELD(i32 %300, i32 %301, i32 %302, i32 9)
  store i32 %303, i32* %11, align 4
  %304 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %305 = load i32, i32* %14, align 4
  %306 = load i32, i32* @mmSDMA0_UTCL1_CNTL, align 4
  %307 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %304, i32 %305, i32 %306)
  %308 = load i32, i32* %11, align 4
  %309 = call i32 @WREG32(i32 %307, i32 %308)
  %310 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %311 = load i32, i32* %14, align 4
  %312 = load i32, i32* @mmSDMA0_UTCL1_PAGE, align 4
  %313 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %310, i32 %311, i32 %312)
  %314 = call i32 @RREG32(i32 %313)
  store i32 %314, i32* %11, align 4
  %315 = load i32, i32* %11, align 4
  %316 = and i32 %315, 16715775
  store i32 %316, i32* %11, align 4
  %317 = load i32, i32* @CACHE_READ_POLICY_L2__DEFAULT, align 4
  %318 = shl i32 %317, 12
  %319 = load i32, i32* @CACHE_WRITE_POLICY_L2__DEFAULT, align 4
  %320 = shl i32 %319, 14
  %321 = or i32 %318, %320
  %322 = load i32, i32* %11, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %11, align 4
  %324 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %325 = load i32, i32* %14, align 4
  %326 = load i32, i32* @mmSDMA0_UTCL1_PAGE, align 4
  %327 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %324, i32 %325, i32 %326)
  %328 = load i32, i32* %11, align 4
  %329 = call i32 @WREG32(i32 %327, i32 %328)
  %330 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %331 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %349, label %333

333:                                              ; preds = %266
  %334 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* @mmSDMA0_F32_CNTL, align 4
  %337 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %334, i32 %335, i32 %336)
  %338 = call i32 @RREG32(i32 %337)
  store i32 %338, i32* %11, align 4
  %339 = load i32, i32* %11, align 4
  %340 = load i32, i32* @SDMA0_F32_CNTL, align 4
  %341 = load i32, i32* @HALT, align 4
  %342 = call i32 @REG_SET_FIELD(i32 %339, i32 %340, i32 %341, i32 0)
  store i32 %342, i32* %11, align 4
  %343 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %344 = load i32, i32* %14, align 4
  %345 = load i32, i32* @mmSDMA0_F32_CNTL, align 4
  %346 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %343, i32 %344, i32 %345)
  %347 = load i32, i32* %11, align 4
  %348 = call i32 @WREG32(i32 %346, i32 %347)
  br label %349

349:                                              ; preds = %333, %266
  %350 = load i32, i32* %5, align 4
  %351 = load i32, i32* @SDMA0_GFX_RB_CNTL, align 4
  %352 = load i32, i32* @RB_ENABLE, align 4
  %353 = call i32 @REG_SET_FIELD(i32 %350, i32 %351, i32 %352, i32 1)
  store i32 %353, i32* %5, align 4
  %354 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %355 = load i32, i32* %14, align 4
  %356 = load i32, i32* @mmSDMA0_GFX_RB_CNTL, align 4
  %357 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %354, i32 %355, i32 %356)
  %358 = load i32, i32* %5, align 4
  %359 = call i32 @WREG32(i32 %357, i32 %358)
  %360 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %361 = load i32, i32* %14, align 4
  %362 = load i32, i32* @mmSDMA0_GFX_IB_CNTL, align 4
  %363 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %360, i32 %361, i32 %362)
  %364 = call i32 @RREG32(i32 %363)
  store i32 %364, i32* %6, align 4
  %365 = load i32, i32* %6, align 4
  %366 = load i32, i32* @SDMA0_GFX_IB_CNTL, align 4
  %367 = load i32, i32* @IB_ENABLE, align 4
  %368 = call i32 @REG_SET_FIELD(i32 %365, i32 %366, i32 %367, i32 1)
  store i32 %368, i32* %6, align 4
  %369 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %370 = load i32, i32* %14, align 4
  %371 = load i32, i32* @mmSDMA0_GFX_IB_CNTL, align 4
  %372 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %369, i32 %370, i32 %371)
  %373 = load i32, i32* %6, align 4
  %374 = call i32 @WREG32(i32 %372, i32 %373)
  %375 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %376 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %375, i32 0, i32 5
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 0
  store i32 1, i32* %377, align 4
  %378 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %379 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %349
  %382 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %383 = call i32 @sdma_v5_0_ctx_switch_enable(%struct.amdgpu_device* %382, i32 1)
  %384 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %385 = call i32 @sdma_v5_0_enable(%struct.amdgpu_device* %384, i32 1)
  br label %386

386:                                              ; preds = %381, %349
  %387 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %388 = call i32 @amdgpu_ring_test_ring(%struct.amdgpu_ring* %387)
  store i32 %388, i32* %15, align 4
  %389 = load i32, i32* %15, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %386
  %392 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %393 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %392, i32 0, i32 5
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 0
  store i32 0, i32* %394, align 4
  %395 = load i32, i32* %15, align 4
  store i32 %395, i32* %2, align 4
  br label %411

396:                                              ; preds = %386
  %397 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %398 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 0
  %400 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %399, align 8
  %401 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %402 = icmp eq %struct.amdgpu_ring* %400, %401
  br i1 %402, label %403, label %406

403:                                              ; preds = %396
  %404 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %405 = call i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device* %404, i32 1)
  br label %406

406:                                              ; preds = %403, %396
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %14, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %14, align 4
  br label %16

410:                                              ; preds = %16
  store i32 0, i32* %2, align 4
  br label %411

411:                                              ; preds = %410, %391
  %412 = load i32, i32* %2, align 4
  ret i32 %412
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @sdma_v5_0_ring_set_wptr(%struct.amdgpu_ring*) #1

declare dso_local i32 @sdma_v5_0_ctx_switch_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @sdma_v5_0_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ring_test_ring(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
