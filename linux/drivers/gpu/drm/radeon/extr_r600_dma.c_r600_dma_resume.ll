; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dma.c_r600_dma_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dma.c_r600_dma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__, %struct.radeon_ring* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.radeon_ring = type { i32, i32, i32, i32 }

@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@DMA_SEM_INCOMPLETE_TIMER_CNTL = common dso_local global i32 0, align 4
@DMA_SEM_WAIT_FAIL_TIMER_CNTL = common dso_local global i32 0, align 4
@DMA_RB_CNTL = common dso_local global i32 0, align 4
@DMA_RB_RPTR = common dso_local global i32 0, align 4
@DMA_RB_WPTR = common dso_local global i32 0, align 4
@DMA_RB_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA_RB_RPTR_ADDR_LO = common dso_local global i32 0, align 4
@DMA_RPTR_WRITEBACK_ENABLE = common dso_local global i32 0, align 4
@DMA_RB_BASE = common dso_local global i32 0, align 4
@DMA_IB_ENABLE = common dso_local global i32 0, align 4
@DMA_IB_CNTL = common dso_local global i32 0, align 4
@DMA_CNTL = common dso_local global i32 0, align 4
@CTXEMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i64 0, align 8
@DMA_MODE = common dso_local global i32 0, align 4
@DMA_RB_ENABLE = common dso_local global i32 0, align 4
@DMA_IB_SWAP_ENABLE = common dso_local global i32 0, align 4
@DMA_RB_SWAP_ENABLE = common dso_local global i32 0, align 4
@DMA_RPTR_WRITEBACK_SWAP_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_dma_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 4
  %12 = load %struct.radeon_ring*, %struct.radeon_ring** %11, align 8
  %13 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %14 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %12, i64 %13
  store %struct.radeon_ring* %14, %struct.radeon_ring** %4, align 8
  %15 = load i32, i32* @DMA_SEM_INCOMPLETE_TIMER_CNTL, align 4
  %16 = call i32 @WREG32(i32 %15, i32 0)
  %17 = load i32, i32* @DMA_SEM_WAIT_FAIL_TIMER_CNTL, align 4
  %18 = call i32 @WREG32(i32 %17, i32 0)
  %19 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 4
  %23 = call i32 @order_base_2(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @DMA_RB_CNTL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @WREG32(i32 %26, i32 %27)
  %29 = load i32, i32* @DMA_RB_RPTR, align 4
  %30 = call i32 @WREG32(i32 %29, i32 0)
  %31 = load i32, i32* @DMA_RB_WPTR, align 4
  %32 = call i32 @WREG32(i32 %31, i32 0)
  %33 = load i32, i32* @DMA_RB_RPTR_ADDR_HI, align 4
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 @upper_32_bits(i32 %39)
  %41 = and i32 %40, 255
  %42 = call i32 @WREG32(i32 %33, i32 %41)
  %43 = load i32, i32* @DMA_RB_RPTR_ADDR_LO, align 4
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  %49 = add nsw i32 %47, %48
  %50 = and i32 %49, -4
  %51 = call i32 @WREG32(i32 %43, i32 %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %1
  %58 = load i32, i32* @DMA_RPTR_WRITEBACK_ENABLE, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %1
  %62 = load i32, i32* @DMA_RB_BASE, align 4
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %64 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 8
  %67 = call i32 @WREG32(i32 %62, i32 %66)
  %68 = load i32, i32* @DMA_IB_ENABLE, align 4
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @DMA_IB_CNTL, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @WREG32(i32 %69, i32 %70)
  %72 = load i32, i32* @DMA_CNTL, align 4
  %73 = call i32 @RREG32(i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @CTXEMPTY_INT_ENABLE, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* @DMA_CNTL, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @WREG32(i32 %78, i32 %79)
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CHIP_RV770, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %61
  %87 = load i32, i32* @DMA_MODE, align 4
  %88 = call i32 @WREG32(i32 %87, i32 1)
  br label %89

89:                                               ; preds = %86, %61
  %90 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %91 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %90, i32 0, i32 2
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* @DMA_RB_WPTR, align 4
  %93 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %94 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 2
  %97 = call i32 @WREG32(i32 %92, i32 %96)
  %98 = load i32, i32* @DMA_RB_CNTL, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @DMA_RB_ENABLE, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @WREG32(i32 %98, i32 %101)
  %103 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %104 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %103, i32 0, i32 3
  store i32 1, i32* %104, align 4
  %105 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %106 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %108 = call i32 @radeon_ring_test(%struct.radeon_device* %105, i64 %106, %struct.radeon_ring* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %89
  %112 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %113 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %112, i32 0, i32 3
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %2, align 4
  br label %132

115:                                              ; preds = %89
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 2
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %115
  %125 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device* %125, i32 %129)
  br label %131

131:                                              ; preds = %124, %115
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %111
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @radeon_ring_test(%struct.radeon_device*, i64, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
