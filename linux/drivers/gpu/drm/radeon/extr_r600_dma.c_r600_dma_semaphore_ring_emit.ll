; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dma.c_r600_dma_semaphore_ring_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dma.c_r600_dma_semaphore_ring_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_semaphore = type { i32 }

@DMA_PACKET_SEMAPHORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_dma_semaphore_ring_emit(%struct.radeon_device* %0, %struct.radeon_ring* %1, %struct.radeon_semaphore* %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca %struct.radeon_semaphore*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store %struct.radeon_semaphore* %2, %struct.radeon_semaphore** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %7, align 8
  %12 = getelementptr inbounds %struct.radeon_semaphore, %struct.radeon_semaphore* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 1
  store i32 %17, i32* %10, align 4
  %18 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %19 = load i32, i32* @DMA_PACKET_SEMAPHORE, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @DMA_PACKET(i32 %19, i32 0, i32 %20, i32 0)
  %22 = call i32 @radeon_ring_write(%struct.radeon_ring* %18, i32 %21)
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, -4
  %26 = call i32 @radeon_ring_write(%struct.radeon_ring* %23, i32 %25)
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @upper_32_bits(i32 %28)
  %30 = and i32 %29, 255
  %31 = call i32 @radeon_ring_write(%struct.radeon_ring* %27, i32 %30)
  ret i32 1
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
