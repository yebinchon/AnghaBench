; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.jz4780_dma_chan = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.jz4780_dma_desc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@DMA_CYCLIC = common dso_local global i32 0, align 4
@JZ_DMA_DCM_TIE = common dso_local global i32 0, align 4
@JZ_DMA_DCM_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i32, i64)* @jz4780_dma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @jz4780_dma_prep_dma_cyclic(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.jz4780_dma_chan*, align 8
  %15 = alloca %struct.jz4780_dma_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %19 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %20 = call %struct.jz4780_dma_chan* @to_jz4780_dma_chan(%struct.dma_chan* %19)
  store %struct.jz4780_dma_chan* %20, %struct.jz4780_dma_chan** %14, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = urem i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %112

26:                                               ; preds = %6
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = udiv i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %16, align 4
  %31 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %14, align 8
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @DMA_CYCLIC, align 4
  %34 = call %struct.jz4780_dma_desc* @jz4780_dma_desc_alloc(%struct.jz4780_dma_chan* %31, i32 %32, i32 %33)
  store %struct.jz4780_dma_desc* %34, %struct.jz4780_dma_desc** %15, align 8
  %35 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %15, align 8
  %36 = icmp ne %struct.jz4780_dma_desc* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %112

38:                                               ; preds = %26
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %102, %38
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %105

43:                                               ; preds = %39
  %44 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %14, align 8
  %45 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %15, align 8
  %46 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %17, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @jz4780_dma_setup_hwdesc(%struct.jz4780_dma_chan* %44, %struct.TYPE_4__* %50, i64 %51, i64 %52, i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %43
  %58 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %14, align 8
  %59 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @jz4780_dma_desc_free(i32* %61)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %112

63:                                               ; preds = %43
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %9, align 8
  %67 = load i32, i32* @JZ_DMA_DCM_TIE, align 4
  %68 = load i32, i32* @JZ_DMA_DCM_LINK, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %15, align 8
  %71 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %17, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %69
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %16, align 4
  %81 = sub i32 %80, 1
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %63
  %84 = load i32, i32* %17, align 4
  %85 = add i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = mul i64 %86, 8
  %88 = lshr i64 %87, 4
  %89 = shl i64 %88, 24
  %90 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %15, align 8
  %91 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  %99 = or i64 %98, %89
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  br label %101

101:                                              ; preds = %83, %63
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %17, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %17, align 4
  br label %39

105:                                              ; preds = %39
  %106 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %14, align 8
  %107 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %106, i32 0, i32 0
  %108 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %15, align 8
  %109 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %108, i32 0, i32 0
  %110 = load i64, i64* %13, align 8
  %111 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %107, i32* %109, i64 %110)
  store %struct.dma_async_tx_descriptor* %111, %struct.dma_async_tx_descriptor** %7, align 8
  br label %112

112:                                              ; preds = %105, %57, %37, %25
  %113 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %113
}

declare dso_local %struct.jz4780_dma_chan* @to_jz4780_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.jz4780_dma_desc* @jz4780_dma_desc_alloc(%struct.jz4780_dma_chan*, i32, i32) #1

declare dso_local i32 @jz4780_dma_setup_hwdesc(%struct.jz4780_dma_chan*, %struct.TYPE_4__*, i64, i64, i32) #1

declare dso_local i32 @jz4780_dma_desc_free(i32*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
