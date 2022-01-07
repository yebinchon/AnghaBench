; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_cp_gfx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_cp_gfx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.radeon_ring*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.radeon_ring = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@CP_SEM_WAIT_TIMER = common dso_local global i32 0, align 4
@CHIP_HAWAII = common dso_local global i64 0, align 8
@CP_SEM_INCOMPLETE_TIMER_CNTL = common dso_local global i32 0, align 4
@CP_RB_WPTR_DELAY = common dso_local global i32 0, align 4
@CP_RB_VMID = common dso_local global i32 0, align 4
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
@CP_RB0_BASE_HI = common dso_local global i32 0, align 4
@BUF_SWAP_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_cp_gfx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_cp_gfx_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load i32, i32* @CP_SEM_WAIT_TIMER, align 4
  %10 = call i32 @WREG32(i32 %9, i32 0)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHIP_HAWAII, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @CP_SEM_INCOMPLETE_TIMER_CNTL, align 4
  %18 = call i32 @WREG32(i32 %17, i32 0)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* @CP_RB_WPTR_DELAY, align 4
  %21 = call i32 @WREG32(i32 %20, i32 0)
  %22 = load i32, i32* @CP_RB_VMID, align 4
  %23 = call i32 @WREG32(i32 %22, i32 0)
  %24 = load i32, i32* @SCRATCH_ADDR, align 4
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RADEON_WB_SCRATCH_OFFSET, align 4
  %30 = add nsw i32 %28, %29
  %31 = ashr i32 %30, 8
  %32 = call i32 @WREG32(i32 %24, i32 %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 3
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %34, align 8
  %36 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %37 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %35, i64 %36
  store %struct.radeon_ring* %37, %struct.radeon_ring** %4, align 8
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %39 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 8
  %42 = call i32 @order_base_2(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %44 = sdiv i32 %43, 8
  %45 = call i32 @order_base_2(i32 %44)
  %46 = shl i32 %45, 8
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @CP_RB0_CNTL, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @WREG32(i32 %49, i32 %50)
  %52 = load i32, i32* @CP_RB0_CNTL, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @RB_RPTR_WR_ENA, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @WREG32(i32 %52, i32 %55)
  %57 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %58 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* @CP_RB0_WPTR, align 4
  %60 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %61 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @WREG32(i32 %59, i32 %62)
  %64 = load i32, i32* @CP_RB0_RPTR_ADDR, align 4
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %70 = add nsw i32 %68, %69
  %71 = and i32 %70, -4
  %72 = call i32 @WREG32(i32 %64, i32 %71)
  %73 = load i32, i32* @CP_RB0_RPTR_ADDR_HI, align 4
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 @upper_32_bits(i32 %79)
  %81 = and i32 %80, 255
  %82 = call i32 @WREG32(i32 %73, i32 %81)
  %83 = load i32, i32* @SCRATCH_UMSK, align 4
  %84 = call i32 @WREG32(i32 %83, i32 0)
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %19
  %91 = load i32, i32* @RB_NO_UPDATE, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %19
  %95 = call i32 @mdelay(i32 1)
  %96 = load i32, i32* @CP_RB0_CNTL, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @WREG32(i32 %96, i32 %97)
  %99 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %100 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 8
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @CP_RB0_BASE, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @WREG32(i32 %103, i32 %104)
  %106 = load i32, i32* @CP_RB0_BASE_HI, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @upper_32_bits(i32 %107)
  %109 = call i32 @WREG32(i32 %106, i32 %108)
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = call i32 @cik_cp_gfx_start(%struct.radeon_device* %110)
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 3
  %114 = load %struct.radeon_ring*, %struct.radeon_ring** %113, align 8
  %115 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %116 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %114, i64 %115
  %117 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %116, i32 0, i32 3
  store i32 1, i32* %117, align 4
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %120, i32 0, i32 3
  %122 = load %struct.radeon_ring*, %struct.radeon_ring** %121, align 8
  %123 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %124 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %122, i64 %123
  %125 = call i32 @radeon_ring_test(%struct.radeon_device* %118, i64 %119, %struct.radeon_ring* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %94
  %129 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %130 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %129, i32 0, i32 3
  %131 = load %struct.radeon_ring*, %struct.radeon_ring** %130, align 8
  %132 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %133 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %131, i64 %132
  %134 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %133, i32 0, i32 3
  store i32 0, i32* %134, align 4
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %2, align 4
  br label %153

136:                                              ; preds = %94
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 2
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %136
  %146 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %147 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device* %146, i32 %150)
  br label %152

152:                                              ; preds = %145, %136
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %128
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @cik_cp_gfx_start(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_test(%struct.radeon_device*, i64, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
