; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.amdgpu_ring }

@DMA_SEM_INCOMPLETE_TIMER_CNTL = common dso_local global i64 0, align 8
@sdma_offsets = common dso_local global i64* null, align 8
@DMA_SEM_WAIT_FAIL_TIMER_CNTL = common dso_local global i64 0, align 8
@DMA_RB_CNTL = common dso_local global i64 0, align 8
@DMA_RB_RPTR = common dso_local global i64 0, align 8
@DMA_RB_WPTR = common dso_local global i64 0, align 8
@DMA_RB_RPTR_ADDR_LO = common dso_local global i64 0, align 8
@DMA_RB_RPTR_ADDR_HI = common dso_local global i64 0, align 8
@DMA_RPTR_WRITEBACK_ENABLE = common dso_local global i32 0, align 4
@DMA_RB_BASE = common dso_local global i64 0, align 8
@DMA_IB_ENABLE = common dso_local global i32 0, align 4
@CMD_VMID_FORCE = common dso_local global i32 0, align 4
@DMA_IB_CNTL = common dso_local global i64 0, align 8
@DMA_CNTL = common dso_local global i64 0, align 8
@CTXEMPTY_INT_ENABLE = common dso_local global i32 0, align 4
@DMA_RB_ENABLE = common dso_local global i32 0, align 4
@DMA_IB_SWAP_ENABLE = common dso_local global i32 0, align 4
@DMA_RB_SWAP_ENABLE = common dso_local global i32 0, align 4
@DMA_RPTR_WRITEBACK_SWAP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_dma_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %201, %1
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %204

19:                                               ; preds = %12
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.amdgpu_ring* %27, %struct.amdgpu_ring** %4, align 8
  %28 = load i64, i64* @DMA_SEM_INCOMPLETE_TIMER_CNTL, align 8
  %29 = load i64*, i64** @sdma_offsets, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %28, %33
  %35 = call i32 @WREG32(i64 %34, i32 0)
  %36 = load i64, i64* @DMA_SEM_WAIT_FAIL_TIMER_CNTL, align 8
  %37 = load i64*, i64** @sdma_offsets, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %36, %41
  %43 = call i32 @WREG32(i64 %42, i32 0)
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %45 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %46, 4
  %48 = call i32 @order_base_2(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load i64, i64* @DMA_RB_CNTL, align 8
  %52 = load i64*, i64** @sdma_offsets, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %51, %56
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @WREG32(i64 %57, i32 %58)
  %60 = load i64, i64* @DMA_RB_RPTR, align 8
  %61 = load i64*, i64** @sdma_offsets, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %60, %65
  %67 = call i32 @WREG32(i64 %66, i32 0)
  %68 = load i64, i64* @DMA_RB_WPTR, align 8
  %69 = load i64*, i64** @sdma_offsets, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %68, %73
  %75 = call i32 @WREG32(i64 %74, i32 0)
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %81 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %79, %84
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* @DMA_RB_RPTR_ADDR_LO, align 8
  %87 = load i64*, i64** @sdma_offsets, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %86, %91
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @lower_32_bits(i64 %93)
  %95 = call i32 @WREG32(i64 %92, i32 %94)
  %96 = load i64, i64* @DMA_RB_RPTR_ADDR_HI, align 8
  %97 = load i64*, i64** @sdma_offsets, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %96, %101
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @upper_32_bits(i64 %103)
  %105 = and i32 %104, 255
  %106 = call i32 @WREG32(i64 %102, i32 %105)
  %107 = load i32, i32* @DMA_RPTR_WRITEBACK_ENABLE, align 4
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  %110 = load i64, i64* @DMA_RB_BASE, align 8
  %111 = load i64*, i64** @sdma_offsets, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %110, %115
  %117 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %118 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = ashr i32 %119, 8
  %121 = call i32 @WREG32(i64 %116, i32 %120)
  %122 = load i32, i32* @DMA_IB_ENABLE, align 4
  %123 = load i32, i32* @CMD_VMID_FORCE, align 4
  %124 = or i32 %122, %123
  store i32 %124, i32* %7, align 4
  %125 = load i64, i64* @DMA_IB_CNTL, align 8
  %126 = load i64*, i64** @sdma_offsets, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %125, %130
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @WREG32(i64 %131, i32 %132)
  %134 = load i64, i64* @DMA_CNTL, align 8
  %135 = load i64*, i64** @sdma_offsets, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %134, %139
  %141 = call i32 @RREG32(i64 %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* @CTXEMPTY_INT_ENABLE, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %6, align 4
  %146 = load i64, i64* @DMA_CNTL, align 8
  %147 = load i64*, i64** @sdma_offsets, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %146, %151
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @WREG32(i64 %152, i32 %153)
  %155 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %156 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %155, i32 0, i32 4
  store i64 0, i64* %156, align 8
  %157 = load i64, i64* @DMA_RB_WPTR, align 8
  %158 = load i64*, i64** @sdma_offsets, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %157, %162
  %164 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %165 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @lower_32_bits(i64 %166)
  %168 = shl i32 %167, 2
  %169 = call i32 @WREG32(i64 %163, i32 %168)
  %170 = load i64, i64* @DMA_RB_CNTL, align 8
  %171 = load i64*, i64** @sdma_offsets, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %170, %175
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @DMA_RB_ENABLE, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @WREG32(i64 %176, i32 %179)
  %181 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %182 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  store i32 1, i32* %183, align 4
  %184 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %185 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %19
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %2, align 4
  br label %205

190:                                              ; preds = %19
  %191 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %192 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %193, align 8
  %195 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %196 = icmp eq %struct.amdgpu_ring* %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %199 = call i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device* %198, i32 1)
  br label %200

200:                                              ; preds = %197, %190
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %12

204:                                              ; preds = %12
  store i32 0, i32* %2, align 4
  br label %205

205:                                              ; preds = %204, %188
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
