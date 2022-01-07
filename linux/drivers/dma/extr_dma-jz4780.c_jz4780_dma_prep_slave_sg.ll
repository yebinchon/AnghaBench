; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_prep_slave_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_prep_slave_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.scatterlist = type { i32 }
%struct.jz4780_dma_chan = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.jz4780_dma_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.jz4780_dma_desc = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@DMA_SLAVE = common dso_local global i32 0, align 4
@JZ_DMA_DCM_TIE = common dso_local global i32 0, align 4
@JZ_SOC_DATA_BREAK_LINKS = common dso_local global i32 0, align 4
@JZ_DMA_DCM_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64, i8*)* @jz4780_dma_prep_slave_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @jz4780_dma_prep_slave_sg(%struct.dma_chan* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.jz4780_dma_chan*, align 8
  %15 = alloca %struct.jz4780_dma_dev*, align 8
  %16 = alloca %struct.jz4780_dma_desc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %20 = call %struct.jz4780_dma_chan* @to_jz4780_dma_chan(%struct.dma_chan* %19)
  store %struct.jz4780_dma_chan* %20, %struct.jz4780_dma_chan** %14, align 8
  %21 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %14, align 8
  %22 = call %struct.jz4780_dma_dev* @jz4780_dma_chan_parent(%struct.jz4780_dma_chan* %21)
  store %struct.jz4780_dma_dev* %22, %struct.jz4780_dma_dev** %15, align 8
  %23 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %14, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @DMA_SLAVE, align 4
  %26 = call %struct.jz4780_dma_desc* @jz4780_dma_desc_alloc(%struct.jz4780_dma_chan* %23, i32 %24, i32 %25)
  store %struct.jz4780_dma_desc* %26, %struct.jz4780_dma_desc** %16, align 8
  %27 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %16, align 8
  %28 = icmp ne %struct.jz4780_dma_desc* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %126

30:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  br label %31

31:                                               ; preds = %116, %30
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %119

35:                                               ; preds = %31
  %36 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %14, align 8
  %37 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %16, align 8
  %38 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %17, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %44 = load i32, i32* %17, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %43, i64 %45
  %47 = call i32 @sg_dma_address(%struct.scatterlist* %46)
  %48 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %49 = load i32, i32* %17, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %48, i64 %50
  %52 = call i32 @sg_dma_len(%struct.scatterlist* %51)
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @jz4780_dma_setup_hwdesc(%struct.jz4780_dma_chan* %36, %struct.TYPE_6__* %42, i32 %47, i32 %52, i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %35
  %58 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %14, align 8
  %59 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @jz4780_dma_desc_free(i32* %61)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %126

63:                                               ; preds = %35
  %64 = load i32, i32* @JZ_DMA_DCM_TIE, align 4
  %65 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %16, align 8
  %66 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %64
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sub i32 %75, 1
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %115

78:                                               ; preds = %63
  %79 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %15, align 8
  %80 = getelementptr inbounds %struct.jz4780_dma_dev, %struct.jz4780_dma_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @JZ_SOC_DATA_BREAK_LINKS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %115, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* @JZ_DMA_DCM_LINK, align 4
  %89 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %16, align 8
  %90 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %88
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %17, align 4
  %99 = add i32 %98, 1
  %100 = zext i32 %99 to i64
  %101 = mul i64 %100, 8
  %102 = lshr i64 %101, 4
  %103 = shl i64 %102, 24
  %104 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %16, align 8
  %105 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i32, i32* %17, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  %113 = or i64 %112, %103
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  br label %115

115:                                              ; preds = %87, %78, %63
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %17, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %17, align 4
  br label %31

119:                                              ; preds = %31
  %120 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %14, align 8
  %121 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %120, i32 0, i32 0
  %122 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %16, align 8
  %123 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %122, i32 0, i32 0
  %124 = load i64, i64* %12, align 8
  %125 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %121, i32* %123, i64 %124)
  store %struct.dma_async_tx_descriptor* %125, %struct.dma_async_tx_descriptor** %7, align 8
  br label %126

126:                                              ; preds = %119, %57, %29
  %127 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %127
}

declare dso_local %struct.jz4780_dma_chan* @to_jz4780_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.jz4780_dma_dev* @jz4780_dma_chan_parent(%struct.jz4780_dma_chan*) #1

declare dso_local %struct.jz4780_dma_desc* @jz4780_dma_desc_alloc(%struct.jz4780_dma_chan*, i32, i32) #1

declare dso_local i32 @jz4780_dma_setup_hwdesc(%struct.jz4780_dma_chan*, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @jz4780_dma_desc_free(i32*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
