; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__, %struct.radeon_ring* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.radeon_ring = type { i32, i32, i32, i32, i32 }

@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i32 0, align 4
@R600_WB_DMA_RPTR_OFFSET = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_DMA1_INDEX = common dso_local global i64 0, align 8
@DMA1_REGISTER_OFFSET = common dso_local global i32 0, align 4
@CAYMAN_WB_DMA1_RPTR_OFFSET = common dso_local global i32 0, align 4
@DMA_SEM_INCOMPLETE_TIMER_CNTL = common dso_local global i32 0, align 4
@DMA_SEM_WAIT_FAIL_TIMER_CNTL = common dso_local global i32 0, align 4
@DMA_RB_CNTL = common dso_local global i32 0, align 4
@DMA_RB_RPTR = common dso_local global i32 0, align 4
@DMA_RB_WPTR = common dso_local global i32 0, align 4
@DMA_RB_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@DMA_RB_RPTR_ADDR_LO = common dso_local global i32 0, align 4
@DMA_RPTR_WRITEBACK_ENABLE = common dso_local global i32 0, align 4
@DMA_RB_BASE = common dso_local global i32 0, align 4
@DMA_IB_ENABLE = common dso_local global i32 0, align 4
@CMD_VMID_FORCE = common dso_local global i32 0, align 4
@DMA_IB_CNTL = common dso_local global i32 0, align 4
@DMA_CNTL = common dso_local global i32 0, align 4
@CTXEMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@DMA_RB_ENABLE = common dso_local global i32 0, align 4
@DMA_IB_SWAP_ENABLE = common dso_local global i32 0, align 4
@DMA_RB_SWAP_ENABLE = common dso_local global i32 0, align 4
@DMA_RPTR_WRITEBACK_SWAP_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cayman_dma_resume(%struct.radeon_device* %0) #0 {
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
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %158, %1
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %161

16:                                               ; preds = %13
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 3
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %21, align 8
  %23 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %24 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %22, i64 %23
  store %struct.radeon_ring* %24, %struct.radeon_ring** %4, align 8
  %25 = load i32, i32* @DMA0_REGISTER_OFFSET, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @R600_WB_DMA_RPTR_OFFSET, align 4
  store i32 %26, i32* %10, align 4
  br label %35

27:                                               ; preds = %16
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 3
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %29, align 8
  %31 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %32 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %30, i64 %31
  store %struct.radeon_ring* %32, %struct.radeon_ring** %4, align 8
  %33 = load i32, i32* @DMA1_REGISTER_OFFSET, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @CAYMAN_WB_DMA1_RPTR_OFFSET, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %27, %19
  %36 = load i32, i32* @DMA_SEM_INCOMPLETE_TIMER_CNTL, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @WREG32(i32 %38, i32 0)
  %40 = load i32, i32* @DMA_SEM_WAIT_FAIL_TIMER_CNTL, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @WREG32(i32 %42, i32 0)
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %45 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 4
  %48 = call i32 @order_base_2(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @DMA_RB_CNTL, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @WREG32(i32 %53, i32 %54)
  %56 = load i32, i32* @DMA_RB_RPTR, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 @WREG32(i32 %58, i32 0)
  %60 = load i32, i32* @DMA_RB_WPTR, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i32 @WREG32(i32 %62, i32 0)
  %64 = load i32, i32* @DMA_RB_RPTR_ADDR_HI, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %64, %65
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i32 @upper_32_bits(i32 %72)
  %74 = and i32 %73, 255
  %75 = call i32 @WREG32(i32 %66, i32 %74)
  %76 = load i32, i32* @DMA_RB_RPTR_ADDR_LO, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %82, %83
  %85 = and i32 %84, -4
  %86 = call i32 @WREG32(i32 %78, i32 %85)
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %35
  %93 = load i32, i32* @DMA_RPTR_WRITEBACK_ENABLE, align 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %35
  %97 = load i32, i32* @DMA_RB_BASE, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %97, %98
  %100 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %101 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 8
  %104 = call i32 @WREG32(i32 %99, i32 %103)
  %105 = load i32, i32* @DMA_IB_ENABLE, align 4
  %106 = load i32, i32* @CMD_VMID_FORCE, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* @DMA_IB_CNTL, align 4
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @WREG32(i32 %110, i32 %111)
  %113 = load i32, i32* @DMA_CNTL, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @RREG32(i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* @CTXEMPTY_INT_ENABLE, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %6, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* @DMA_CNTL, align 4
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @WREG32(i32 %123, i32 %124)
  %126 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %127 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %126, i32 0, i32 2
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* @DMA_RB_WPTR, align 4
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %128, %129
  %131 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %132 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 2
  %135 = call i32 @WREG32(i32 %130, i32 %134)
  %136 = load i32, i32* @DMA_RB_CNTL, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @DMA_RB_ENABLE, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @WREG32(i32 %138, i32 %141)
  %143 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %144 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %143, i32 0, i32 3
  store i32 1, i32* %144, align 4
  %145 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %146 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %147 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %150 = call i32 @radeon_ring_test(%struct.radeon_device* %145, i32 %148, %struct.radeon_ring* %149)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %96
  %154 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %155 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %154, i32 0, i32 3
  store i32 0, i32* %155, align 4
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %2, align 4
  br label %187

157:                                              ; preds = %96
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %13

161:                                              ; preds = %13
  %162 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 1
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %179, label %170

170:                                              ; preds = %161
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %171, i32 0, i32 1
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @CAYMAN_RING_TYPE_DMA1_INDEX, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %170, %161
  %180 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device* %180, i32 %184)
  br label %186

186:                                              ; preds = %179, %170
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %153
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @radeon_ring_test(%struct.radeon_device*, i32, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
