; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_virt_desc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_virt_desc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virt_dma_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_dmac_desc = type { i32 }
%struct.usb_dmac_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virt_dma_desc*)* @usb_dmac_virt_desc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_dmac_virt_desc_free(%struct.virt_dma_desc* %0) #0 {
  %2 = alloca %struct.virt_dma_desc*, align 8
  %3 = alloca %struct.usb_dmac_desc*, align 8
  %4 = alloca %struct.usb_dmac_chan*, align 8
  store %struct.virt_dma_desc* %0, %struct.virt_dma_desc** %2, align 8
  %5 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %6 = call %struct.usb_dmac_desc* @to_usb_dmac_desc(%struct.virt_dma_desc* %5)
  store %struct.usb_dmac_desc* %6, %struct.usb_dmac_desc** %3, align 8
  %7 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %8 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.usb_dmac_chan* @to_usb_dmac_chan(i32 %10)
  store %struct.usb_dmac_chan* %11, %struct.usb_dmac_chan** %4, align 8
  %12 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %4, align 8
  %13 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %3, align 8
  %14 = call i32 @usb_dmac_desc_put(%struct.usb_dmac_chan* %12, %struct.usb_dmac_desc* %13)
  ret void
}

declare dso_local %struct.usb_dmac_desc* @to_usb_dmac_desc(%struct.virt_dma_desc*) #1

declare dso_local %struct.usb_dmac_chan* @to_usb_dmac_chan(i32) #1

declare dso_local i32 @usb_dmac_desc_put(%struct.usb_dmac_chan*, %struct.usb_dmac_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
