; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_sun4i_dma_prep_dma_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_sun4i_dma_prep_dma_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.sun4i_dma_vchan = type { i32, i64, %struct.dma_slave_config }
%struct.dma_slave_config = type { i32, i32, i8*, i8* }
%struct.sun4i_dma_promise = type { i32, i32 }
%struct.sun4i_dma_contract = type { i32, i32 }

@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@SUN4I_DDMA_DRQ_TYPE_SDRAM = common dso_local global i32 0, align 4
@SUN4I_NDMA_DRQ_TYPE_SDRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i64, i64)* @sun4i_dma_prep_dma_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @sun4i_dma_prep_dma_memcpy(%struct.dma_chan* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sun4i_dma_vchan*, align 8
  %13 = alloca %struct.dma_slave_config*, align 8
  %14 = alloca %struct.sun4i_dma_promise*, align 8
  %15 = alloca %struct.sun4i_dma_contract*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %17 = call %struct.sun4i_dma_vchan* @to_sun4i_dma_vchan(%struct.dma_chan* %16)
  store %struct.sun4i_dma_vchan* %17, %struct.sun4i_dma_vchan** %12, align 8
  %18 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %12, align 8
  %19 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %18, i32 0, i32 2
  store %struct.dma_slave_config* %19, %struct.dma_slave_config** %13, align 8
  %20 = call %struct.sun4i_dma_contract* (...) @generate_dma_contract()
  store %struct.sun4i_dma_contract* %20, %struct.sun4i_dma_contract** %15, align 8
  %21 = load %struct.sun4i_dma_contract*, %struct.sun4i_dma_contract** %15, align 8
  %22 = icmp ne %struct.sun4i_dma_contract* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %97

24:                                               ; preds = %5
  %25 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %26 = load %struct.dma_slave_config*, %struct.dma_slave_config** %13, align 8
  %27 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %29 = load %struct.dma_slave_config*, %struct.dma_slave_config** %13, align 8
  %30 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.dma_slave_config*, %struct.dma_slave_config** %13, align 8
  %32 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %31, i32 0, i32 0
  store i32 8, i32* %32, align 8
  %33 = load %struct.dma_slave_config*, %struct.dma_slave_config** %13, align 8
  %34 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %33, i32 0, i32 1
  store i32 8, i32* %34, align 4
  %35 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %12, align 8
  %36 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %24
  %40 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.dma_slave_config*, %struct.dma_slave_config** %13, align 8
  %45 = call %struct.sun4i_dma_promise* @generate_ddma_promise(%struct.dma_chan* %40, i32 %41, i32 %42, i64 %43, %struct.dma_slave_config* %44)
  store %struct.sun4i_dma_promise* %45, %struct.sun4i_dma_promise** %14, align 8
  br label %54

46:                                               ; preds = %24
  %47 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.dma_slave_config*, %struct.dma_slave_config** %13, align 8
  %52 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %53 = call %struct.sun4i_dma_promise* @generate_ndma_promise(%struct.dma_chan* %47, i32 %48, i32 %49, i64 %50, %struct.dma_slave_config* %51, i32 %52)
  store %struct.sun4i_dma_promise* %53, %struct.sun4i_dma_promise** %14, align 8
  br label %54

54:                                               ; preds = %46, %39
  %55 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %56 = icmp ne %struct.sun4i_dma_promise* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct.sun4i_dma_contract*, %struct.sun4i_dma_contract** %15, align 8
  %59 = call i32 @kfree(%struct.sun4i_dma_contract* %58)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %97

60:                                               ; preds = %54
  %61 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %12, align 8
  %62 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32, i32* @SUN4I_DDMA_DRQ_TYPE_SDRAM, align 4
  %67 = call i32 @SUN4I_DMA_CFG_SRC_DRQ_TYPE(i32 %66)
  %68 = load i32, i32* @SUN4I_DDMA_DRQ_TYPE_SDRAM, align 4
  %69 = call i32 @SUN4I_DMA_CFG_DST_DRQ_TYPE(i32 %68)
  %70 = or i32 %67, %69
  %71 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %72 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %85

75:                                               ; preds = %60
  %76 = load i32, i32* @SUN4I_NDMA_DRQ_TYPE_SDRAM, align 4
  %77 = call i32 @SUN4I_DMA_CFG_SRC_DRQ_TYPE(i32 %76)
  %78 = load i32, i32* @SUN4I_NDMA_DRQ_TYPE_SDRAM, align 4
  %79 = call i32 @SUN4I_DMA_CFG_DST_DRQ_TYPE(i32 %78)
  %80 = or i32 %77, %79
  %81 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %82 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %75, %65
  %86 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %87 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %86, i32 0, i32 1
  %88 = load %struct.sun4i_dma_contract*, %struct.sun4i_dma_contract** %15, align 8
  %89 = getelementptr inbounds %struct.sun4i_dma_contract, %struct.sun4i_dma_contract* %88, i32 0, i32 1
  %90 = call i32 @list_add_tail(i32* %87, i32* %89)
  %91 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %12, align 8
  %92 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %91, i32 0, i32 0
  %93 = load %struct.sun4i_dma_contract*, %struct.sun4i_dma_contract** %15, align 8
  %94 = getelementptr inbounds %struct.sun4i_dma_contract, %struct.sun4i_dma_contract* %93, i32 0, i32 0
  %95 = load i64, i64* %11, align 8
  %96 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %92, i32* %94, i64 %95)
  store %struct.dma_async_tx_descriptor* %96, %struct.dma_async_tx_descriptor** %6, align 8
  br label %97

97:                                               ; preds = %85, %57, %23
  %98 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %98
}

declare dso_local %struct.sun4i_dma_vchan* @to_sun4i_dma_vchan(%struct.dma_chan*) #1

declare dso_local %struct.sun4i_dma_contract* @generate_dma_contract(...) #1

declare dso_local %struct.sun4i_dma_promise* @generate_ddma_promise(%struct.dma_chan*, i32, i32, i64, %struct.dma_slave_config*) #1

declare dso_local %struct.sun4i_dma_promise* @generate_ndma_promise(%struct.dma_chan*, i32, i32, i64, %struct.dma_slave_config*, i32) #1

declare dso_local i32 @kfree(%struct.sun4i_dma_contract*) #1

declare dso_local i32 @SUN4I_DMA_CFG_SRC_DRQ_TYPE(i32) #1

declare dso_local i32 @SUN4I_DMA_CFG_DST_DRQ_TYPE(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
