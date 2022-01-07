; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_cp_gfx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_cp_gfx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, i32 }

@mmCP_SEM_WAIT_TIMER = common dso_local global i32 0, align 4
@mmCP_SEM_INCOMPLETE_TIMER_CNTL = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_DELAY = common dso_local global i32 0, align 4
@mmCP_DEBUG = common dso_local global i32 0, align 4
@mmSCRATCH_ADDR = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@mmCP_RB0_CNTL = common dso_local global i32 0, align 4
@CP_RB0_CNTL__RB_RPTR_WR_ENA_MASK = common dso_local global i32 0, align 4
@mmCP_RB0_WPTR = common dso_local global i32 0, align 4
@mmCP_RB0_RPTR_ADDR = common dso_local global i32 0, align 4
@mmCP_RB0_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@mmSCRATCH_UMSK = common dso_local global i32 0, align 4
@mmCP_RB0_BASE = common dso_local global i32 0, align 4
@BUF_SWAP_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v6_0_cp_gfx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v6_0_cp_gfx_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %9 = load i32, i32* @mmCP_SEM_WAIT_TIMER, align 4
  %10 = call i32 @WREG32(i32 %9, i32 0)
  %11 = load i32, i32* @mmCP_SEM_INCOMPLETE_TIMER_CNTL, align 4
  %12 = call i32 @WREG32(i32 %11, i32 0)
  %13 = load i32, i32* @mmCP_RB_WPTR_DELAY, align 4
  %14 = call i32 @WREG32(i32 %13, i32 0)
  %15 = load i32, i32* @mmCP_DEBUG, align 4
  %16 = call i32 @WREG32(i32 %15, i32 0)
  %17 = load i32, i32* @mmSCRATCH_ADDR, align 4
  %18 = call i32 @WREG32(i32 %17, i32 0)
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %21, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %22, i64 0
  store %struct.amdgpu_ring* %23, %struct.amdgpu_ring** %4, align 8
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 8
  %28 = call i32 @order_base_2(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %30 = sdiv i32 %29, 8
  %31 = call i32 @order_base_2(i32 %30)
  %32 = shl i32 %31, 8
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @mmCP_RB0_CNTL, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @WREG32(i32 %35, i32 %36)
  %38 = load i32, i32* @mmCP_RB0_CNTL, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @CP_RB0_CNTL__RB_RPTR_WR_ENA_MASK, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @WREG32(i32 %38, i32 %41)
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* @mmCP_RB0_WPTR, align 4
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %47 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @WREG32(i32 %45, i32 %48)
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %53, %58
  store i64 %59, i64* %8, align 8
  %60 = load i32, i32* @mmCP_RB0_RPTR_ADDR, align 4
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @lower_32_bits(i64 %61)
  %63 = call i32 @WREG32(i32 %60, i32 %62)
  %64 = load i32, i32* @mmCP_RB0_RPTR_ADDR_HI, align 4
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @upper_32_bits(i64 %65)
  %67 = and i32 %66, 255
  %68 = call i32 @WREG32(i32 %64, i32 %67)
  %69 = load i32, i32* @mmSCRATCH_UMSK, align 4
  %70 = call i32 @WREG32(i32 %69, i32 0)
  %71 = call i32 @mdelay(i32 1)
  %72 = load i32, i32* @mmCP_RB0_CNTL, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @WREG32(i32 %72, i32 %73)
  %75 = load i32, i32* @mmCP_RB0_BASE, align 4
  %76 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %77 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 8
  %80 = call i32 @WREG32(i32 %75, i32 %79)
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %82 = call i32 @gfx_v6_0_cp_gfx_start(%struct.amdgpu_device* %81)
  %83 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %84 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %1
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %87
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gfx_v6_0_cp_gfx_start(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
