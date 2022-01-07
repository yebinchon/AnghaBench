; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_get_current_residue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_get_current_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dmac_chan = type { i32 }
%struct.usb_dmac_desc = type { i64, %struct.usb_dmac_sg* }
%struct.usb_dmac_sg = type { i32, i32 }

@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@USB_DMADAR = common dso_local global i32 0, align 4
@USB_DMASAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_dmac_chan*, %struct.usb_dmac_desc*, i32)* @usb_dmac_get_current_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_dmac_get_current_residue(%struct.usb_dmac_chan* %0, %struct.usb_dmac_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_dmac_chan*, align 8
  %5 = alloca %struct.usb_dmac_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_dmac_sg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_dmac_chan* %0, %struct.usb_dmac_chan** %4, align 8
  store %struct.usb_dmac_desc* %1, %struct.usb_dmac_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %5, align 8
  %11 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %10, i32 0, i32 1
  %12 = load %struct.usb_dmac_sg*, %struct.usb_dmac_sg** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.usb_dmac_sg, %struct.usb_dmac_sg* %12, i64 %14
  store %struct.usb_dmac_sg* %15, %struct.usb_dmac_sg** %7, align 8
  %16 = load %struct.usb_dmac_sg*, %struct.usb_dmac_sg** %7, align 8
  %17 = getelementptr inbounds %struct.usb_dmac_sg, %struct.usb_dmac_sg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.usb_dmac_sg*, %struct.usb_dmac_sg** %7, align 8
  %20 = getelementptr inbounds %struct.usb_dmac_sg, %struct.usb_dmac_sg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %5, align 8
  %23 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %4, align 8
  %29 = load i32, i32* @USB_DMADAR, align 4
  %30 = call i32 @usb_dmac_chan_read(%struct.usb_dmac_chan* %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = sub i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %43

35:                                               ; preds = %3
  %36 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %4, align 8
  %37 = load i32, i32* @USB_DMASAR, align 4
  %38 = call i32 @usb_dmac_chan_read(%struct.usb_dmac_chan* %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = sub i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %35, %27
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @usb_dmac_chan_read(%struct.usb_dmac_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
