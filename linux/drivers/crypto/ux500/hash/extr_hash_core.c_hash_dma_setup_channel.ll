; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ux500/hash/extr_hash_core.c_hash_dma_setup_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ux500/hash/extr_hash_core.c_hash_dma_setup_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_device_data = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.device = type { %struct.hash_platform_data* }
%struct.hash_platform_data = type { i32, i32 }
%struct.dma_slave_config = type { i32, i32, i64, i32 }

@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@HASH_DMA_FIFO = common dso_local global i64 0, align 8
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash_device_data*, %struct.device*)* @hash_dma_setup_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_dma_setup_channel(%struct.hash_device_data* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.hash_device_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hash_platform_data*, align 8
  %6 = alloca %struct.dma_slave_config, align 8
  store %struct.hash_device_data* %0, %struct.hash_device_data** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.hash_platform_data*, %struct.hash_platform_data** %8, align 8
  store %struct.hash_platform_data* %9, %struct.hash_platform_data** %5, align 8
  %10 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 0
  store i32 16, i32* %10, align 8
  %11 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 1
  %12 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 2
  %14 = load %struct.hash_device_data*, %struct.hash_device_data** %3, align 8
  %15 = getelementptr inbounds %struct.hash_device_data, %struct.hash_device_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HASH_DMA_FIFO, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %13, align 8
  %19 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 3
  %20 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %20, i32* %19, align 8
  %21 = load %struct.hash_device_data*, %struct.hash_device_data** %3, align 8
  %22 = getelementptr inbounds %struct.hash_device_data, %struct.hash_device_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_cap_zero(i32 %24)
  %26 = load i32, i32* @DMA_SLAVE, align 4
  %27 = load %struct.hash_device_data*, %struct.hash_device_data** %3, align 8
  %28 = getelementptr inbounds %struct.hash_device_data, %struct.hash_device_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dma_cap_set(i32 %26, i32 %30)
  %32 = load %struct.hash_platform_data*, %struct.hash_platform_data** %5, align 8
  %33 = getelementptr inbounds %struct.hash_platform_data, %struct.hash_platform_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hash_device_data*, %struct.hash_device_data** %3, align 8
  %36 = getelementptr inbounds %struct.hash_device_data, %struct.hash_device_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.hash_device_data*, %struct.hash_device_data** %3, align 8
  %39 = getelementptr inbounds %struct.hash_device_data, %struct.hash_device_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hash_platform_data*, %struct.hash_platform_data** %5, align 8
  %43 = getelementptr inbounds %struct.hash_platform_data, %struct.hash_platform_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hash_device_data*, %struct.hash_device_data** %3, align 8
  %46 = getelementptr inbounds %struct.hash_device_data, %struct.hash_device_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dma_request_channel(i32 %41, i32 %44, i32 %48)
  %50 = load %struct.hash_device_data*, %struct.hash_device_data** %3, align 8
  %51 = getelementptr inbounds %struct.hash_device_data, %struct.hash_device_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.hash_device_data*, %struct.hash_device_data** %3, align 8
  %54 = getelementptr inbounds %struct.hash_device_data, %struct.hash_device_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dmaengine_slave_config(i32 %56, %struct.dma_slave_config* %6)
  %58 = load %struct.hash_device_data*, %struct.hash_device_data** %3, align 8
  %59 = getelementptr inbounds %struct.hash_device_data, %struct.hash_device_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @init_completion(i32* %60)
  ret void
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_request_channel(i32, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
