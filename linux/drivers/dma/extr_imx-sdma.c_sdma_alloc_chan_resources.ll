; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.imx_dma_data* }
%struct.imx_dma_data = type { i32, i64, i64, i32 }
%struct.sdma_channel = type { %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"MEMCPY in case?\0A\00", align 1
@IMX_DMATYPE_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @sdma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.sdma_channel*, align 8
  %5 = alloca %struct.imx_dma_data*, align 8
  %6 = alloca %struct.imx_dma_data, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %10 = call %struct.sdma_channel* @to_sdma_chan(%struct.dma_chan* %9)
  store %struct.sdma_channel* %10, %struct.sdma_channel** %4, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %11, i32 0, i32 0
  %13 = load %struct.imx_dma_data*, %struct.imx_dma_data** %12, align 8
  store %struct.imx_dma_data* %13, %struct.imx_dma_data** %5, align 8
  %14 = load %struct.imx_dma_data*, %struct.imx_dma_data** %5, align 8
  %15 = icmp ne %struct.imx_dma_data* %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %1
  %17 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %18 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.imx_dma_data, %struct.imx_dma_data* %6, i32 0, i32 0
  store i32 2, i32* %23, align 8
  %24 = load i32, i32* @IMX_DMATYPE_MEMORY, align 4
  %25 = getelementptr inbounds %struct.imx_dma_data, %struct.imx_dma_data* %6, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.imx_dma_data, %struct.imx_dma_data* %6, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.imx_dma_data, %struct.imx_dma_data* %6, i32 0, i32 1
  store i64 0, i64* %27, align 8
  store %struct.imx_dma_data* %6, %struct.imx_dma_data** %5, align 8
  %28 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %29 = load i32, i32* @IMX_DMATYPE_MEMORY, align 4
  %30 = call i32 @sdma_get_pc(%struct.sdma_channel* %28, i32 %29)
  br label %31

31:                                               ; preds = %16, %1
  %32 = load %struct.imx_dma_data*, %struct.imx_dma_data** %5, align 8
  %33 = getelementptr inbounds %struct.imx_dma_data, %struct.imx_dma_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %38 [
    i32 130, label %35
    i32 128, label %36
    i32 129, label %37
  ]

35:                                               ; preds = %31
  store i32 3, i32* %7, align 4
  br label %39

36:                                               ; preds = %31
  store i32 2, i32* %7, align 4
  br label %39

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %31, %37
  store i32 1, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %36, %35
  %40 = load %struct.imx_dma_data*, %struct.imx_dma_data** %5, align 8
  %41 = getelementptr inbounds %struct.imx_dma_data, %struct.imx_dma_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %44 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.imx_dma_data*, %struct.imx_dma_data** %5, align 8
  %46 = getelementptr inbounds %struct.imx_dma_data, %struct.imx_dma_data* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %49 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.imx_dma_data*, %struct.imx_dma_data** %5, align 8
  %51 = getelementptr inbounds %struct.imx_dma_data, %struct.imx_dma_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %54 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %56 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clk_enable(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %39
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %98

65:                                               ; preds = %39
  %66 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %67 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @clk_enable(i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %90

75:                                               ; preds = %65
  %76 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @sdma_set_channel_priority(%struct.sdma_channel* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %83

82:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %98

83:                                               ; preds = %81
  %84 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %85 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @clk_disable(i32 %88)
  br label %90

90:                                               ; preds = %83, %74
  %91 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %92 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @clk_disable(i32 %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %90, %82, %63
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.sdma_channel* @to_sdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @sdma_get_pc(%struct.sdma_channel*, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @sdma_set_channel_priority(%struct.sdma_channel*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
