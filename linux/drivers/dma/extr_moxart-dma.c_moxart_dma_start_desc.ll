; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_moxart-dma.c_moxart_dma_start_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_moxart-dma.c_moxart_dma_start_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.moxart_chan = type { i64, i32*, i32 }
%struct.virt_dma_desc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @moxart_dma_start_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxart_dma_start_desc(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.moxart_chan*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.moxart_chan* @to_moxart_dma_chan(%struct.dma_chan* %5)
  store %struct.moxart_chan* %6, %struct.moxart_chan** %3, align 8
  %7 = load %struct.moxart_chan*, %struct.moxart_chan** %3, align 8
  %8 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %7, i32 0, i32 2
  %9 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %8)
  store %struct.virt_dma_desc* %9, %struct.virt_dma_desc** %4, align 8
  %10 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %11 = icmp ne %struct.virt_dma_desc* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.moxart_chan*, %struct.moxart_chan** %3, align 8
  %14 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %17 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %16, i32 0, i32 1
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %20 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %19, i32 0, i32 0
  %21 = call i32* @to_moxart_dma_desc(i32* %20)
  %22 = load %struct.moxart_chan*, %struct.moxart_chan** %3, align 8
  %23 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.moxart_chan*, %struct.moxart_chan** %3, align 8
  %25 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.moxart_chan*, %struct.moxart_chan** %3, align 8
  %27 = call i32 @moxart_dma_start_sg(%struct.moxart_chan* %26, i32 0)
  br label %28

28:                                               ; preds = %15, %12
  ret void
}

declare dso_local %struct.moxart_chan* @to_moxart_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32* @to_moxart_dma_desc(i32*) #1

declare dso_local i32 @moxart_dma_start_sg(%struct.moxart_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
