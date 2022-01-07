; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_cpp41_dma_filter_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_cpp41_dma_filter_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.dma_chan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.cppi41_channel = type { i64, i32, i32, i64, %struct.cppi41_dd* }
%struct.cppi41_dd = type { %struct.chan_queues*, %struct.chan_queues* }
%struct.chan_queues = type { i32, i32 }

@cpp41_dma_driver = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@INFO_PORT = common dso_local global i64 0, align 8
@INFO_IS_TX = common dso_local global i64 0, align 8
@am335x_usb_queues_rx = common dso_local global i32 0, align 4
@am335x_usb_queues_tx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @cpp41_dma_filter_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp41_dma_filter_fn(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cppi41_channel*, align 8
  %7 = alloca %struct.cppi41_dd*, align 8
  %8 = alloca %struct.chan_queues*, align 8
  %9 = alloca i64*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %9, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %13 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpp41_dma_driver, i32 0, i32 0)
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

21:                                               ; preds = %2
  %22 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %23 = call %struct.cppi41_channel* @to_cpp41_chan(%struct.dma_chan* %22)
  store %struct.cppi41_channel* %23, %struct.cppi41_channel** %6, align 8
  %24 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %25 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* @INFO_PORT, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %98

33:                                               ; preds = %21
  %34 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %35 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* @INFO_IS_TX, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %98

45:                                               ; preds = %38, %33
  %46 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %47 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %46, i32 0, i32 4
  %48 = load %struct.cppi41_dd*, %struct.cppi41_dd** %47, align 8
  store %struct.cppi41_dd* %48, %struct.cppi41_dd** %7, align 8
  %49 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %50 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.cppi41_dd*, %struct.cppi41_dd** %7, align 8
  %55 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %54, i32 0, i32 1
  %56 = load %struct.chan_queues*, %struct.chan_queues** %55, align 8
  store %struct.chan_queues* %56, %struct.chan_queues** %8, align 8
  br label %61

57:                                               ; preds = %45
  %58 = load %struct.cppi41_dd*, %struct.cppi41_dd** %7, align 8
  %59 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %58, i32 0, i32 0
  %60 = load %struct.chan_queues*, %struct.chan_queues** %59, align 8
  store %struct.chan_queues* %60, %struct.chan_queues** %8, align 8
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* @am335x_usb_queues_rx, align 4
  %63 = call i64 @ARRAY_SIZE(i32 %62)
  %64 = load i32, i32* @am335x_usb_queues_tx, align 4
  %65 = call i64 @ARRAY_SIZE(i32 %64)
  %66 = icmp ne i64 %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUILD_BUG_ON(i32 %67)
  %69 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %70 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @am335x_usb_queues_rx, align 4
  %73 = call i64 @ARRAY_SIZE(i32 %72)
  %74 = icmp sge i64 %71, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @WARN_ON(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %98

79:                                               ; preds = %61
  %80 = load %struct.chan_queues*, %struct.chan_queues** %8, align 8
  %81 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %82 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.chan_queues, %struct.chan_queues* %80, i64 %83
  %85 = getelementptr inbounds %struct.chan_queues, %struct.chan_queues* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %88 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.chan_queues*, %struct.chan_queues** %8, align 8
  %90 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %91 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.chan_queues, %struct.chan_queues* %89, i64 %92
  %94 = getelementptr inbounds %struct.chan_queues, %struct.chan_queues* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cppi41_channel*, %struct.cppi41_channel** %6, align 8
  %97 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  store i32 1, i32* %3, align 4
  br label %98

98:                                               ; preds = %79, %78, %44, %32, %20
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.cppi41_channel* @to_cpp41_chan(%struct.dma_chan*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
