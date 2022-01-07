; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ux500/cryp/extr_cryp_core.c_cryp_dma_setup_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ux500/cryp/extr_cryp_core.c_cryp_dma_setup_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryp_device_data = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i8*, i8*, i32, i32, i32 }
%struct.device = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i64, i32, i32, i64 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@CRYP_DMA_TX_FIFO = common dso_local global i64 0, align 8
@CRYP_DMA_RX_FIFO = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@mem_to_engine = common dso_local global i32 0, align 4
@stedma40_filter = common dso_local global i32 0, align 4
@engine_to_mem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cryp_device_data*, %struct.device*)* @cryp_dma_setup_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cryp_dma_setup_channel(%struct.cryp_device_data* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.cryp_device_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dma_slave_config, align 8
  %6 = alloca %struct.dma_slave_config, align 8
  store %struct.cryp_device_data* %0, %struct.cryp_device_data** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %7 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 0
  store i32 4, i32* %7, align 8
  %8 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 2
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 4
  %12 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 5
  %14 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %5, i32 0, i32 6
  %16 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %17 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CRYP_DMA_TX_FIFO, align 8
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* %15, align 8
  %21 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 1
  store i32 4, i32* %22, align 4
  %23 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 2
  %24 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 3
  %26 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %27 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CRYP_DMA_RX_FIFO, align 8
  %30 = add nsw i64 %28, %29
  store i64 %30, i64* %25, align 8
  %31 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 4
  %32 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 5
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %36 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dma_cap_zero(i32 %38)
  %40 = load i32, i32* @DMA_SLAVE, align 4
  %41 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %42 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dma_cap_set(i32 %40, i32 %44)
  %46 = load i32, i32* @mem_to_engine, align 4
  %47 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %48 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  store i32 %46, i32* %49, align 8
  %50 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %51 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @stedma40_filter, align 4
  %55 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %56 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @dma_request_channel(i32 %53, i32 %54, i32 %58)
  %60 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %61 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i8* %59, i8** %62, align 8
  %63 = load i32, i32* @engine_to_mem, align 4
  %64 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %65 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 8
  %67 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %68 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @stedma40_filter, align 4
  %72 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %73 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @dma_request_channel(i32 %70, i32 %71, i32 %75)
  %77 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %78 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  %80 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %81 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @dmaengine_slave_config(i8* %83, %struct.dma_slave_config* %5)
  %85 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %86 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @dmaengine_slave_config(i8* %88, %struct.dma_slave_config* %6)
  %90 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %91 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 @init_completion(i32* %92)
  ret void
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i8* @dma_request_channel(i32, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(i8*, %struct.dma_slave_config*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
