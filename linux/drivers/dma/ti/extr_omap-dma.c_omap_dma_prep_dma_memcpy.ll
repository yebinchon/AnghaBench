; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_prep_dma_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_prep_dma_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.omap_chan = type { i32, i32 }
%struct.omap_desc = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@CSDP_DATA_TYPE_32 = common dso_local global i64 0, align 8
@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@CCR_DST_AMODE_POSTINC = common dso_local global i32 0, align 4
@CCR_SRC_AMODE_POSTINC = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@CICR_FRAME_IE = common dso_local global i32 0, align 4
@CICR_TOUT_IE = common dso_local global i32 0, align 4
@CSDP_DST_PORT_EMIFF = common dso_local global i32 0, align 4
@CSDP_SRC_PORT_EMIFF = common dso_local global i32 0, align 4
@CSDP_DST_PACKED = common dso_local global i32 0, align 4
@CSDP_SRC_PACKED = common dso_local global i32 0, align 4
@CICR_MISALIGNED_ERR_IE = common dso_local global i32 0, align 4
@CICR_TRANS_ERR_IE = common dso_local global i32 0, align 4
@CSDP_DST_BURST_64 = common dso_local global i32 0, align 4
@CSDP_SRC_BURST_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i64)* @omap_dma_prep_dma_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @omap_dma_prep_dma_memcpy(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.omap_chan*, align 8
  %13 = alloca %struct.omap_desc*, align 8
  %14 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %16 = call %struct.omap_chan* @to_omap_dma_chan(%struct.dma_chan* %15)
  store %struct.omap_chan* %16, %struct.omap_chan** %12, align 8
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.omap_desc* @kzalloc(i32 88, i32 %17)
  store %struct.omap_desc* %18, %struct.omap_desc** %13, align 8
  %19 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %20 = icmp ne %struct.omap_desc* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %142

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* %10, align 8
  %27 = or i64 %25, %26
  %28 = call i64 @__ffs(i64 %27)
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* @CSDP_DATA_TYPE_32, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i64, i64* @CSDP_DATA_TYPE_32, align 8
  store i64 %33, i64* %14, align 8
  br label %34

34:                                               ; preds = %32, %22
  %35 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %36 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %37 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %40 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %42 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %41, i32 0, i32 9
  store i64 0, i64* %42, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %45 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %44, i32 0, i32 8
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i64 @BIT(i64 %47)
  %49 = udiv i64 %46, %48
  %50 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %51 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %50, i32 0, i32 7
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 %49, i64* %54, align 8
  %55 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %56 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %55, i32 0, i32 7
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %62 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %61, i32 0, i32 7
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i64 %60, i64* %65, align 8
  %66 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %67 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load %struct.omap_chan*, %struct.omap_chan** %12, align 8
  %69 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %72 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @CCR_DST_AMODE_POSTINC, align 4
  %74 = load i32, i32* @CCR_SRC_AMODE_POSTINC, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %77 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %34
  %85 = load i32, i32* @CICR_FRAME_IE, align 4
  %86 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %87 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %93

90:                                               ; preds = %34
  %91 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %92 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %91, i32 0, i32 4
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %84
  %94 = load i64, i64* %14, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %97 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = call i64 (...) @dma_omap1()
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %93
  %101 = load i32, i32* @CICR_TOUT_IE, align 4
  %102 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %103 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* @CSDP_DST_PORT_EMIFF, align 4
  %107 = load i32, i32* @CSDP_SRC_PORT_EMIFF, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %110 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %135

113:                                              ; preds = %93
  %114 = load i32, i32* @CSDP_DST_PACKED, align 4
  %115 = load i32, i32* @CSDP_SRC_PACKED, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %118 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load i32, i32* @CICR_MISALIGNED_ERR_IE, align 4
  %122 = load i32, i32* @CICR_TRANS_ERR_IE, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %125 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* @CSDP_DST_BURST_64, align 4
  %129 = load i32, i32* @CSDP_SRC_BURST_64, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %132 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %113, %100
  %136 = load %struct.omap_chan*, %struct.omap_chan** %12, align 8
  %137 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %136, i32 0, i32 1
  %138 = load %struct.omap_desc*, %struct.omap_desc** %13, align 8
  %139 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %138, i32 0, i32 6
  %140 = load i64, i64* %11, align 8
  %141 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %137, i32* %139, i64 %140)
  store %struct.dma_async_tx_descriptor* %141, %struct.dma_async_tx_descriptor** %6, align 8
  br label %142

142:                                              ; preds = %135, %21
  %143 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %143
}

declare dso_local %struct.omap_chan* @to_omap_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.omap_desc* @kzalloc(i32, i32) #1

declare dso_local i64 @__ffs(i64) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i64 @dma_omap1(...) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
