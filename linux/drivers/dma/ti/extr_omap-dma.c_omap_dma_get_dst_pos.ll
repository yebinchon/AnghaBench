; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_get_dst_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_get_dst_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_chan = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.omap_dmadev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@CPC = common dso_local global i32 0, align 4
@CDAC = common dso_local global i32 0, align 4
@CDSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_chan*)* @omap_dma_get_dst_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dma_get_dst_pos(%struct.omap_chan* %0) #0 {
  %2 = alloca %struct.omap_chan*, align 8
  %3 = alloca %struct.omap_dmadev*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_chan* %0, %struct.omap_chan** %2, align 8
  %5 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %6 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.omap_dmadev* @to_omap_dma_dev(i32 %9)
  store %struct.omap_dmadev* %10, %struct.omap_dmadev** %3, align 8
  %11 = load %struct.omap_dmadev*, %struct.omap_dmadev** %3, align 8
  %12 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @__dma_omap15xx(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %20 = load i32, i32* @CPC, align 4
  %21 = call i32 @omap_dma_chan_read(%struct.omap_chan* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %24 = load i32, i32* @CDAC, align 4
  %25 = call i32 @omap_dma_chan_read_3_3(%struct.omap_chan* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %30 = load i32, i32* @CDSA, align 4
  %31 = call i32 @omap_dma_chan_read(%struct.omap_chan* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %22
  br label %33

33:                                               ; preds = %32, %18
  %34 = call i64 (...) @dma_omap1()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %38 = load i32, i32* @CDSA, align 4
  %39 = call i32 @omap_dma_chan_read(%struct.omap_chan* %37, i32 %38)
  %40 = and i32 %39, -65536
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %36, %33
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.omap_dmadev* @to_omap_dma_dev(i32) #1

declare dso_local i64 @__dma_omap15xx(i32) #1

declare dso_local i32 @omap_dma_chan_read(%struct.omap_chan*, i32) #1

declare dso_local i32 @omap_dma_chan_read_3_3(%struct.omap_chan*, i32) #1

declare dso_local i64 @dma_omap1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
