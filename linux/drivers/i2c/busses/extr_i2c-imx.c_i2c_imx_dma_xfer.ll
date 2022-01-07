; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_dma_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_dma_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_i2c_struct = type { %struct.TYPE_6__, %struct.imx_i2c_dma* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.imx_i2c_dma = type { i32, i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.device* }
%struct.i2c_msg = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.imx_i2c_struct*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"DMA mapping failed\0A\00", align 1
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Not able to get desc for DMA xfer\0A\00", align 1
@i2c_imx_dma_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"DMA submit failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_i2c_struct*, %struct.i2c_msg*)* @i2c_imx_dma_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_imx_dma_xfer(%struct.imx_i2c_struct* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_i2c_struct*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca %struct.imx_i2c_dma*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.imx_i2c_struct* %0, %struct.imx_i2c_struct** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %10 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %11 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %10, i32 0, i32 1
  %12 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %11, align 8
  store %struct.imx_i2c_dma* %12, %struct.imx_i2c_dma** %6, align 8
  %13 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %14 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %17 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %16, i32 0, i32 3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %9, align 8
  %23 = load %struct.device*, %struct.device** %9, align 8
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %28 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %31 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dma_map_single(%struct.device* %23, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %35 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.device*, %struct.device** %9, align 8
  %37 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %38 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @dma_mapping_error(%struct.device* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %2
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %106

45:                                               ; preds = %2
  %46 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %47 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %50 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %53 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %56 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %59 = load i32, i32* @DMA_CTRL_ACK, align 4
  %60 = or i32 %58, %59
  %61 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.TYPE_8__* %48, i32 %51, i32 %54, i32 %57, i32 %60)
  store %struct.dma_async_tx_descriptor* %61, %struct.dma_async_tx_descriptor** %7, align 8
  %62 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %63 = icmp ne %struct.dma_async_tx_descriptor* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %45
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %94

67:                                               ; preds = %45
  %68 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %69 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %68, i32 0, i32 4
  %70 = call i32 @reinit_completion(i32* %69)
  %71 = load i32, i32* @i2c_imx_dma_callback, align 4
  %72 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %73 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %75 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %76 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %75, i32 0, i32 0
  store %struct.imx_i2c_struct* %74, %struct.imx_i2c_struct** %76, align 8
  %77 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %78 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %77)
  %79 = call i64 @dma_submit_error(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = load %struct.device*, %struct.device** %8, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %89

84:                                               ; preds = %67
  %85 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %86 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %85, i32 0, i32 3
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = call i32 @dma_async_issue_pending(%struct.TYPE_8__* %87)
  store i32 0, i32* %3, align 4
  br label %109

89:                                               ; preds = %81
  %90 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %91 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %90, i32 0, i32 3
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = call i32 @dmaengine_terminate_all(%struct.TYPE_8__* %92)
  br label %94

94:                                               ; preds = %89, %64
  %95 = load %struct.device*, %struct.device** %9, align 8
  %96 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %97 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %100 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.imx_i2c_dma*, %struct.imx_i2c_dma** %6, align 8
  %103 = getelementptr inbounds %struct.imx_i2c_dma, %struct.imx_i2c_dma* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dma_unmap_single(%struct.device* %95, i32 %98, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %94, %42
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %106, %84
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.TYPE_8__*) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.TYPE_8__*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
