; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mxs_dma_chan = type { i32, i32, i32, %struct.TYPE_5__, %struct.mxs_dma_engine* }
%struct.TYPE_5__ = type { i32 }
%struct.mxs_dma_engine = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@CCW_BLOCK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mxs_dma_int_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mxs-dma\00", align 1
@mxs_dma_tx_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mxs_dma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_dma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.mxs_dma_chan*, align 8
  %5 = alloca %struct.mxs_dma_engine*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan* %7)
  store %struct.mxs_dma_chan* %8, %struct.mxs_dma_chan** %4, align 8
  %9 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %4, align 8
  %10 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %9, i32 0, i32 4
  %11 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %10, align 8
  store %struct.mxs_dma_engine* %11, %struct.mxs_dma_engine** %5, align 8
  %12 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %5, align 8
  %13 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CCW_BLOCK_SIZE, align 4
  %17 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %4, align 8
  %18 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @dma_alloc_coherent(i32 %15, i32 %16, i32* %18, i32 %19)
  %21 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %4, align 8
  %22 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %4, align 8
  %24 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %81

30:                                               ; preds = %1
  %31 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %4, align 8
  %32 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @mxs_dma_int_handler, align 4
  %35 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %5, align 8
  %36 = call i32 @request_irq(i32 %33, i32 %34, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.mxs_dma_engine* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %68

40:                                               ; preds = %30
  %41 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %5, align 8
  %42 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_prepare_enable(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %62

48:                                               ; preds = %40
  %49 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %50 = call i32 @mxs_dma_reset_chan(%struct.dma_chan* %49)
  %51 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %4, align 8
  %52 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %51, i32 0, i32 3
  %53 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %54 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_5__* %52, %struct.dma_chan* %53)
  %55 = load i32, i32* @mxs_dma_tx_submit, align 4
  %56 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %4, align 8
  %57 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %4, align 8
  %60 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %59, i32 0, i32 3
  %61 = call i32 @async_tx_ack(%struct.TYPE_5__* %60)
  store i32 0, i32* %2, align 4
  br label %83

62:                                               ; preds = %47
  %63 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %4, align 8
  %64 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %5, align 8
  %67 = call i32 @free_irq(i32 %65, %struct.mxs_dma_engine* %66)
  br label %68

68:                                               ; preds = %62, %39
  %69 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %5, align 8
  %70 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CCW_BLOCK_SIZE, align 4
  %74 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %4, align 8
  %75 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %4, align 8
  %78 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dma_free_coherent(i32 %72, i32 %73, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %68, %27
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %48
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.mxs_dma_engine*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mxs_dma_reset_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_5__*, %struct.dma_chan*) #1

declare dso_local i32 @async_tx_ack(%struct.TYPE_5__*) #1

declare dso_local i32 @free_irq(i32, %struct.mxs_dma_engine*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
