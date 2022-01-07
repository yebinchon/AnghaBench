; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_..virt-dma.h_vchan_cookie_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_..virt-dma.h_vchan_cookie_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virt_dma_desc = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.virt_dma_chan = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"txd %p[%x]: marked complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virt_dma_desc*)* @vchan_cookie_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vchan_cookie_complete(%struct.virt_dma_desc* %0) #0 {
  %2 = alloca %struct.virt_dma_desc*, align 8
  %3 = alloca %struct.virt_dma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.virt_dma_desc* %0, %struct.virt_dma_desc** %2, align 8
  %5 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %6 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.virt_dma_chan* @to_virt_chan(i32 %8)
  store %struct.virt_dma_chan* %9, %struct.virt_dma_chan** %3, align 8
  %10 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %11 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %15 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %14, i32 0, i32 1
  %16 = call i32 @dma_cookie_complete(%struct.TYPE_6__* %15)
  %17 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_vdbg(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.virt_dma_desc* %23, i32 %24)
  %26 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %27 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %26, i32 0, i32 0
  %28 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %28, i32 0, i32 1
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %32 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %31, i32 0, i32 0
  %33 = call i32 @tasklet_schedule(i32* %32)
  ret void
}

declare dso_local %struct.virt_dma_chan* @to_virt_chan(i32) #1

declare dso_local i32 @dma_cookie_complete(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, %struct.virt_dma_desc*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
