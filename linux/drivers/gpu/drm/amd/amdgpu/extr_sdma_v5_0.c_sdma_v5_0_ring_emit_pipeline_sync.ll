; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_emit_pipeline_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_emit_pipeline_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SDMA_OP_POLL_REGMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @sdma_v5_0_ring_emit_pipeline_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v5_0_ring_emit_pipeline_sync(%struct.amdgpu_ring* %0) #0 {
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
  %14 = load i32, i32* @SDMA_OP_POLL_REGMEM, align 4
  %15 = call i32 @SDMA_PKT_HEADER_OP(i32 %14)
  %16 = call i32 @SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH(i32 0)
  %17 = or i32 %15, %16
  %18 = call i32 @SDMA_PKT_POLL_REGMEM_HEADER_FUNC(i32 3)
  %19 = or i32 %17, %18
  %20 = call i32 @SDMA_PKT_POLL_REGMEM_HEADER_MEM_POLL(i32 1)
  %21 = or i32 %19, %20
  %22 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %13, i32 %21)
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, -4
  %26 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %23, i32 %25)
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @upper_32_bits(i32 %28)
  %30 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %27, i32 %29)
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %31, i32 %32)
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %35 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %34, i32 -1)
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %37 = call i32 @SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT(i32 4095)
  %38 = call i32 @SDMA_PKT_POLL_REGMEM_DW5_INTERVAL(i32 4)
  %39 = or i32 %37, %38
  %40 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %36, i32 %39)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_HEADER_FUNC(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_HEADER_MEM_POLL(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_DW5_INTERVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
