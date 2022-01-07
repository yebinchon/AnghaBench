; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32 }
%struct.sdma_channel = type { i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*)* @sdma_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_config(%struct.dma_chan* %0, %struct.dma_slave_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_slave_config*, align 8
  %6 = alloca %struct.sdma_channel*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %5, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %8 = call %struct.sdma_channel* @to_sdma_chan(%struct.dma_chan* %7)
  store %struct.sdma_channel* %8, %struct.sdma_channel** %6, align 8
  %9 = load %struct.sdma_channel*, %struct.sdma_channel** %6, align 8
  %10 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %9, i32 0, i32 3
  %11 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %12 = call i32 @memcpy(i32* %10, %struct.dma_slave_config* %11, i32 4)
  %13 = load %struct.sdma_channel*, %struct.sdma_channel** %6, align 8
  %14 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.sdma_channel*, %struct.sdma_channel** %6, align 8
  %19 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sdma_channel*, %struct.sdma_channel** %6, align 8
  %22 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %20, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %65

32:                                               ; preds = %17
  %33 = load %struct.sdma_channel*, %struct.sdma_channel** %6, align 8
  %34 = load %struct.sdma_channel*, %struct.sdma_channel** %6, align 8
  %35 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @sdma_event_enable(%struct.sdma_channel* %33, i64 %36)
  br label %38

38:                                               ; preds = %32, %2
  %39 = load %struct.sdma_channel*, %struct.sdma_channel** %6, align 8
  %40 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %38
  %44 = load %struct.sdma_channel*, %struct.sdma_channel** %6, align 8
  %45 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sdma_channel*, %struct.sdma_channel** %6, align 8
  %48 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %46, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %65

58:                                               ; preds = %43
  %59 = load %struct.sdma_channel*, %struct.sdma_channel** %6, align 8
  %60 = load %struct.sdma_channel*, %struct.sdma_channel** %6, align 8
  %61 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @sdma_event_enable(%struct.sdma_channel* %59, i64 %62)
  br label %64

64:                                               ; preds = %58, %38
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %55, %29
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.sdma_channel* @to_sdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @memcpy(i32*, %struct.dma_slave_config*, i32) #1

declare dso_local i32 @sdma_event_enable(%struct.sdma_channel*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
