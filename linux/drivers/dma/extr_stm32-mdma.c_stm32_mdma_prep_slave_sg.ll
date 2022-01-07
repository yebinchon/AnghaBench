; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_prep_slave_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_prep_slave_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.scatterlist = type { i32 }
%struct.stm32_mdma_chan = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.stm32_mdma_desc = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Request not allowed when dma in cyclic mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64, i8*)* @stm32_mdma_prep_slave_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @stm32_mdma_prep_slave_sg(%struct.dma_chan* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.stm32_mdma_chan*, align 8
  %15 = alloca %struct.stm32_mdma_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %19 = call %struct.stm32_mdma_chan* @to_stm32_mdma_chan(%struct.dma_chan* %18)
  store %struct.stm32_mdma_chan* %19, %struct.stm32_mdma_chan** %14, align 8
  %20 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %21 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %6
  %25 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %26 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %33 = call i32 @chan2dev(%struct.stm32_mdma_chan* %32)
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %95

35:                                               ; preds = %24, %6
  %36 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.stm32_mdma_desc* @stm32_mdma_alloc_desc(%struct.stm32_mdma_chan* %36, i32 %37)
  store %struct.stm32_mdma_desc* %38, %struct.stm32_mdma_desc** %15, align 8
  %39 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %15, align 8
  %40 = icmp ne %struct.stm32_mdma_desc* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %95

42:                                               ; preds = %35
  %43 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %44 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %15, align 8
  %45 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @stm32_mdma_setup_xfer(%struct.stm32_mdma_chan* %43, %struct.stm32_mdma_desc* %44, %struct.scatterlist* %45, i32 %46, i32 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %61

52:                                               ; preds = %42
  %53 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %15, align 8
  %54 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %56 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %55, i32 0, i32 1
  %57 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %15, align 8
  %58 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %57, i32 0, i32 3
  %59 = load i64, i64* %12, align 8
  %60 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %56, i32* %58, i64 %59)
  store %struct.dma_async_tx_descriptor* %60, %struct.dma_async_tx_descriptor** %7, align 8
  br label %95

61:                                               ; preds = %51
  store i32 0, i32* %16, align 4
  br label %62

62:                                               ; preds = %89, %61
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %15, align 8
  %65 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %62
  %69 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %14, align 8
  %70 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %15, align 8
  %73 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %15, align 8
  %81 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dma_pool_free(i32 %71, i32 %79, i32 %87)
  br label %89

89:                                               ; preds = %68
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %16, align 4
  br label %62

92:                                               ; preds = %62
  %93 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %15, align 8
  %94 = call i32 @kfree(%struct.stm32_mdma_desc* %93)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %95

95:                                               ; preds = %92, %52, %41, %31
  %96 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %96
}

declare dso_local %struct.stm32_mdma_chan* @to_stm32_mdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.stm32_mdma_chan*) #1

declare dso_local %struct.stm32_mdma_desc* @stm32_mdma_alloc_desc(%struct.stm32_mdma_chan*, i32) #1

declare dso_local i32 @stm32_mdma_setup_xfer(%struct.stm32_mdma_chan*, %struct.stm32_mdma_desc*, %struct.scatterlist*, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.stm32_mdma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
