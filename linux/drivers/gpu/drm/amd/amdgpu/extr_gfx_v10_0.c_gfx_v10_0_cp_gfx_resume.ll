; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_gfx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_gfx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_DELAY = common dso_local global i32 0, align 4
@mmCP_RB_VMID = common dso_local global i32 0, align 4
@PIPE_ID0 = common dso_local global i32 0, align 4
@CP_RB0_CNTL = common dso_local global i32 0, align 4
@RB_BUFSZ = common dso_local global i32 0, align 4
@RB_BLKSZ = common dso_local global i32 0, align 4
@mmCP_RB0_CNTL = common dso_local global i32 0, align 4
@mmCP_RB0_WPTR = common dso_local global i32 0, align 4
@mmCP_RB0_WPTR_HI = common dso_local global i32 0, align 4
@mmCP_RB0_RPTR_ADDR = common dso_local global i32 0, align 4
@mmCP_RB0_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@CP_RB_RPTR_ADDR_HI__RB_RPTR_ADDR_HI_MASK = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_POLL_ADDR_LO = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_POLL_ADDR_HI = common dso_local global i32 0, align 4
@mmCP_RB0_BASE = common dso_local global i32 0, align 4
@mmCP_RB0_BASE_HI = common dso_local global i32 0, align 4
@mmCP_RB_ACTIVE = common dso_local global i32 0, align 4
@PIPE_ID1 = common dso_local global i32 0, align 4
@CP_RB1_CNTL = common dso_local global i32 0, align 4
@mmCP_RB1_CNTL = common dso_local global i32 0, align 4
@mmCP_RB1_WPTR = common dso_local global i32 0, align 4
@mmCP_RB1_WPTR_HI = common dso_local global i32 0, align 4
@mmCP_RB1_RPTR_ADDR = common dso_local global i32 0, align 4
@mmCP_RB1_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@CP_RB1_RPTR_ADDR_HI__RB_RPTR_ADDR_HI_MASK = common dso_local global i32 0, align 4
@mmCP_RB1_BASE = common dso_local global i32 0, align 4
@mmCP_RB1_BASE_HI = common dso_local global i32 0, align 4
@mmCP_RB1_ACTIVE = common dso_local global i32 0, align 4
@BUF_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v10_0_cp_gfx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_cp_gfx_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %10 = load i32, i32* @GC, align 4
  %11 = load i32, i32* @mmCP_RB_WPTR_DELAY, align 4
  %12 = call i32 @WREG32_SOC15(i32 %10, i32 0, i32 %11, i32 0)
  %13 = load i32, i32* @GC, align 4
  %14 = load i32, i32* @mmCP_RB_VMID, align 4
  %15 = call i32 @WREG32_SOC15(i32 %13, i32 0, i32 %14, i32 0)
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = load i32, i32* @PIPE_ID0, align 4
  %21 = call i32 @gfx_v10_0_cp_gfx_switch_pipe(%struct.amdgpu_device* %19, i32 %20)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %27, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %28, i64 0
  store %struct.amdgpu_ring* %29, %struct.amdgpu_ring** %3, align 8
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 8
  %34 = call i32 @order_base_2(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @CP_RB0_CNTL, align 4
  %36 = load i32, i32* @RB_BUFSZ, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @REG_SET_FIELD(i32 0, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @CP_RB0_CNTL, align 4
  %41 = load i32, i32* @RB_BLKSZ, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %42, 2
  %44 = call i32 @REG_SET_FIELD(i32 %39, i32 %40, i32 %41, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @GC, align 4
  %46 = load i32, i32* @mmCP_RB0_CNTL, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @WREG32_SOC15(i32 %45, i32 0, i32 %46, i32 %47)
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %50 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* @GC, align 4
  %52 = load i32, i32* @mmCP_RB0_WPTR, align 4
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @lower_32_bits(i32 %55)
  %57 = call i32 @WREG32_SOC15(i32 %51, i32 0, i32 %52, i32 %56)
  %58 = load i32, i32* @GC, align 4
  %59 = load i32, i32* @mmCP_RB0_WPTR_HI, align 4
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @upper_32_bits(i32 %62)
  %64 = call i32 @WREG32_SOC15(i32 %58, i32 0, i32 %59, i32 %63)
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %70 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 4
  %73 = add nsw i32 %68, %72
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @GC, align 4
  %75 = load i32, i32* @mmCP_RB0_RPTR_ADDR, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @lower_32_bits(i32 %76)
  %78 = call i32 @WREG32_SOC15(i32 %74, i32 0, i32 %75, i32 %77)
  %79 = load i32, i32* @GC, align 4
  %80 = load i32, i32* @mmCP_RB0_RPTR_ADDR_HI, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @upper_32_bits(i32 %81)
  %83 = load i32, i32* @CP_RB_RPTR_ADDR_HI__RB_RPTR_ADDR_HI_MASK, align 4
  %84 = and i32 %82, %83
  %85 = call i32 @WREG32_SOC15(i32 %79, i32 0, i32 %80, i32 %84)
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %91 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 4
  %94 = add nsw i32 %89, %93
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @GC, align 4
  %96 = load i32, i32* @mmCP_RB_WPTR_POLL_ADDR_LO, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @lower_32_bits(i32 %97)
  %99 = call i32 @WREG32_SOC15(i32 %95, i32 0, i32 %96, i32 %98)
  %100 = load i32, i32* @GC, align 4
  %101 = load i32, i32* @mmCP_RB_WPTR_POLL_ADDR_HI, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @upper_32_bits(i32 %102)
  %104 = call i32 @WREG32_SOC15(i32 %100, i32 0, i32 %101, i32 %103)
  %105 = call i32 @mdelay(i32 1)
  %106 = load i32, i32* @GC, align 4
  %107 = load i32, i32* @mmCP_RB0_CNTL, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @WREG32_SOC15(i32 %106, i32 0, i32 %107, i32 %108)
  %110 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %111 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 8
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* @GC, align 4
  %115 = load i32, i32* @mmCP_RB0_BASE, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @WREG32_SOC15(i32 %114, i32 0, i32 %115, i32 %116)
  %118 = load i32, i32* @GC, align 4
  %119 = load i32, i32* @mmCP_RB0_BASE_HI, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @upper_32_bits(i32 %120)
  %122 = call i32 @WREG32_SOC15(i32 %118, i32 0, i32 %119, i32 %121)
  %123 = load i32, i32* @GC, align 4
  %124 = load i32, i32* @mmCP_RB_ACTIVE, align 4
  %125 = call i32 @WREG32_SOC15(i32 %123, i32 0, i32 %124, i32 1)
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %127 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %128 = call i32 @gfx_v10_0_cp_gfx_set_doorbell(%struct.amdgpu_device* %126, %struct.amdgpu_ring* %127)
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %130 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %129, i32 0, i32 1
  %131 = call i32 @mutex_lock(i32* %130)
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %133 = load i32, i32* @PIPE_ID1, align 4
  %134 = call i32 @gfx_v10_0_cp_gfx_switch_pipe(%struct.amdgpu_device* %132, i32 %133)
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 1
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %140, align 8
  %142 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %141, i64 1
  store %struct.amdgpu_ring* %142, %struct.amdgpu_ring** %3, align 8
  %143 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %144 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sdiv i32 %145, 8
  %147 = call i32 @order_base_2(i32 %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* @CP_RB1_CNTL, align 4
  %149 = load i32, i32* @RB_BUFSZ, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @REG_SET_FIELD(i32 0, i32 %148, i32 %149, i32 %150)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @CP_RB1_CNTL, align 4
  %154 = load i32, i32* @RB_BLKSZ, align 4
  %155 = load i32, i32* %5, align 4
  %156 = sub nsw i32 %155, 2
  %157 = call i32 @REG_SET_FIELD(i32 %152, i32 %153, i32 %154, i32 %156)
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* @GC, align 4
  %159 = load i32, i32* @mmCP_RB1_CNTL, align 4
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @WREG32_SOC15(i32 %158, i32 0, i32 %159, i32 %160)
  %162 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %163 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %162, i32 0, i32 1
  store i32 0, i32* %163, align 4
  %164 = load i32, i32* @GC, align 4
  %165 = load i32, i32* @mmCP_RB1_WPTR, align 4
  %166 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %167 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @lower_32_bits(i32 %168)
  %170 = call i32 @WREG32_SOC15(i32 %164, i32 0, i32 %165, i32 %169)
  %171 = load i32, i32* @GC, align 4
  %172 = load i32, i32* @mmCP_RB1_WPTR_HI, align 4
  %173 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %174 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @upper_32_bits(i32 %175)
  %177 = call i32 @WREG32_SOC15(i32 %171, i32 0, i32 %172, i32 %176)
  %178 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %179 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %183 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %184, 4
  %186 = add nsw i32 %181, %185
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* @GC, align 4
  %188 = load i32, i32* @mmCP_RB1_RPTR_ADDR, align 4
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @lower_32_bits(i32 %189)
  %191 = call i32 @WREG32_SOC15(i32 %187, i32 0, i32 %188, i32 %190)
  %192 = load i32, i32* @GC, align 4
  %193 = load i32, i32* @mmCP_RB1_RPTR_ADDR_HI, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @upper_32_bits(i32 %194)
  %196 = load i32, i32* @CP_RB1_RPTR_ADDR_HI__RB_RPTR_ADDR_HI_MASK, align 4
  %197 = and i32 %195, %196
  %198 = call i32 @WREG32_SOC15(i32 %192, i32 0, i32 %193, i32 %197)
  %199 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %200 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %204 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %205, 4
  %207 = add nsw i32 %202, %206
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* @GC, align 4
  %209 = load i32, i32* @mmCP_RB_WPTR_POLL_ADDR_LO, align 4
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @lower_32_bits(i32 %210)
  %212 = call i32 @WREG32_SOC15(i32 %208, i32 0, i32 %209, i32 %211)
  %213 = load i32, i32* @GC, align 4
  %214 = load i32, i32* @mmCP_RB_WPTR_POLL_ADDR_HI, align 4
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @upper_32_bits(i32 %215)
  %217 = call i32 @WREG32_SOC15(i32 %213, i32 0, i32 %214, i32 %216)
  %218 = call i32 @mdelay(i32 1)
  %219 = load i32, i32* @GC, align 4
  %220 = load i32, i32* @mmCP_RB1_CNTL, align 4
  %221 = load i32, i32* %4, align 4
  %222 = call i32 @WREG32_SOC15(i32 %219, i32 0, i32 %220, i32 %221)
  %223 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %224 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = ashr i32 %225, 8
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* @GC, align 4
  %228 = load i32, i32* @mmCP_RB1_BASE, align 4
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @WREG32_SOC15(i32 %227, i32 0, i32 %228, i32 %229)
  %231 = load i32, i32* @GC, align 4
  %232 = load i32, i32* @mmCP_RB1_BASE_HI, align 4
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @upper_32_bits(i32 %233)
  %235 = call i32 @WREG32_SOC15(i32 %231, i32 0, i32 %232, i32 %234)
  %236 = load i32, i32* @GC, align 4
  %237 = load i32, i32* @mmCP_RB1_ACTIVE, align 4
  %238 = call i32 @WREG32_SOC15(i32 %236, i32 0, i32 %237, i32 1)
  %239 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %240 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %241 = call i32 @gfx_v10_0_cp_gfx_set_doorbell(%struct.amdgpu_device* %239, %struct.amdgpu_ring* %240)
  %242 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %243 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %242, i32 0, i32 1
  %244 = call i32 @mutex_lock(i32* %243)
  %245 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %246 = load i32, i32* @PIPE_ID0, align 4
  %247 = call i32 @gfx_v10_0_cp_gfx_switch_pipe(%struct.amdgpu_device* %245, i32 %246)
  %248 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %249 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %248, i32 0, i32 1
  %250 = call i32 @mutex_unlock(i32* %249)
  %251 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %252 = call i32 @gfx_v10_0_cp_gfx_start(%struct.amdgpu_device* %251)
  store i32 0, i32* %9, align 4
  br label %253

253:                                              ; preds = %271, %1
  %254 = load i32, i32* %9, align 4
  %255 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %256 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp slt i32 %254, %258
  br i1 %259, label %260, label %274

260:                                              ; preds = %253
  %261 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %262 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %264, i64 %266
  store %struct.amdgpu_ring* %267, %struct.amdgpu_ring** %3, align 8
  %268 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %269 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  store i32 1, i32* %270, align 4
  br label %271

271:                                              ; preds = %260
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %9, align 4
  br label %253

274:                                              ; preds = %253
  ret i32 0
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v10_0_cp_gfx_switch_pipe(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gfx_v10_0_cp_gfx_set_doorbell(%struct.amdgpu_device*, %struct.amdgpu_ring*) #1

declare dso_local i32 @gfx_v10_0_cp_gfx_start(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
