; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_ring_emit_vm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_ring_emit_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@SDMA_OPCODE_POLL_REG_MEM = common dso_local global i32 0, align 4
@mmVM_INVALIDATE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32)* @cik_sdma_ring_emit_vm_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_sdma_ring_emit_vm_flush(%struct.amdgpu_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @SDMA_POLL_REG_MEM_EXTRA_OP(i32 0)
  %9 = call i32 @SDMA_POLL_REG_MEM_EXTRA_FUNC(i32 0)
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @amdgpu_gmc_emit_flush_gpu_tlb(%struct.amdgpu_ring* %11, i32 %12, i32 %13)
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %16 = load i32, i32* @SDMA_OPCODE_POLL_REG_MEM, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @SDMA_PACKET(i32 %16, i32 0, i32 %17)
  %19 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %15, i32 %18)
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %21 = load i32, i32* @mmVM_INVALIDATE_REQUEST, align 4
  %22 = shl i32 %21, 2
  %23 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %20, i32 %22)
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %25 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %24, i32 0)
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %27 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %26, i32 0)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %29 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %28, i32 0)
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %31 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %30, i32 268369930)
  ret void
}

declare dso_local i32 @SDMA_POLL_REG_MEM_EXTRA_OP(i32) #1

declare dso_local i32 @SDMA_POLL_REG_MEM_EXTRA_FUNC(i32) #1

declare dso_local i32 @amdgpu_gmc_emit_flush_gpu_tlb(%struct.amdgpu_ring*, i32, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PACKET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
