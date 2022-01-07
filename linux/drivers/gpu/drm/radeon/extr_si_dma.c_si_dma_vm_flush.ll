; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dma.c_si_dma_vm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dma.c_si_dma_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

@DMA_PACKET_SRBM_WRITE = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT8_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@HDP_MEM_COHERENCY_FLUSH_CNTL = common dso_local global i32 0, align 4
@VM_INVALIDATE_REQUEST = common dso_local global i32 0, align 4
@DMA_PACKET_POLL_REG_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @si_dma_vm_flush(%struct.radeon_device* %0, %struct.radeon_ring* %1, i32 %2, i32 %3) #0 {
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
  %11 = call i32 @DMA_PACKET(i32 %10, i32 0, i32 0, i32 0, i32 0)
  %12 = call i32 @radeon_ring_write(%struct.radeon_ring* %9, i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %13, 8
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %17 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 2
  %20 = add i32 %17, %19
  %21 = lshr i32 %20, 2
  %22 = or i32 983040, %21
  %23 = call i32 @radeon_ring_write(%struct.radeon_ring* %16, i32 %22)
  br label %34

24:                                               ; preds = %4
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %26 = load i32, i32* @VM_CONTEXT8_PAGE_TABLE_BASE_ADDR, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub i32 %27, 8
  %29 = shl i32 %28, 2
  %30 = add i32 %26, %29
  %31 = lshr i32 %30, 2
  %32 = or i32 983040, %31
  %33 = call i32 @radeon_ring_write(%struct.radeon_ring* %25, i32 %32)
  br label %34

34:                                               ; preds = %24, %15
  %35 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 12
  %38 = call i32 @radeon_ring_write(%struct.radeon_ring* %35, i32 %37)
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %40 = load i32, i32* @DMA_PACKET_SRBM_WRITE, align 4
  %41 = call i32 @DMA_PACKET(i32 %40, i32 0, i32 0, i32 0, i32 0)
  %42 = call i32 @radeon_ring_write(%struct.radeon_ring* %39, i32 %41)
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %44 = load i32, i32* @HDP_MEM_COHERENCY_FLUSH_CNTL, align 4
  %45 = ashr i32 %44, 2
  %46 = or i32 983040, %45
  %47 = call i32 @radeon_ring_write(%struct.radeon_ring* %43, i32 %46)
  %48 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %49 = call i32 @radeon_ring_write(%struct.radeon_ring* %48, i32 1)
  %50 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %51 = load i32, i32* @DMA_PACKET_SRBM_WRITE, align 4
  %52 = call i32 @DMA_PACKET(i32 %51, i32 0, i32 0, i32 0, i32 0)
  %53 = call i32 @radeon_ring_write(%struct.radeon_ring* %50, i32 %52)
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %55 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %56 = ashr i32 %55, 2
  %57 = or i32 983040, %56
  %58 = call i32 @radeon_ring_write(%struct.radeon_ring* %54, i32 %57)
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 1, %60
  %62 = call i32 @radeon_ring_write(%struct.radeon_ring* %59, i32 %61)
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %64 = load i32, i32* @DMA_PACKET_POLL_REG_MEM, align 4
  %65 = call i32 @DMA_PACKET(i32 %64, i32 0, i32 0, i32 0, i32 0)
  %66 = call i32 @radeon_ring_write(%struct.radeon_ring* %63, i32 %65)
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %68 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %69 = call i32 @radeon_ring_write(%struct.radeon_ring* %67, i32 %68)
  %70 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %71 = call i32 @radeon_ring_write(%struct.radeon_ring* %70, i32 16711680)
  %72 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = shl i32 1, %73
  %75 = call i32 @radeon_ring_write(%struct.radeon_ring* %72, i32 %74)
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %77 = call i32 @radeon_ring_write(%struct.radeon_ring* %76, i32 0)
  %78 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %79 = call i32 @radeon_ring_write(%struct.radeon_ring* %78, i32 32)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
