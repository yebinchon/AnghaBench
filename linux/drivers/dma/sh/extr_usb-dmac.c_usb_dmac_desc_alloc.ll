; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_desc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_desc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dmac_chan = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_dmac_desc = type { i32, i32 }

@sg = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_dmac_chan*, i32, i32)* @usb_dmac_desc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_dmac_desc_alloc(%struct.usb_dmac_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_dmac_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_dmac_desc*, align 8
  %9 = alloca i64, align 8
  store %struct.usb_dmac_chan* %0, %struct.usb_dmac_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %8, align 8
  %11 = load i32, i32* @sg, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @struct_size(%struct.usb_dmac_desc* %10, i32 %11, i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.usb_dmac_desc* @kzalloc(i32 %13, i32 %14)
  store %struct.usb_dmac_desc* %15, %struct.usb_dmac_desc** %8, align 8
  %16 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %8, align 8
  %17 = icmp ne %struct.usb_dmac_desc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %8, align 8
  %24 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %8, align 8
  %26 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %25, i32 0, i32 1
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %5, align 8
  %29 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %8, align 8
  %34 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %33, i32 0, i32 1
  %35 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %5, align 8
  %36 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %35, i32 0, i32 1
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  %38 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %5, align 8
  %39 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %21, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.usb_dmac_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.usb_dmac_desc*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
