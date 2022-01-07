; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_cp_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_cp_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__, %struct.radeon_ring* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.radeon_ring = type { i32, i32, i32, i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@GRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_CP = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@CP_RB_CNTL = common dso_local global i32 0, align 4
@CP_SEM_WAIT_TIMER = common dso_local global i32 0, align 4
@CP_RB_WPTR_DELAY = common dso_local global i32 0, align 4
@RB_RPTR_WR_ENA = common dso_local global i32 0, align 4
@CP_RB_RPTR_WR = common dso_local global i32 0, align 4
@CP_RB_WPTR = common dso_local global i32 0, align 4
@CP_RB_RPTR_ADDR = common dso_local global i32 0, align 4
@RADEON_WB_CP_RPTR_OFFSET = common dso_local global i32 0, align 4
@CP_RB_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@SCRATCH_ADDR = common dso_local global i32 0, align 4
@RADEON_WB_SCRATCH_OFFSET = common dso_local global i32 0, align 4
@SCRATCH_UMSK = common dso_local global i32 0, align 4
@RB_NO_UPDATE = common dso_local global i32 0, align 4
@CP_RB_BASE = common dso_local global i32 0, align 4
@CP_DEBUG = common dso_local global i32 0, align 4
@BUF_SWAP_32BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_cp_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 3
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %11 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %12 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i64 %11
  store %struct.radeon_ring* %12, %struct.radeon_ring** %4, align 8
  %13 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %14 = load i32, i32* @SOFT_RESET_CP, align 4
  %15 = call i32 @WREG32(i32 %13, i32 %14)
  %16 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %17 = call i32 @RREG32(i32 %16)
  %18 = call i32 @mdelay(i32 15)
  %19 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %20 = call i32 @WREG32(i32 %19, i32 0)
  %21 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 8
  %25 = call i32 @order_base_2(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %27 = sdiv i32 %26, 8
  %28 = call i32 @order_base_2(i32 %27)
  %29 = shl i32 %28, 8
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @CP_RB_CNTL, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @WREG32(i32 %32, i32 %33)
  %35 = load i32, i32* @CP_SEM_WAIT_TIMER, align 4
  %36 = call i32 @WREG32(i32 %35, i32 0)
  %37 = load i32, i32* @CP_RB_WPTR_DELAY, align 4
  %38 = call i32 @WREG32(i32 %37, i32 0)
  %39 = load i32, i32* @CP_RB_CNTL, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @RB_RPTR_WR_ENA, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @WREG32(i32 %39, i32 %42)
  %44 = load i32, i32* @CP_RB_RPTR_WR, align 4
  %45 = call i32 @WREG32(i32 %44, i32 0)
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %47 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* @CP_RB_WPTR, align 4
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %50 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @WREG32(i32 %48, i32 %51)
  %53 = load i32, i32* @CP_RB_RPTR_ADDR, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %59 = add nsw i32 %57, %58
  %60 = and i32 %59, -4
  %61 = call i32 @WREG32(i32 %53, i32 %60)
  %62 = load i32, i32* @CP_RB_RPTR_ADDR_HI, align 4
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @RADEON_WB_CP_RPTR_OFFSET, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @upper_32_bits(i32 %68)
  %70 = and i32 %69, 255
  %71 = call i32 @WREG32(i32 %62, i32 %70)
  %72 = load i32, i32* @SCRATCH_ADDR, align 4
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @RADEON_WB_SCRATCH_OFFSET, align 4
  %78 = add nsw i32 %76, %77
  %79 = ashr i32 %78, 8
  %80 = call i32 @WREG32(i32 %72, i32 %79)
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %1
  %87 = load i32, i32* @SCRATCH_UMSK, align 4
  %88 = call i32 @WREG32(i32 %87, i32 255)
  br label %95

89:                                               ; preds = %1
  %90 = load i32, i32* @RB_NO_UPDATE, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* @SCRATCH_UMSK, align 4
  %94 = call i32 @WREG32(i32 %93, i32 0)
  br label %95

95:                                               ; preds = %89, %86
  %96 = call i32 @mdelay(i32 1)
  %97 = load i32, i32* @CP_RB_CNTL, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @WREG32(i32 %97, i32 %98)
  %100 = load i32, i32* @CP_RB_BASE, align 4
  %101 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %102 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 8
  %105 = call i32 @WREG32(i32 %100, i32 %104)
  %106 = load i32, i32* @CP_DEBUG, align 4
  %107 = call i32 @WREG32(i32 %106, i32 402653184)
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = call i32 @r600_cp_start(%struct.radeon_device* %108)
  %110 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %111 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %110, i32 0, i32 3
  store i32 1, i32* %111, align 4
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %114 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %115 = call i32 @radeon_ring_test(%struct.radeon_device* %112, i64 %113, %struct.radeon_ring* %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %95
  %119 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %120 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %119, i32 0, i32 3
  store i32 0, i32* %120, align 4
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %139

122:                                              ; preds = %95
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %122
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device* %132, i32 %136)
  br label %138

138:                                              ; preds = %131, %122
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %118
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @r600_cp_start(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_test(%struct.radeon_device*, i64, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
