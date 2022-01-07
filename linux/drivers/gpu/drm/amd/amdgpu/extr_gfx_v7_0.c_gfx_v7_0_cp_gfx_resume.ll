; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_cp_gfx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_cp_gfx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, i32 }

@mmCP_SEM_WAIT_TIMER = common dso_local global i32 0, align 4
@CHIP_HAWAII = common dso_local global i64 0, align 8
@mmCP_SEM_INCOMPLETE_TIMER_CNTL = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_DELAY = common dso_local global i32 0, align 4
@mmCP_RB_VMID = common dso_local global i32 0, align 4
@mmSCRATCH_ADDR = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@mmCP_RB0_CNTL = common dso_local global i32 0, align 4
@CP_RB0_CNTL__RB_RPTR_WR_ENA_MASK = common dso_local global i32 0, align 4
@mmCP_RB0_WPTR = common dso_local global i32 0, align 4
@mmCP_RB0_RPTR_ADDR = common dso_local global i32 0, align 4
@mmCP_RB0_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@mmSCRATCH_UMSK = common dso_local global i32 0, align 4
@mmCP_RB0_BASE = common dso_local global i32 0, align 4
@mmCP_RB0_BASE_HI = common dso_local global i32 0, align 4
@CP_RB0_CNTL__BUF_SWAP__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v7_0_cp_gfx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_cp_gfx_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %10 = load i32, i32* @mmCP_SEM_WAIT_TIMER, align 4
  %11 = call i32 @WREG32(i32 %10, i32 0)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CHIP_HAWAII, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @mmCP_SEM_INCOMPLETE_TIMER_CNTL, align 4
  %19 = call i32 @WREG32(i32 %18, i32 0)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* @mmCP_RB_WPTR_DELAY, align 4
  %22 = call i32 @WREG32(i32 %21, i32 0)
  %23 = load i32, i32* @mmCP_RB_VMID, align 4
  %24 = call i32 @WREG32(i32 %23, i32 0)
  %25 = load i32, i32* @mmSCRATCH_ADDR, align 4
  %26 = call i32 @WREG32(i32 %25, i32 0)
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %29, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %30, i64 0
  store %struct.amdgpu_ring* %31, %struct.amdgpu_ring** %4, align 8
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 8
  %36 = call i32 @order_base_2(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %38 = sdiv i32 %37, 8
  %39 = call i32 @order_base_2(i32 %38)
  %40 = shl i32 %39, 8
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @mmCP_RB0_CNTL, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @WREG32(i32 %43, i32 %44)
  %46 = load i32, i32* @mmCP_RB0_CNTL, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @CP_RB0_CNTL__RB_RPTR_WR_ENA_MASK, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @WREG32(i32 %46, i32 %49)
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* @mmCP_RB0_WPTR, align 4
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lower_32_bits(i32 %56)
  %58 = call i32 @WREG32(i32 %53, i32 %57)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, 4
  %67 = add nsw i32 %62, %66
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @mmCP_RB0_RPTR_ADDR, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @lower_32_bits(i32 %69)
  %71 = call i32 @WREG32(i32 %68, i32 %70)
  %72 = load i32, i32* @mmCP_RB0_RPTR_ADDR_HI, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @upper_32_bits(i32 %73)
  %75 = and i32 %74, 255
  %76 = call i32 @WREG32(i32 %72, i32 %75)
  %77 = load i32, i32* @mmSCRATCH_UMSK, align 4
  %78 = call i32 @WREG32(i32 %77, i32 0)
  %79 = call i32 @mdelay(i32 1)
  %80 = load i32, i32* @mmCP_RB0_CNTL, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @WREG32(i32 %80, i32 %81)
  %83 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 8
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @mmCP_RB0_BASE, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @WREG32(i32 %87, i32 %88)
  %90 = load i32, i32* @mmCP_RB0_BASE_HI, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @upper_32_bits(i32 %91)
  %93 = call i32 @WREG32(i32 %90, i32 %92)
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %95 = call i32 @gfx_v7_0_cp_gfx_start(%struct.amdgpu_device* %94)
  %96 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %97 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %20
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %2, align 4
  br label %103

102:                                              ; preds = %20
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %100
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gfx_v7_0_cp_gfx_start(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
