; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32 }
%struct.of_dma = type { i32 }

@DMA_SLAVE = common dso_local global i32 0, align 4
@usb_dmac_chan_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @usb_dmac_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @usb_dmac_of_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %8 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %9 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %30

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @dma_cap_zero(i32 %14)
  %16 = load i32, i32* @DMA_SLAVE, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @dma_cap_set(i32 %16, i32 %17)
  %19 = load i32, i32* @usb_dmac_chan_filter, align 4
  %20 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %21 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %22 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.dma_chan* @__dma_request_channel(i32* %7, i32 %19, %struct.of_phandle_args* %20, i32 %23)
  store %struct.dma_chan* %24, %struct.dma_chan** %6, align 8
  %25 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %26 = icmp ne %struct.dma_chan* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %30

28:                                               ; preds = %13
  %29 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  store %struct.dma_chan* %29, %struct.dma_chan** %3, align 8
  br label %30

30:                                               ; preds = %28, %27, %12
  %31 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %31
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local %struct.dma_chan* @__dma_request_channel(i32*, i32, %struct.of_phandle_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
