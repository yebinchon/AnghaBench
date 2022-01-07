; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_vm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

@DMA_PACKET_SRBM_WRITE = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@HDP_MEM_COHERENCY_FLUSH_CNTL = common dso_local global i32 0, align 4
@VM_INVALIDATE_REQUEST = common dso_local global i32 0, align 4
@DMA_SRBM_READ_PACKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_dma_vm_flush(%struct.radeon_device* %0, %struct.radeon_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %10 = load i32, i32* @DMA_PACKET_SRBM_WRITE, align 4
  %11 = call i32 @DMA_PACKET(i32 %10, i32 0, i32 0, i32 0)
  %12 = call i32 @radeon_ring_write(%struct.radeon_ring* %9, i32 %11)
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %14 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %15, 2
  %17 = add i32 %14, %16
  %18 = lshr i32 %17, 2
  %19 = or i32 983040, %18
  %20 = call i32 @radeon_ring_write(%struct.radeon_ring* %13, i32 %19)
  %21 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = ashr i32 %22, 12
  %24 = call i32 @radeon_ring_write(%struct.radeon_ring* %21, i32 %23)
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %26 = load i32, i32* @DMA_PACKET_SRBM_WRITE, align 4
  %27 = call i32 @DMA_PACKET(i32 %26, i32 0, i32 0, i32 0)
  %28 = call i32 @radeon_ring_write(%struct.radeon_ring* %25, i32 %27)
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %30 = load i32, i32* @HDP_MEM_COHERENCY_FLUSH_CNTL, align 4
  %31 = ashr i32 %30, 2
  %32 = or i32 983040, %31
  %33 = call i32 @radeon_ring_write(%struct.radeon_ring* %29, i32 %32)
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %35 = call i32 @radeon_ring_write(%struct.radeon_ring* %34, i32 1)
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %37 = load i32, i32* @DMA_PACKET_SRBM_WRITE, align 4
  %38 = call i32 @DMA_PACKET(i32 %37, i32 0, i32 0, i32 0)
  %39 = call i32 @radeon_ring_write(%struct.radeon_ring* %36, i32 %38)
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %41 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %42 = ashr i32 %41, 2
  %43 = or i32 983040, %42
  %44 = call i32 @radeon_ring_write(%struct.radeon_ring* %40, i32 %43)
  %45 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 1, %46
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %45, i32 %47)
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %50 = load i32, i32* @DMA_SRBM_READ_PACKET, align 4
  %51 = call i32 @radeon_ring_write(%struct.radeon_ring* %49, i32 %50)
  %52 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %53 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %54 = ashr i32 %53, 2
  %55 = or i32 267386880, %54
  %56 = call i32 @radeon_ring_write(%struct.radeon_ring* %52, i32 %55)
  %57 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %58 = call i32 @radeon_ring_write(%struct.radeon_ring* %57, i32 0)
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %60 = call i32 @radeon_ring_write(%struct.radeon_ring* %59, i32 0)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
