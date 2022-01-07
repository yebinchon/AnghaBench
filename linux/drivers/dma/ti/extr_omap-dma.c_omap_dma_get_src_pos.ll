; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_get_src_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_get_src_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_chan = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.omap_dmadev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@CPC = common dso_local global i32 0, align 4
@CSAC = common dso_local global i32 0, align 4
@CDAC = common dso_local global i32 0, align 4
@CSSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.omap_chan*)* @omap_dma_get_src_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @omap_dma_get_src_pos(%struct.omap_chan* %0) #0 {
  %2 = alloca %struct.omap_chan*, align 8
  %3 = alloca %struct.omap_dmadev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.omap_chan* %0, %struct.omap_chan** %2, align 8
  %6 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %7 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.omap_dmadev* @to_omap_dma_dev(i32 %10)
  store %struct.omap_dmadev* %11, %struct.omap_dmadev** %3, align 8
  %12 = load %struct.omap_dmadev*, %struct.omap_dmadev** %3, align 8
  %13 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @__dma_omap15xx(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %21 = load i32, i32* @CPC, align 4
  %22 = call i32 @omap_dma_chan_read(%struct.omap_chan* %20, i32 %21)
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  br label %39

24:                                               ; preds = %1
  %25 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %26 = load i32, i32* @CSAC, align 4
  %27 = call i64 @omap_dma_chan_read_3_3(%struct.omap_chan* %25, i32 %26)
  store i64 %27, i64* %4, align 8
  %28 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %29 = load i32, i32* @CDAC, align 4
  %30 = call i64 @omap_dma_chan_read_3_3(%struct.omap_chan* %28, i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %35 = load i32, i32* @CSSA, align 4
  %36 = call i32 @omap_dma_chan_read(%struct.omap_chan* %34, i32 %35)
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %33, %24
  br label %39

39:                                               ; preds = %38, %19
  %40 = call i64 (...) @dma_omap1()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %44 = load i32, i32* @CSSA, align 4
  %45 = call i32 @omap_dma_chan_read(%struct.omap_chan* %43, i32 %44)
  %46 = and i32 %45, -65536
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* %4, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %42, %39
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local %struct.omap_dmadev* @to_omap_dma_dev(i32) #1

declare dso_local i64 @__dma_omap15xx(i32) #1

declare dso_local i32 @omap_dma_chan_read(%struct.omap_chan*, i32) #1

declare dso_local i64 @omap_dma_chan_read_3_3(%struct.omap_chan*, i32) #1

declare dso_local i64 @dma_omap1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
