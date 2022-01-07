; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_gfx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_gfx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__, %struct.radeon_ring* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.radeon_ring = type { i32, i32, i32, i32, i32 }

@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i32 0, align 4
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@SDMA1_REGISTER_OFFSET = common dso_local global i32 0, align 4
@CAYMAN_WB_DMA1_RPTR_OFFSET = common dso_local global i32 0, align 4
@SDMA0_SEM_INCOMPLETE_TIMER_CNTL = common dso_local global i32 0, align 4
@SDMA0_SEM_WAIT_FAIL_TIMER_CNTL = common dso_local global i32 0, align 4
@SDMA0_GFX_RB_CNTL = common dso_local global i32 0, align 4
@SDMA0_GFX_RB_RPTR = common dso_local global i32 0, align 4
@SDMA0_GFX_RB_WPTR = common dso_local global i32 0, align 4
@SDMA0_GFX_RB_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@SDMA0_GFX_RB_RPTR_ADDR_LO = common dso_local global i32 0, align 4
@SDMA_RPTR_WRITEBACK_ENABLE = common dso_local global i32 0, align 4
@SDMA0_GFX_RB_BASE = common dso_local global i32 0, align 4
@SDMA0_GFX_RB_BASE_HI = common dso_local global i32 0, align 4
@SDMA_RB_ENABLE = common dso_local global i32 0, align 4
@SDMA_IB_ENABLE = common dso_local global i32 0, align 4
@SDMA0_GFX_IB_CNTL = common dso_local global i32 0, align 4
@SDMA_IB_SWAP_ENABLE = common dso_local global i32 0, align 4
@SDMA_RB_SWAP_ENABLE = common dso_local global i32 0, align 4
@SDMA_RPTR_WRITEBACK_SWAP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_sdma_gfx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_sdma_gfx_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %149, %1
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %152

15:                                               ; preds = %12
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 3
  %21 = load %struct.radeon_ring*, %struct.radeon_ring** %20, align 8
  %22 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %23 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %21, i64 %22
  store %struct.radeon_ring* %23, %struct.radeon_ring** %4, align 8
  %24 = load i32, i32* @SDMA0_REGISTER_OFFSET, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  store i32 %25, i32* %9, align 4
  br label %34

26:                                               ; preds = %15
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 3
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %28, align 8
  %30 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %31 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %29, i64 %30
  store %struct.radeon_ring* %31, %struct.radeon_ring** %4, align 8
  %32 = load i32, i32* @SDMA1_REGISTER_OFFSET, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @CAYMAN_WB_DMA1_RPTR_OFFSET, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %26, %18
  %35 = load i32, i32* @SDMA0_SEM_INCOMPLETE_TIMER_CNTL, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @WREG32(i32 %37, i32 0)
  %39 = load i32, i32* @SDMA0_SEM_WAIT_FAIL_TIMER_CNTL, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @WREG32(i32 %41, i32 0)
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %44 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 4
  %47 = call i32 @order_base_2(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %48, 1
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @SDMA0_GFX_RB_CNTL, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @WREG32(i32 %52, i32 %53)
  %55 = load i32, i32* @SDMA0_GFX_RB_RPTR, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i32 @WREG32(i32 %57, i32 0)
  %59 = load i32, i32* @SDMA0_GFX_RB_WPTR, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @WREG32(i32 %61, i32 0)
  %63 = load i32, i32* @SDMA0_GFX_RB_RPTR_ADDR_HI, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %63, %64
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %69, %70
  %72 = call i32 @upper_32_bits(i32 %71)
  %73 = call i32 @WREG32(i32 %65, i32 %72)
  %74 = load i32, i32* @SDMA0_GFX_RB_RPTR_ADDR_LO, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %74, %75
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %80, %81
  %83 = and i32 %82, -4
  %84 = call i32 @WREG32(i32 %76, i32 %83)
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %34
  %91 = load i32, i32* @SDMA_RPTR_WRITEBACK_ENABLE, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %34
  %95 = load i32, i32* @SDMA0_GFX_RB_BASE, align 4
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %95, %96
  %98 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %99 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 8
  %102 = call i32 @WREG32(i32 %97, i32 %101)
  %103 = load i32, i32* @SDMA0_GFX_RB_BASE_HI, align 4
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %107 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 40
  %110 = call i32 @WREG32(i32 %105, i32 %109)
  %111 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %112 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %111, i32 0, i32 2
  store i32 0, i32* %112, align 4
  %113 = load i32, i32* @SDMA0_GFX_RB_WPTR, align 4
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %113, %114
  %116 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %117 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 2
  %120 = call i32 @WREG32(i32 %115, i32 %119)
  %121 = load i32, i32* @SDMA0_GFX_RB_CNTL, align 4
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @SDMA_RB_ENABLE, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @WREG32(i32 %123, i32 %126)
  %128 = load i32, i32* @SDMA_IB_ENABLE, align 4
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* @SDMA0_GFX_IB_CNTL, align 4
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @WREG32(i32 %131, i32 %132)
  %134 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %135 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %134, i32 0, i32 3
  store i32 1, i32* %135, align 4
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %138 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %141 = call i32 @radeon_ring_test(%struct.radeon_device* %136, i32 %139, %struct.radeon_ring* %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %94
  %145 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %146 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %145, i32 0, i32 3
  store i32 0, i32* %146, align 4
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %2, align 4
  br label %178

148:                                              ; preds = %94
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %12

152:                                              ; preds = %12
  %153 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %154 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %153, i32 0, i32 1
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %170, label %161

161:                                              ; preds = %152
  %162 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 1
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %161, %152
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device* %171, i32 %175)
  br label %177

177:                                              ; preds = %170, %161
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %144
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @radeon_ring_test(%struct.radeon_device*, i32, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
