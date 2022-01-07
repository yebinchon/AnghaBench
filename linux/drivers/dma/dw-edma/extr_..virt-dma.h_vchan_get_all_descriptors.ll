; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_..virt-dma.h_vchan_get_all_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_..virt-dma.h_vchan_get_all_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virt_dma_chan = type { i32, i32, i32, i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virt_dma_chan*, %struct.list_head*)* @vchan_get_all_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vchan_get_all_descriptors(%struct.virt_dma_chan* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.virt_dma_chan*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.virt_dma_chan* %0, %struct.virt_dma_chan** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %5 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %6 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %5, i32 0, i32 3
  %7 = load %struct.list_head*, %struct.list_head** %4, align 8
  %8 = call i32 @list_splice_tail_init(i32* %6, %struct.list_head* %7)
  %9 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %9, i32 0, i32 2
  %11 = load %struct.list_head*, %struct.list_head** %4, align 8
  %12 = call i32 @list_splice_tail_init(i32* %10, %struct.list_head* %11)
  %13 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %13, i32 0, i32 1
  %15 = load %struct.list_head*, %struct.list_head** %4, align 8
  %16 = call i32 @list_splice_tail_init(i32* %14, %struct.list_head* %15)
  %17 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %17, i32 0, i32 0
  %19 = load %struct.list_head*, %struct.list_head** %4, align 8
  %20 = call i32 @list_splice_tail_init(i32* %18, %struct.list_head* %19)
  ret void
}

declare dso_local i32 @list_splice_tail_init(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
