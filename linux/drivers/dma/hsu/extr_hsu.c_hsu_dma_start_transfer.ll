; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_start_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsu_dma_chan = type { i32*, i32 }
%struct.virt_dma_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsu_dma_chan*)* @hsu_dma_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsu_dma_start_transfer(%struct.hsu_dma_chan* %0) #0 {
  %2 = alloca %struct.hsu_dma_chan*, align 8
  %3 = alloca %struct.virt_dma_desc*, align 8
  store %struct.hsu_dma_chan* %0, %struct.hsu_dma_chan** %2, align 8
  %4 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %4, i32 0, i32 1
  %6 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %5)
  store %struct.virt_dma_desc* %6, %struct.virt_dma_desc** %3, align 8
  %7 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %8 = icmp ne %struct.virt_dma_desc* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %14 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %13, i32 0, i32 0
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %17 = call i32* @to_hsu_dma_desc(%struct.virt_dma_desc* %16)
  %18 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %21 = call i32 @hsu_dma_start_channel(%struct.hsu_dma_chan* %20)
  br label %22

22:                                               ; preds = %12, %9
  ret void
}

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32* @to_hsu_dma_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @hsu_dma_start_channel(%struct.hsu_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
