; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dmac_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dma_chan }
%struct.dma_chan = type { i32 }
%struct.usb_dmac = type { i32 }

@USB_DMAOR = common dso_local global i32 0, align 4
@USB_DMASWR = common dso_local global i32 0, align 4
@USB_DMASWR_SWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_dmac_chan*)* @usb_dmac_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_dmac_soft_reset(%struct.usb_dmac_chan* %0) #0 {
  %2 = alloca %struct.usb_dmac_chan*, align 8
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.usb_dmac*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_dmac_chan* %0, %struct.usb_dmac_chan** %2, align 8
  %6 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %2, align 8
  %7 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.dma_chan* %8, %struct.dma_chan** %3, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.usb_dmac* @to_usb_dmac(i32 %11)
  store %struct.usb_dmac* %12, %struct.usb_dmac** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %25, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.usb_dmac*, %struct.usb_dmac** %4, align 8
  %16 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %2, align 8
  %21 = call i64 @usb_dmac_chan_is_busy(%struct.usb_dmac_chan* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %43

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load %struct.usb_dmac*, %struct.usb_dmac** %4, align 8
  %30 = load i32, i32* @USB_DMAOR, align 4
  %31 = call i32 @usb_dmac_write(%struct.usb_dmac* %29, i32 %30, i32 0)
  %32 = load %struct.usb_dmac*, %struct.usb_dmac** %4, align 8
  %33 = load i32, i32* @USB_DMASWR, align 4
  %34 = load i32, i32* @USB_DMASWR_SWR, align 4
  %35 = call i32 @usb_dmac_write(%struct.usb_dmac* %32, i32 %33, i32 %34)
  %36 = call i32 @udelay(i32 100)
  %37 = load %struct.usb_dmac*, %struct.usb_dmac** %4, align 8
  %38 = load i32, i32* @USB_DMASWR, align 4
  %39 = call i32 @usb_dmac_write(%struct.usb_dmac* %37, i32 %38, i32 0)
  %40 = load %struct.usb_dmac*, %struct.usb_dmac** %4, align 8
  %41 = load i32, i32* @USB_DMAOR, align 4
  %42 = call i32 @usb_dmac_write(%struct.usb_dmac* %40, i32 %41, i32 1)
  br label %43

43:                                               ; preds = %28, %23
  ret void
}

declare dso_local %struct.usb_dmac* @to_usb_dmac(i32) #1

declare dso_local i64 @usb_dmac_chan_is_busy(%struct.usb_dmac_chan*) #1

declare dso_local i32 @usb_dmac_write(%struct.usb_dmac*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
