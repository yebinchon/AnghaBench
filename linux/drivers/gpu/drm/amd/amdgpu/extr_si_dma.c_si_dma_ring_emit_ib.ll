; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_ring_emit_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_ring_emit_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_job = type { i32 }
%struct.amdgpu_ib = type { i32, i32 }

@DMA_PACKET_NOP = common dso_local global i32 0, align 4
@DMA_PACKET_INDIRECT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, %struct.amdgpu_job*, %struct.amdgpu_ib*, i32)* @si_dma_ring_emit_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_dma_ring_emit_ib(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, %struct.amdgpu_ib* %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca %struct.amdgpu_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store %struct.amdgpu_job* %1, %struct.amdgpu_job** %6, align 8
  store %struct.amdgpu_ib* %2, %struct.amdgpu_ib** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %11 = call i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job* %10)
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %19, %4
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lower_32_bits(i32 %15)
  %17 = and i32 %16, 7
  %18 = icmp ne i32 %17, 5
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %21 = load i32, i32* @DMA_PACKET_NOP, align 4
  %22 = call i32 @DMA_PACKET(i32 %21, i32 0, i32 0, i32 0, i32 0)
  %23 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %20, i32 %22)
  br label %12

24:                                               ; preds = %12
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %26 = load i32, i32* @DMA_PACKET_INDIRECT_BUFFER, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @DMA_IB_PACKET(i32 %26, i32 %27, i32 0)
  %29 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 %28)
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %31 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, -32
  %35 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %30, i32 %34)
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %37 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 12
  %41 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @upper_32_bits(i32 %43)
  %45 = and i32 %44, 255
  %46 = or i32 %40, %45
  %47 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %36, i32 %46)
  ret void
}

declare dso_local i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DMA_IB_PACKET(i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
