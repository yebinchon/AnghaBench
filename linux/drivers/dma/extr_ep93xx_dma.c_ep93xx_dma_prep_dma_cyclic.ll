; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_ep93xx_dma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_ep93xx_dma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.ep93xx_dma_chan = type { i8*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ep93xx_dma_desc = type { i64, %struct.dma_async_tx_descriptor, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [49 x i8] c"channel was configured with different direction\0A\00", align 1
@EP93XX_DMA_IS_CYCLIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"channel is already used for cyclic transfers\0A\00", align 1
@DMA_MAX_CHAN_BYTES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"too big period length %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"couldn't get descriptor\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i8*, i64, i64, i32, i64)* @ep93xx_dma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @ep93xx_dma_prep_dma_cyclic(%struct.dma_chan* %0, i8* %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ep93xx_dma_chan*, align 8
  %15 = alloca %struct.ep93xx_dma_desc*, align 8
  %16 = alloca %struct.ep93xx_dma_desc*, align 8
  %17 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %18 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %19 = call %struct.ep93xx_dma_chan* @to_ep93xx_dma_chan(%struct.dma_chan* %18)
  store %struct.ep93xx_dma_chan* %19, %struct.ep93xx_dma_chan** %14, align 8
  store i64 0, i64* %17, align 8
  %20 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %14, align 8
  %21 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %29 = call i32 @ep93xx_dma_chan_direction(%struct.dma_chan* %28)
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %14, align 8
  %33 = call i32 @chan2dev(%struct.ep93xx_dma_chan* %32)
  %34 = call i32 (i32, i8*, ...) @dev_warn(i32 %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %130

35:                                               ; preds = %26, %6
  %36 = load i32, i32* @EP93XX_DMA_IS_CYCLIC, align 4
  %37 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %14, align 8
  %38 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %37, i32 0, i32 2
  %39 = call i64 @test_and_set_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %14, align 8
  %43 = call i32 @chan2dev(%struct.ep93xx_dma_chan* %42)
  %44 = call i32 (i32, i8*, ...) @dev_warn(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %130

45:                                               ; preds = %35
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @DMA_MAX_CHAN_BYTES, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %14, align 8
  %51 = call i32 @chan2dev(%struct.ep93xx_dma_chan* %50)
  %52 = load i64, i64* %11, align 8
  %53 = call i32 (i32, i8*, ...) @dev_warn(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %130

54:                                               ; preds = %45
  %55 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %14, align 8
  %58 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %57, i32 0, i32 1
  %59 = call i32 @ep93xx_dma_slave_config_write(%struct.dma_chan* %55, i32 %56, i32* %58)
  store %struct.ep93xx_dma_desc* null, %struct.ep93xx_dma_desc** %16, align 8
  store i64 0, i64* %17, align 8
  br label %60

60:                                               ; preds = %114, %54
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %118

64:                                               ; preds = %60
  %65 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %14, align 8
  %66 = call %struct.ep93xx_dma_desc* @ep93xx_dma_desc_get(%struct.ep93xx_dma_chan* %65)
  store %struct.ep93xx_dma_desc* %66, %struct.ep93xx_dma_desc** %15, align 8
  %67 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %15, align 8
  %68 = icmp ne %struct.ep93xx_dma_desc* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %14, align 8
  %71 = call i32 @chan2dev(%struct.ep93xx_dma_chan* %70)
  %72 = call i32 (i32, i8*, ...) @dev_warn(i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %126

73:                                               ; preds = %64
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %17, align 8
  %80 = getelementptr i8, i8* %78, i64 %79
  %81 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %15, align 8
  %82 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %14, align 8
  %84 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %15, align 8
  %87 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  br label %99

88:                                               ; preds = %73
  %89 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %14, align 8
  %90 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %15, align 8
  %93 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %92, i32 0, i32 5
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i64, i64* %17, align 8
  %96 = getelementptr i8, i8* %94, i64 %95
  %97 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %15, align 8
  %98 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %97, i32 0, i32 4
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %88, %77
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %15, align 8
  %102 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %16, align 8
  %104 = icmp ne %struct.ep93xx_dma_desc* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %99
  %106 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %15, align 8
  store %struct.ep93xx_dma_desc* %106, %struct.ep93xx_dma_desc** %16, align 8
  br label %113

107:                                              ; preds = %99
  %108 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %15, align 8
  %109 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %108, i32 0, i32 3
  %110 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %16, align 8
  %111 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %110, i32 0, i32 2
  %112 = call i32 @list_add_tail(i32* %109, i32* %111)
  br label %113

113:                                              ; preds = %107, %105
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %17, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %17, align 8
  br label %60

118:                                              ; preds = %60
  %119 = load i32, i32* @EBUSY, align 4
  %120 = sub nsw i32 0, %119
  %121 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %16, align 8
  %122 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %16, align 8
  %125 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %124, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* %125, %struct.dma_async_tx_descriptor** %7, align 8
  br label %130

126:                                              ; preds = %69
  %127 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %14, align 8
  %128 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %16, align 8
  %129 = call i32 @ep93xx_dma_desc_put(%struct.ep93xx_dma_chan* %127, %struct.ep93xx_dma_desc* %128)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %130

130:                                              ; preds = %126, %118, %49, %41, %31
  %131 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %131
}

declare dso_local %struct.ep93xx_dma_chan* @to_ep93xx_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @ep93xx_dma_chan_direction(%struct.dma_chan*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @chan2dev(%struct.ep93xx_dma_chan*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ep93xx_dma_slave_config_write(%struct.dma_chan*, i32, i32*) #1

declare dso_local %struct.ep93xx_dma_desc* @ep93xx_dma_desc_get(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ep93xx_dma_desc_put(%struct.ep93xx_dma_chan*, %struct.ep93xx_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
