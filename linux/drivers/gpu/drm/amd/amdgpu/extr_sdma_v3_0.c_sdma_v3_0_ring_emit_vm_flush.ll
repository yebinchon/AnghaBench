; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_ring_emit_vm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_ring_emit_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@SDMA_OP_POLL_REGMEM = common dso_local global i32 0, align 4
@mmVM_INVALIDATE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32)* @sdma_v3_0_ring_emit_vm_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v3_0_ring_emit_vm_flush(%struct.amdgpu_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @amdgpu_gmc_emit_flush_gpu_tlb(%struct.amdgpu_ring* %7, i32 %8, i32 %9)
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %12 = load i32, i32* @SDMA_OP_POLL_REGMEM, align 4
  %13 = call i32 @SDMA_PKT_HEADER_OP(i32 %12)
  %14 = call i32 @SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH(i32 0)
  %15 = or i32 %13, %14
  %16 = call i32 @SDMA_PKT_POLL_REGMEM_HEADER_FUNC(i32 0)
  %17 = or i32 %15, %16
  %18 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %11, i32 %17)
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %20 = load i32, i32* @mmVM_INVALIDATE_REQUEST, align 4
  %21 = shl i32 %20, 2
  %22 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %19, i32 %21)
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %24 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %23, i32 0)
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %26 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 0)
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %28 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %27, i32 0)
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %30 = call i32 @SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT(i32 4095)
  %31 = call i32 @SDMA_PKT_POLL_REGMEM_DW5_INTERVAL(i32 10)
  %32 = or i32 %30, %31
  %33 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %29, i32 %32)
  ret void
}

declare dso_local i32 @amdgpu_gmc_emit_flush_gpu_tlb(%struct.amdgpu_ring*, i32, i32) #1

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
