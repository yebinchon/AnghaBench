; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_ioat_prep_interrupt_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_ioat_prep_interrupt_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i64 }
%struct.dma_chan = type { i32 }
%struct.ioatdma_chan = type { i32, i32 }
%struct.ioat_ring_ent = type { i32, %struct.dma_async_tx_descriptor, %struct.ioat_dma_descriptor* }
%struct.ioat_dma_descriptor = type { i64, i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@IOAT_CHAN_DOWN = common dso_local global i32 0, align 4
@DMA_PREP_FENCE = common dso_local global i64 0, align 8
@NULL_DESC_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_async_tx_descriptor* @ioat_prep_interrupt_lock(%struct.dma_chan* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_async_tx_descriptor*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ioatdma_chan*, align 8
  %7 = alloca %struct.ioat_ring_ent*, align 8
  %8 = alloca %struct.ioat_dma_descriptor*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %10 = call %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan* %9)
  store %struct.ioatdma_chan* %10, %struct.ioatdma_chan** %6, align 8
  %11 = load i32, i32* @IOAT_CHAN_DOWN, align 4
  %12 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %6, align 8
  %13 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %3, align 8
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %6, align 8
  %19 = call i64 @ioat_check_space_lock(%struct.ioatdma_chan* %18, i32 1)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %6, align 8
  %23 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %6, align 8
  %24 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.ioat_ring_ent* @ioat_get_ring_ent(%struct.ioatdma_chan* %22, i32 %25)
  store %struct.ioat_ring_ent* %26, %struct.ioat_ring_ent** %7, align 8
  br label %28

27:                                               ; preds = %17
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %3, align 8
  br label %71

28:                                               ; preds = %21
  %29 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %30 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %29, i32 0, i32 2
  %31 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %30, align 8
  store %struct.ioat_dma_descriptor* %31, %struct.ioat_dma_descriptor** %8, align 8
  %32 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %33 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %35 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %38 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @DMA_PREP_FENCE, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %48 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 4
  %50 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %51 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @NULL_DESC_BUFFER_SIZE, align 4
  %54 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %55 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %57 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %8, align 8
  %59 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %62 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %65 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %6, align 8
  %67 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %68 = call i32 @dump_desc_dbg(%struct.ioatdma_chan* %66, %struct.ioat_ring_ent* %67)
  %69 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %7, align 8
  %70 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %69, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* %70, %struct.dma_async_tx_descriptor** %3, align 8
  br label %71

71:                                               ; preds = %28, %27, %16
  %72 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  ret %struct.dma_async_tx_descriptor* %72
}

declare dso_local %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ioat_check_space_lock(%struct.ioatdma_chan*, i32) #1

declare dso_local %struct.ioat_ring_ent* @ioat_get_ring_ent(%struct.ioatdma_chan*, i32) #1

declare dso_local i32 @dump_desc_dbg(%struct.ioatdma_chan*, %struct.ioat_ring_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
