; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_..virt-dma.h_vchan_terminate_vdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_..virt-dma.h_vchan_terminate_vdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virt_dma_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.virt_dma_chan = type { %struct.virt_dma_desc*, %struct.virt_dma_desc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virt_dma_desc*)* @vchan_terminate_vdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vchan_terminate_vdesc(%struct.virt_dma_desc* %0) #0 {
  %2 = alloca %struct.virt_dma_desc*, align 8
  %3 = alloca %struct.virt_dma_chan*, align 8
  store %struct.virt_dma_desc* %0, %struct.virt_dma_desc** %2, align 8
  %4 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %5 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.virt_dma_chan* @to_virt_chan(i32 %7)
  store %struct.virt_dma_chan* %8, %struct.virt_dma_chan** %3, align 8
  %9 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %9, i32 0, i32 1
  %11 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %10, align 8
  %12 = icmp ne %struct.virt_dma_desc* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %15 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %14, i32 0, i32 1
  %16 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %15, align 8
  %17 = call i32 @vchan_vdesc_fini(%struct.virt_dma_desc* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %20 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %20, i32 0, i32 1
  store %struct.virt_dma_desc* %19, %struct.virt_dma_desc** %21, align 8
  %22 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %22, i32 0, i32 0
  %24 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %23, align 8
  %25 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %26 = icmp eq %struct.virt_dma_desc* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %28, i32 0, i32 0
  store %struct.virt_dma_desc* null, %struct.virt_dma_desc** %29, align 8
  br label %30

30:                                               ; preds = %27, %18
  ret void
}

declare dso_local %struct.virt_dma_chan* @to_virt_chan(i32) #1

declare dso_local i32 @vchan_vdesc_fini(%struct.virt_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
