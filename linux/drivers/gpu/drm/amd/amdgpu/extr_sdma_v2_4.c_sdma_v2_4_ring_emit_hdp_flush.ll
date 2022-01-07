; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_ring_emit_hdp_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_ring_emit_hdp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64 }

@GPU_HDP_FLUSH_DONE = common dso_local global i32 0, align 4
@SDMA0 = common dso_local global i32 0, align 4
@SDMA1 = common dso_local global i32 0, align 4
@SDMA_OP_POLL_REGMEM = common dso_local global i32 0, align 4
@mmGPU_HDP_FLUSH_DONE = common dso_local global i32 0, align 4
@mmGPU_HDP_FLUSH_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @sdma_v2_4_ring_emit_hdp_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v2_4_ring_emit_hdp_flush(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @GPU_HDP_FLUSH_DONE, align 4
  %11 = load i32, i32* @SDMA0, align 4
  %12 = call i32 @REG_SET_FIELD(i32 %9, i32 %10, i32 %11, i32 1)
  store i32 %12, i32* %3, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @GPU_HDP_FLUSH_DONE, align 4
  %16 = load i32, i32* @SDMA1, align 4
  %17 = call i32 @REG_SET_FIELD(i32 %14, i32 %15, i32 %16, i32 1)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %20 = load i32, i32* @SDMA_OP_POLL_REGMEM, align 4
  %21 = call i32 @SDMA_PKT_HEADER_OP(i32 %20)
  %22 = call i32 @SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH(i32 1)
  %23 = or i32 %21, %22
  %24 = call i32 @SDMA_PKT_POLL_REGMEM_HEADER_FUNC(i32 3)
  %25 = or i32 %23, %24
  %26 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %19, i32 %25)
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %28 = load i32, i32* @mmGPU_HDP_FLUSH_DONE, align 4
  %29 = shl i32 %28, 2
  %30 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %27, i32 %29)
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %32 = load i32, i32* @mmGPU_HDP_FLUSH_REQ, align 4
  %33 = shl i32 %32, 2
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %31, i32 %33)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %35, i32 %36)
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %38, i32 %39)
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %42 = call i32 @SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT(i32 4095)
  %43 = call i32 @SDMA_PKT_POLL_REGMEM_DW5_INTERVAL(i32 10)
  %44 = or i32 %42, %43
  %45 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %41, i32 %44)
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_HEADER_FUNC(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_DW5_INTERVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
