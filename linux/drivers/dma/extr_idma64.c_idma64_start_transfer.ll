; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_start_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idma64_chan = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.idma64 = type { i32 }
%struct.virt_dma_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idma64_chan*)* @idma64_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma64_start_transfer(%struct.idma64_chan* %0) #0 {
  %2 = alloca %struct.idma64_chan*, align 8
  %3 = alloca %struct.idma64*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  store %struct.idma64_chan* %0, %struct.idma64_chan** %2, align 8
  %5 = load %struct.idma64_chan*, %struct.idma64_chan** %2, align 8
  %6 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.idma64* @to_idma64(i32 %9)
  store %struct.idma64* %10, %struct.idma64** %3, align 8
  %11 = load %struct.idma64_chan*, %struct.idma64_chan** %2, align 8
  %12 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %11, i32 0, i32 1
  %13 = call %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_4__* %12)
  store %struct.virt_dma_desc* %13, %struct.virt_dma_desc** %4, align 8
  %14 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %15 = icmp ne %struct.virt_dma_desc* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.idma64_chan*, %struct.idma64_chan** %2, align 8
  %18 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %21 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %24 = call i32* @to_idma64_desc(%struct.virt_dma_desc* %23)
  %25 = load %struct.idma64_chan*, %struct.idma64_chan** %2, align 8
  %26 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.idma64*, %struct.idma64** %3, align 8
  %28 = load %struct.idma64_chan*, %struct.idma64_chan** %2, align 8
  %29 = call i32 @idma64_chan_init(%struct.idma64* %27, %struct.idma64_chan* %28)
  %30 = load %struct.idma64*, %struct.idma64** %3, align 8
  %31 = load %struct.idma64_chan*, %struct.idma64_chan** %2, align 8
  %32 = call i32 @idma64_chan_start(%struct.idma64* %30, %struct.idma64_chan* %31)
  br label %33

33:                                               ; preds = %19, %16
  ret void
}

declare dso_local %struct.idma64* @to_idma64(i32) #1

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_4__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32* @to_idma64_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @idma64_chan_init(%struct.idma64*, %struct.idma64_chan*) #1

declare dso_local i32 @idma64_chan_start(%struct.idma64*, %struct.idma64_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
