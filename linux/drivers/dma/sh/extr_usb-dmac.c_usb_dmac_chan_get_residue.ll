; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_chan_get_residue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_chan_get_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dmac_chan = type { i32, %struct.usb_dmac_desc* }
%struct.usb_dmac_desc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.virt_dma_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_dmac_chan*, i32)* @usb_dmac_chan_get_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_dmac_chan_get_residue(%struct.usb_dmac_chan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_dmac_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.virt_dma_desc*, align 8
  %8 = alloca %struct.usb_dmac_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_dmac_chan* %0, %struct.usb_dmac_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %4, align 8
  %11 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %10, i32 0, i32 1
  %12 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %11, align 8
  store %struct.usb_dmac_desc* %12, %struct.usb_dmac_desc** %8, align 8
  %13 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %8, align 8
  %14 = icmp ne %struct.usb_dmac_desc* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %4, align 8
  %17 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.virt_dma_desc* @vchan_find_desc(i32* %17, i32 %18)
  store %struct.virt_dma_desc* %19, %struct.virt_dma_desc** %7, align 8
  %20 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %7, align 8
  %21 = icmp ne %struct.virt_dma_desc* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %65

23:                                               ; preds = %15
  %24 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %7, align 8
  %25 = call %struct.usb_dmac_desc* @to_usb_dmac_desc(%struct.virt_dma_desc* %24)
  store %struct.usb_dmac_desc* %25, %struct.usb_dmac_desc** %8, align 8
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %8, align 8
  %28 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %50, %26
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %8, align 8
  %34 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %8, align 8
  %39 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %31

53:                                               ; preds = %31
  %54 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %4, align 8
  %55 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %8, align 8
  %56 = load %struct.usb_dmac_desc*, %struct.usb_dmac_desc** %8, align 8
  %57 = getelementptr inbounds %struct.usb_dmac_desc, %struct.usb_dmac_desc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @usb_dmac_get_current_residue(%struct.usb_dmac_chan* %54, %struct.usb_dmac_desc* %55, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %53, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(i32*, i32) #1

declare dso_local %struct.usb_dmac_desc* @to_usb_dmac_desc(%struct.virt_dma_desc*) #1

declare dso_local i64 @usb_dmac_get_current_residue(%struct.usb_dmac_chan*, %struct.usb_dmac_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
