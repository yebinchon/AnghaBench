; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.tegra_adma_chan = type { i32 }
%struct.tegra_adma_desc = type { i64, i64, i64, i32 }

@ADMA_CH_TC_COUNT_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"invalid buffer/period len\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"buf_len not a multiple of period_len\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid buffer alignment\0A\00", align 1
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i64, i64, i32, i64)* @tegra_adma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @tegra_adma_prep_dma_cyclic(%struct.dma_chan* %0, i32 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.tegra_adma_chan*, align 8
  %15 = alloca %struct.tegra_adma_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %17 = call %struct.tegra_adma_chan* @to_tegra_adma_chan(%struct.dma_chan* %16)
  store %struct.tegra_adma_chan* %17, %struct.tegra_adma_chan** %14, align 8
  store %struct.tegra_adma_desc* null, %struct.tegra_adma_desc** %15, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @ADMA_CH_TC_COUNT_MASK, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %20, %6
  %28 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %14, align 8
  %29 = call i32 @tdc2dev(%struct.tegra_adma_chan* %28)
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %82

31:                                               ; preds = %23
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = urem i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %14, align 8
  %38 = call i32 @tdc2dev(%struct.tegra_adma_chan* %37)
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %82

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @IS_ALIGNED(i32 %41, i32 4)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %14, align 8
  %46 = call i32 @tdc2dev(%struct.tegra_adma_chan* %45)
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %82

48:                                               ; preds = %40
  %49 = load i32, i32* @GFP_NOWAIT, align 4
  %50 = call %struct.tegra_adma_desc* @kzalloc(i32 32, i32 %49)
  store %struct.tegra_adma_desc* %50, %struct.tegra_adma_desc** %15, align 8
  %51 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %15, align 8
  %52 = icmp ne %struct.tegra_adma_desc* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %82

54:                                               ; preds = %48
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %15, align 8
  %57 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %15, align 8
  %60 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = udiv i64 %61, %62
  %64 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %15, align 8
  %65 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %14, align 8
  %67 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %15, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @tegra_adma_set_xfer_params(%struct.tegra_adma_chan* %66, %struct.tegra_adma_desc* %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %54
  %73 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %15, align 8
  %74 = call i32 @kfree(%struct.tegra_adma_desc* %73)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %82

75:                                               ; preds = %54
  %76 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %14, align 8
  %77 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %76, i32 0, i32 0
  %78 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %15, align 8
  %79 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %78, i32 0, i32 3
  %80 = load i64, i64* %13, align 8
  %81 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %77, i32* %79, i64 %80)
  store %struct.dma_async_tx_descriptor* %81, %struct.dma_async_tx_descriptor** %7, align 8
  br label %82

82:                                               ; preds = %75, %72, %53, %44, %36, %27
  %83 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %83
}

declare dso_local %struct.tegra_adma_chan* @to_tegra_adma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tdc2dev(%struct.tegra_adma_chan*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.tegra_adma_desc* @kzalloc(i32, i32) #1

declare dso_local i64 @tegra_adma_set_xfer_params(%struct.tegra_adma_chan*, %struct.tegra_adma_desc*, i32, i32) #1

declare dso_local i32 @kfree(%struct.tegra_adma_desc*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
