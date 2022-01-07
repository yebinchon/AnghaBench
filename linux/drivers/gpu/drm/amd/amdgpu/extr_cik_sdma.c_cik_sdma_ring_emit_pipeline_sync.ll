; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_ring_emit_pipeline_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_ring_emit_pipeline_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SDMA_OPCODE_POLL_REG_MEM = common dso_local global i32 0, align 4
@SDMA_POLL_REG_MEM_EXTRA_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @cik_sdma_ring_emit_pipeline_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_sdma_ring_emit_pipeline_sync(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %5 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %14 = load i32, i32* @SDMA_OPCODE_POLL_REG_MEM, align 4
  %15 = call i32 @SDMA_POLL_REG_MEM_EXTRA_OP(i32 0)
  %16 = call i32 @SDMA_POLL_REG_MEM_EXTRA_FUNC(i32 3)
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SDMA_POLL_REG_MEM_EXTRA_M, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @SDMA_PACKET(i32 %14, i32 0, i32 %19)
  %21 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %13, i32 %20)
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, -4
  %25 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %22, i32 %24)
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @upper_32_bits(i32 %27)
  %29 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %26, i32 %28)
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %30, i32 %31)
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %33, i32 -1)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %36 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %35, i32 268369924)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PACKET(i32, i32, i32) #1

declare dso_local i32 @SDMA_POLL_REG_MEM_EXTRA_OP(i32) #1

declare dso_local i32 @SDMA_POLL_REG_MEM_EXTRA_FUNC(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
