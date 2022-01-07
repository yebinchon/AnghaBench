; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_dmac = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usb_dmac_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_dmac_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_dmac*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.usb_dmac* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.usb_dmac* %6, %struct.usb_dmac** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.usb_dmac*, %struct.usb_dmac** %3, align 8
  %10 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.usb_dmac*, %struct.usb_dmac** %3, align 8
  %15 = load %struct.usb_dmac*, %struct.usb_dmac** %3, align 8
  %16 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @usb_dmac_chan_remove(%struct.usb_dmac* %14, i32* %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @of_dma_controller_free(i32 %29)
  %31 = load %struct.usb_dmac*, %struct.usb_dmac** %3, align 8
  %32 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %31, i32 0, i32 1
  %33 = call i32 @dma_async_device_unregister(i32* %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @pm_runtime_disable(%struct.TYPE_2__* %35)
  ret i32 0
}

declare dso_local %struct.usb_dmac* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_dmac_chan_remove(%struct.usb_dmac*, i32*) #1

declare dso_local i32 @of_dma_controller_free(i32) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
