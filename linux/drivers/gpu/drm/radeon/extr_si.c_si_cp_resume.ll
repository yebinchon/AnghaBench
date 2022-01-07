; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_cp_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_cp_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.radeon_ring*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.radeon_ring = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }

@CP_SEM_WAIT_TIMER = common dso_local global i32 0, align 4
@CP_SEM_INCOMPLETE_TIMER_CNTL = common dso_local global i32 0, align 4
@CP_RB_WPTR_DELAY = common dso_local global i32 0, align 4
@CP_DEBUG = common dso_local global i32 0, align 4
@SCRATCH_ADDR = common dso_local global i32 0, align 4
@RADEON_WB_SCRATCH_OFFSET = common dso_local global i32 0, align 4
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@CP_RB0_CNTL = common dso_local global i32 0, align 4
@RB_RPTR_WR_ENA = common dso_local global i32 0, align 4
@CP_RB0_WPTR = common dso_local global i32 0, align 4
@CP_RB0_RPTR_ADDR = common dso_local global i32 0, align 4
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@CP_RB0_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@SCRATCH_UMSK = common dso_local global i32 0, align 4
@RB_NO_UPDATE = common dso_local global i32 0, align 4
@CP_RB0_BASE = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@CP_RB1_CNTL = common dso_local global i32 0, align 4
@CP_RB1_WPTR = common dso_local global i32 0, align 4
@CP_RB1_RPTR_ADDR = common dso_local global i32 0, align 4
@RADEON_WB_CP1_RPTR_OFFSET = common dso_local global i32 0, align 4
@CP_RB1_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@CP_RB1_BASE = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP2_INDEX = common dso_local global i64 0, align 8
@CP_RB2_CNTL = common dso_local global i32 0, align 4
@CP_RB2_WPTR = common dso_local global i32 0, align 4
@CP_RB2_RPTR_ADDR = common dso_local global i32 0, align 4
@RADEON_WB_CP2_RPTR_OFFSET = common dso_local global i32 0, align 4
@CP_RB2_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@CP_RB2_BASE = common dso_local global i32 0, align 4
@BUF_SWAP_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_cp_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_cp_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call i32 @si_enable_gui_idle_interrupt(%struct.radeon_device* %8, i32 0)
  %10 = load i32, i32* @CP_SEM_WAIT_TIMER, align 4
  %11 = call i32 @WREG32(i32 %10, i32 0)
  %12 = load i32, i32* @CP_SEM_INCOMPLETE_TIMER_CNTL, align 4
  %13 = call i32 @WREG32(i32 %12, i32 0)
  %14 = load i32, i32* @CP_RB_WPTR_DELAY, align 4
  %15 = call i32 @WREG32(i32 %14, i32 0)
  %16 = load i32, i32* @CP_DEBUG, align 4
  %17 = call i32 @WREG32(i32 %16, i32 0)
  %18 = load i32, i32* @SCRATCH_ADDR, align 4
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RADEON_WB_SCRATCH_OFFSET, align 4
  %24 = add nsw i32 %22, %23
  %25 = ashr i32 %24, 8
  %26 = call i32 @WREG32(i32 %18, i32 %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 2
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %28, align 8
  %30 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %31 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %29, i64 %30
  store %struct.radeon_ring* %31, %struct.radeon_ring** %4, align 8
  %32 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 8
  %36 = call i32 @order_base_2(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %38 = sdiv i32 %37, 8
  %39 = call i32 @order_base_2(i32 %38)
  %40 = shl i32 %39, 8
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @CP_RB0_CNTL, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @WREG32(i32 %43, i32 %44)
  %46 = load i32, i32* @CP_RB0_CNTL, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @RB_RPTR_WR_ENA, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @WREG32(i32 %46, i32 %49)
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %52 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* @CP_RB0_WPTR, align 4
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %55 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @WREG32(i32 %53, i32 %56)
  %58 = load i32, i32* @CP_RB0_RPTR_ADDR, align 4
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %64 = add nsw i32 %62, %63
  %65 = and i32 %64, -4
  %66 = call i32 @WREG32(i32 %58, i32 %65)
  %67 = load i32, i32* @CP_RB0_RPTR_ADDR_HI, align 4
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @upper_32_bits(i32 %73)
  %75 = and i32 %74, 255
  %76 = call i32 @WREG32(i32 %67, i32 %75)
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %1
  %83 = load i32, i32* @SCRATCH_UMSK, align 4
  %84 = call i32 @WREG32(i32 %83, i32 255)
  br label %91

85:                                               ; preds = %1
  %86 = load i32, i32* @RB_NO_UPDATE, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* @SCRATCH_UMSK, align 4
  %90 = call i32 @WREG32(i32 %89, i32 0)
  br label %91

91:                                               ; preds = %85, %82
  %92 = call i32 @mdelay(i32 1)
  %93 = load i32, i32* @CP_RB0_CNTL, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @WREG32(i32 %93, i32 %94)
  %96 = load i32, i32* @CP_RB0_BASE, align 4
  %97 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %98 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 8
  %101 = call i32 @WREG32(i32 %96, i32 %100)
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 2
  %104 = load %struct.radeon_ring*, %struct.radeon_ring** %103, align 8
  %105 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %106 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %104, i64 %105
  store %struct.radeon_ring* %106, %struct.radeon_ring** %4, align 8
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %108 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 8
  %111 = call i32 @order_base_2(i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %113 = sdiv i32 %112, 8
  %114 = call i32 @order_base_2(i32 %113)
  %115 = shl i32 %114, 8
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* @CP_RB1_CNTL, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @WREG32(i32 %118, i32 %119)
  %121 = load i32, i32* @CP_RB1_CNTL, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @RB_RPTR_WR_ENA, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @WREG32(i32 %121, i32 %124)
  %126 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %127 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %126, i32 0, i32 1
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* @CP_RB1_WPTR, align 4
  %129 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %130 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @WREG32(i32 %128, i32 %131)
  %133 = load i32, i32* @CP_RB1_RPTR_ADDR, align 4
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @RADEON_WB_CP1_RPTR_OFFSET, align 4
  %139 = add nsw i32 %137, %138
  %140 = and i32 %139, -4
  %141 = call i32 @WREG32(i32 %133, i32 %140)
  %142 = load i32, i32* @CP_RB1_RPTR_ADDR_HI, align 4
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @RADEON_WB_CP1_RPTR_OFFSET, align 4
  %148 = add nsw i32 %146, %147
  %149 = call i32 @upper_32_bits(i32 %148)
  %150 = and i32 %149, 255
  %151 = call i32 @WREG32(i32 %142, i32 %150)
  %152 = call i32 @mdelay(i32 1)
  %153 = load i32, i32* @CP_RB1_CNTL, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @WREG32(i32 %153, i32 %154)
  %156 = load i32, i32* @CP_RB1_BASE, align 4
  %157 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %158 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 8
  %161 = call i32 @WREG32(i32 %156, i32 %160)
  %162 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 2
  %164 = load %struct.radeon_ring*, %struct.radeon_ring** %163, align 8
  %165 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %166 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %164, i64 %165
  store %struct.radeon_ring* %166, %struct.radeon_ring** %4, align 8
  %167 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %168 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sdiv i32 %169, 8
  %171 = call i32 @order_base_2(i32 %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %173 = sdiv i32 %172, 8
  %174 = call i32 @order_base_2(i32 %173)
  %175 = shl i32 %174, 8
  %176 = load i32, i32* %6, align 4
  %177 = or i32 %175, %176
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* @CP_RB2_CNTL, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @WREG32(i32 %178, i32 %179)
  %181 = load i32, i32* @CP_RB2_CNTL, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @RB_RPTR_WR_ENA, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @WREG32(i32 %181, i32 %184)
  %186 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %187 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %186, i32 0, i32 1
  store i32 0, i32* %187, align 4
  %188 = load i32, i32* @CP_RB2_WPTR, align 4
  %189 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %190 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @WREG32(i32 %188, i32 %191)
  %193 = load i32, i32* @CP_RB2_RPTR_ADDR, align 4
  %194 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %195 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @RADEON_WB_CP2_RPTR_OFFSET, align 4
  %199 = add nsw i32 %197, %198
  %200 = and i32 %199, -4
  %201 = call i32 @WREG32(i32 %193, i32 %200)
  %202 = load i32, i32* @CP_RB2_RPTR_ADDR_HI, align 4
  %203 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %204 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @RADEON_WB_CP2_RPTR_OFFSET, align 4
  %208 = add nsw i32 %206, %207
  %209 = call i32 @upper_32_bits(i32 %208)
  %210 = and i32 %209, 255
  %211 = call i32 @WREG32(i32 %202, i32 %210)
  %212 = call i32 @mdelay(i32 1)
  %213 = load i32, i32* @CP_RB2_CNTL, align 4
  %214 = load i32, i32* %5, align 4
  %215 = call i32 @WREG32(i32 %213, i32 %214)
  %216 = load i32, i32* @CP_RB2_BASE, align 4
  %217 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %218 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = ashr i32 %219, 8
  %221 = call i32 @WREG32(i32 %216, i32 %220)
  %222 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %223 = call i32 @si_cp_start(%struct.radeon_device* %222)
  %224 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 2
  %226 = load %struct.radeon_ring*, %struct.radeon_ring** %225, align 8
  %227 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %228 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %226, i64 %227
  %229 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %228, i32 0, i32 3
  store i32 1, i32* %229, align 4
  %230 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %231 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %230, i32 0, i32 2
  %232 = load %struct.radeon_ring*, %struct.radeon_ring** %231, align 8
  %233 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %234 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %232, i64 %233
  %235 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %234, i32 0, i32 3
  store i32 1, i32* %235, align 4
  %236 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %237 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %236, i32 0, i32 2
  %238 = load %struct.radeon_ring*, %struct.radeon_ring** %237, align 8
  %239 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %240 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %238, i64 %239
  %241 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %240, i32 0, i32 3
  store i32 1, i32* %241, align 4
  %242 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %243 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %244 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %245 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %244, i32 0, i32 2
  %246 = load %struct.radeon_ring*, %struct.radeon_ring** %245, align 8
  %247 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %248 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %246, i64 %247
  %249 = call i32 @radeon_ring_test(%struct.radeon_device* %242, i64 %243, %struct.radeon_ring* %248)
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %272

252:                                              ; preds = %91
  %253 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %254 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %253, i32 0, i32 2
  %255 = load %struct.radeon_ring*, %struct.radeon_ring** %254, align 8
  %256 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %257 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %255, i64 %256
  %258 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %257, i32 0, i32 3
  store i32 0, i32* %258, align 4
  %259 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %260 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %259, i32 0, i32 2
  %261 = load %struct.radeon_ring*, %struct.radeon_ring** %260, align 8
  %262 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %263 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %261, i64 %262
  %264 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %263, i32 0, i32 3
  store i32 0, i32* %264, align 4
  %265 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %266 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %265, i32 0, i32 2
  %267 = load %struct.radeon_ring*, %struct.radeon_ring** %266, align 8
  %268 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %269 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %267, i64 %268
  %270 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %269, i32 0, i32 3
  store i32 0, i32* %270, align 4
  %271 = load i32, i32* %7, align 4
  store i32 %271, i32* %2, align 4
  br label %327

272:                                              ; preds = %91
  %273 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %274 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %275 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %276 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %275, i32 0, i32 2
  %277 = load %struct.radeon_ring*, %struct.radeon_ring** %276, align 8
  %278 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %279 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %277, i64 %278
  %280 = call i32 @radeon_ring_test(%struct.radeon_device* %273, i64 %274, %struct.radeon_ring* %279)
  store i32 %280, i32* %7, align 4
  %281 = load i32, i32* %7, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %272
  %284 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %285 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %284, i32 0, i32 2
  %286 = load %struct.radeon_ring*, %struct.radeon_ring** %285, align 8
  %287 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %288 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %286, i64 %287
  %289 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %288, i32 0, i32 3
  store i32 0, i32* %289, align 4
  br label %290

290:                                              ; preds = %283, %272
  %291 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %292 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %293 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %294 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %293, i32 0, i32 2
  %295 = load %struct.radeon_ring*, %struct.radeon_ring** %294, align 8
  %296 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %297 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %295, i64 %296
  %298 = call i32 @radeon_ring_test(%struct.radeon_device* %291, i64 %292, %struct.radeon_ring* %297)
  store i32 %298, i32* %7, align 4
  %299 = load i32, i32* %7, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %290
  %302 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %303 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %302, i32 0, i32 2
  %304 = load %struct.radeon_ring*, %struct.radeon_ring** %303, align 8
  %305 = load i64, i64* @CAYMAN_RING_TYPE_CP2_INDEX, align 8
  %306 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %304, i64 %305
  %307 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %306, i32 0, i32 3
  store i32 0, i32* %307, align 4
  br label %308

308:                                              ; preds = %301, %290
  %309 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %310 = call i32 @si_enable_gui_idle_interrupt(%struct.radeon_device* %309, i32 1)
  %311 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %312 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %311, i32 0, i32 1
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %326

319:                                              ; preds = %308
  %320 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %321 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %322 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device* %320, i32 %324)
  br label %326

326:                                              ; preds = %319, %308
  store i32 0, i32* %2, align 4
  br label %327

327:                                              ; preds = %326, %252
  %328 = load i32, i32* %2, align 4
  ret i32 %328
}

declare dso_local i32 @si_enable_gui_idle_interrupt(%struct.radeon_device*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @si_cp_start(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_test(%struct.radeon_device*, i64, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
