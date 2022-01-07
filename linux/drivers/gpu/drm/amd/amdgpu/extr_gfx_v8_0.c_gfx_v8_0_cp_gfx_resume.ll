; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_cp_gfx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_cp_gfx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@mmCP_RB_WPTR_DELAY = common dso_local global i32 0, align 4
@mmCP_RB_VMID = common dso_local global i32 0, align 4
@CP_RB0_CNTL = common dso_local global i32 0, align 4
@RB_BUFSZ = common dso_local global i32 0, align 4
@RB_BLKSZ = common dso_local global i32 0, align 4
@MTYPE = common dso_local global i32 0, align 4
@MIN_IB_AVAILSZ = common dso_local global i32 0, align 4
@mmCP_RB0_CNTL = common dso_local global i32 0, align 4
@CP_RB0_CNTL__RB_RPTR_WR_ENA_MASK = common dso_local global i32 0, align 4
@mmCP_RB0_WPTR = common dso_local global i32 0, align 4
@mmCP_RB0_RPTR_ADDR = common dso_local global i32 0, align 4
@mmCP_RB0_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_POLL_ADDR_LO = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_POLL_ADDR_HI = common dso_local global i32 0, align 4
@mmCP_RB0_BASE = common dso_local global i32 0, align 4
@mmCP_RB0_BASE_HI = common dso_local global i32 0, align 4
@BUF_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v8_0_cp_gfx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_cp_gfx_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %9 = load i32, i32* @mmCP_RB_WPTR_DELAY, align 4
  %10 = call i32 @WREG32(i32 %9, i32 0)
  %11 = load i32, i32* @mmCP_RB_VMID, align 4
  %12 = call i32 @WREG32(i32 %11, i32 0)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %15, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %16, i64 0
  store %struct.amdgpu_ring* %17, %struct.amdgpu_ring** %3, align 8
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 8
  %22 = call i32 @order_base_2(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @CP_RB0_CNTL, align 4
  %24 = load i32, i32* @RB_BUFSZ, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @REG_SET_FIELD(i32 0, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CP_RB0_CNTL, align 4
  %29 = load i32, i32* @RB_BLKSZ, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %30, 2
  %32 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @CP_RB0_CNTL, align 4
  %35 = load i32, i32* @MTYPE, align 4
  %36 = call i32 @REG_SET_FIELD(i32 %33, i32 %34, i32 %35, i32 3)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @CP_RB0_CNTL, align 4
  %39 = load i32, i32* @MIN_IB_AVAILSZ, align 4
  %40 = call i32 @REG_SET_FIELD(i32 %37, i32 %38, i32 %39, i32 1)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @mmCP_RB0_CNTL, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @WREG32(i32 %41, i32 %42)
  %44 = load i32, i32* @mmCP_RB0_CNTL, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @CP_RB0_CNTL__RB_RPTR_WR_ENA_MASK, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @WREG32(i32 %44, i32 %47)
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %50 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* @mmCP_RB0_WPTR, align 4
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @lower_32_bits(i32 %54)
  %56 = call i32 @WREG32(i32 %51, i32 %55)
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %62 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 4
  %65 = add nsw i32 %60, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @mmCP_RB0_RPTR_ADDR, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @lower_32_bits(i32 %67)
  %69 = call i32 @WREG32(i32 %66, i32 %68)
  %70 = load i32, i32* @mmCP_RB0_RPTR_ADDR_HI, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @upper_32_bits(i32 %71)
  %73 = and i32 %72, 255
  %74 = call i32 @WREG32(i32 %70, i32 %73)
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %80 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 4
  %83 = add nsw i32 %78, %82
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @mmCP_RB_WPTR_POLL_ADDR_LO, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @lower_32_bits(i32 %85)
  %87 = call i32 @WREG32(i32 %84, i32 %86)
  %88 = load i32, i32* @mmCP_RB_WPTR_POLL_ADDR_HI, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @upper_32_bits(i32 %89)
  %91 = call i32 @WREG32(i32 %88, i32 %90)
  %92 = call i32 @mdelay(i32 1)
  %93 = load i32, i32* @mmCP_RB0_CNTL, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @WREG32(i32 %93, i32 %94)
  %96 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %97 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 8
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* @mmCP_RB0_BASE, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @WREG32(i32 %100, i32 %101)
  %103 = load i32, i32* @mmCP_RB0_BASE_HI, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @upper_32_bits(i32 %104)
  %106 = call i32 @WREG32(i32 %103, i32 %105)
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %108 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %109 = call i32 @gfx_v8_0_set_cpg_door_bell(%struct.amdgpu_device* %107, %struct.amdgpu_ring* %108)
  %110 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %111 = call i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring* %110)
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %113 = call i32 @gfx_v8_0_cp_gfx_start(%struct.amdgpu_device* %112)
  %114 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %115 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 4
  ret i32 0
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gfx_v8_0_set_cpg_door_bell(%struct.amdgpu_device*, %struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring*) #1

declare dso_local i32 @gfx_v8_0_cp_gfx_start(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
