; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_sun4i_dma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_sun4i_dma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.sun4i_dma_vchan = type { i32, i32, i64, %struct.dma_slave_config }
%struct.dma_slave_config = type { i64, i64 }
%struct.sun4i_dma_promise = type { i32, i32 }
%struct.sun4i_dma_contract = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid DMA direction\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Cyclic transfers are only supported on Normal DMA\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@SUN4I_NDMA_DRQ_TYPE_SDRAM = common dso_local global i32 0, align 4
@SUN4I_NDMA_ADDR_MODE_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i32, i64)* @sun4i_dma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @sun4i_dma_prep_dma_cyclic(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.sun4i_dma_vchan*, align 8
  %15 = alloca %struct.dma_slave_config*, align 8
  %16 = alloca %struct.sun4i_dma_promise*, align 8
  %17 = alloca %struct.sun4i_dma_contract*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %25 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %26 = call %struct.sun4i_dma_vchan* @to_sun4i_dma_vchan(%struct.dma_chan* %25)
  store %struct.sun4i_dma_vchan* %26, %struct.sun4i_dma_vchan** %14, align 8
  %27 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %14, align 8
  %28 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %27, i32 0, i32 3
  store %struct.dma_slave_config* %28, %struct.dma_slave_config** %15, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @is_slave_direction(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %6
  %33 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %34 = call i32 @chan2dev(%struct.dma_chan* %33)
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %154

36:                                               ; preds = %6
  %37 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %14, align 8
  %38 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %43 = call i32 @chan2dev(%struct.dma_chan* %42)
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %154

45:                                               ; preds = %36
  %46 = call %struct.sun4i_dma_contract* (...) @generate_dma_contract()
  store %struct.sun4i_dma_contract* %46, %struct.sun4i_dma_contract** %17, align 8
  %47 = load %struct.sun4i_dma_contract*, %struct.sun4i_dma_contract** %17, align 8
  %48 = icmp ne %struct.sun4i_dma_contract* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %154

50:                                               ; preds = %45
  %51 = load %struct.sun4i_dma_contract*, %struct.sun4i_dma_contract** %17, align 8
  %52 = getelementptr inbounds %struct.sun4i_dma_contract, %struct.sun4i_dma_contract* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %18, align 8
  %58 = load %struct.dma_slave_config*, %struct.dma_slave_config** %15, align 8
  %59 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %19, align 8
  %61 = load i32, i32* @SUN4I_NDMA_DRQ_TYPE_SDRAM, align 4
  %62 = call i32 @SUN4I_DMA_CFG_SRC_DRQ_TYPE(i32 %61)
  %63 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %14, align 8
  %64 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SUN4I_DMA_CFG_DST_DRQ_TYPE(i32 %65)
  %67 = or i32 %62, %66
  %68 = load i32, i32* @SUN4I_NDMA_ADDR_MODE_IO, align 4
  %69 = call i32 @SUN4I_DMA_CFG_DST_ADDR_MODE(i32 %68)
  %70 = or i32 %67, %69
  store i32 %70, i32* %20, align 4
  br label %86

71:                                               ; preds = %50
  %72 = load %struct.dma_slave_config*, %struct.dma_slave_config** %15, align 8
  %73 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %18, align 8
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %19, align 8
  %76 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %14, align 8
  %77 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @SUN4I_DMA_CFG_SRC_DRQ_TYPE(i32 %78)
  %80 = load i32, i32* @SUN4I_NDMA_ADDR_MODE_IO, align 4
  %81 = call i32 @SUN4I_DMA_CFG_SRC_ADDR_MODE(i32 %80)
  %82 = or i32 %79, %81
  %83 = load i32, i32* @SUN4I_NDMA_DRQ_TYPE_SDRAM, align 4
  %84 = call i32 @SUN4I_DMA_CFG_DST_DRQ_TYPE(i32 %83)
  %85 = or i32 %82, %84
  store i32 %85, i32* %20, align 4
  br label %86

86:                                               ; preds = %71, %56
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = udiv i64 %87, %88
  %90 = call i32 @DIV_ROUND_UP(i64 %89, i32 2)
  store i32 %90, i32* %21, align 4
  store i32 0, i32* %24, align 4
  br label %91

91:                                               ; preds = %144, %86
  %92 = load i32, i32* %24, align 4
  %93 = load i32, i32* %21, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %147

95:                                               ; preds = %91
  %96 = load i32, i32* %24, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %11, align 8
  %99 = mul i64 %97, %98
  %100 = mul i64 %99, 2
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %22, align 4
  %102 = load i64, i64* %10, align 8
  %103 = load i32, i32* %22, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 %102, %104
  %106 = load i64, i64* %11, align 8
  %107 = mul i64 %106, 2
  %108 = call i32 @min(i64 %105, i64 %107)
  store i32 %108, i32* %23, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %95
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* %22, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  store i64 %116, i64* %18, align 8
  br label %122

117:                                              ; preds = %95
  %118 = load i64, i64* %9, align 8
  %119 = load i32, i32* %22, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  store i64 %121, i64* %19, align 8
  br label %122

122:                                              ; preds = %117, %112
  %123 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %124 = load i64, i64* %18, align 8
  %125 = load i64, i64* %19, align 8
  %126 = load i32, i32* %23, align 4
  %127 = load %struct.dma_slave_config*, %struct.dma_slave_config** %15, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call %struct.sun4i_dma_promise* @generate_ndma_promise(%struct.dma_chan* %123, i64 %124, i64 %125, i32 %126, %struct.dma_slave_config* %127, i32 %128)
  store %struct.sun4i_dma_promise* %129, %struct.sun4i_dma_promise** %16, align 8
  %130 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %16, align 8
  %131 = icmp ne %struct.sun4i_dma_promise* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %122
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %154

133:                                              ; preds = %122
  %134 = load i32, i32* %20, align 4
  %135 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %16, align 8
  %136 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %16, align 8
  %140 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %139, i32 0, i32 1
  %141 = load %struct.sun4i_dma_contract*, %struct.sun4i_dma_contract** %17, align 8
  %142 = getelementptr inbounds %struct.sun4i_dma_contract, %struct.sun4i_dma_contract* %141, i32 0, i32 2
  %143 = call i32 @list_add_tail(i32* %140, i32* %142)
  br label %144

144:                                              ; preds = %133
  %145 = load i32, i32* %24, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %24, align 4
  br label %91

147:                                              ; preds = %91
  %148 = load %struct.sun4i_dma_vchan*, %struct.sun4i_dma_vchan** %14, align 8
  %149 = getelementptr inbounds %struct.sun4i_dma_vchan, %struct.sun4i_dma_vchan* %148, i32 0, i32 0
  %150 = load %struct.sun4i_dma_contract*, %struct.sun4i_dma_contract** %17, align 8
  %151 = getelementptr inbounds %struct.sun4i_dma_contract, %struct.sun4i_dma_contract* %150, i32 0, i32 1
  %152 = load i64, i64* %13, align 8
  %153 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %149, i32* %151, i64 %152)
  store %struct.dma_async_tx_descriptor* %153, %struct.dma_async_tx_descriptor** %7, align 8
  br label %154

154:                                              ; preds = %147, %132, %49, %41, %32
  %155 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %155
}

declare dso_local %struct.sun4i_dma_vchan* @to_sun4i_dma_vchan(%struct.dma_chan*) #1

declare dso_local i32 @is_slave_direction(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local %struct.sun4i_dma_contract* @generate_dma_contract(...) #1

declare dso_local i32 @SUN4I_DMA_CFG_SRC_DRQ_TYPE(i32) #1

declare dso_local i32 @SUN4I_DMA_CFG_DST_DRQ_TYPE(i32) #1

declare dso_local i32 @SUN4I_DMA_CFG_DST_ADDR_MODE(i32) #1

declare dso_local i32 @SUN4I_DMA_CFG_SRC_ADDR_MODE(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local %struct.sun4i_dma_promise* @generate_ndma_promise(%struct.dma_chan*, i64, i64, i32, %struct.dma_slave_config*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
