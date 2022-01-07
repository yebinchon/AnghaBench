; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_setup_hwdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_setup_hwdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_dma_chan = type { i64, %struct.dma_slave_config }
%struct.dma_slave_config = type { i64, i64, i64, i64, i64, i64 }
%struct.jz4780_dma_hwdesc = type { i64, i64, i64, i64 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@JZ_DMA_DCM_SAI = common dso_local global i64 0, align 8
@JZ_DMA_DCM_DAI = common dso_local global i64 0, align 8
@JZ_DMA_WIDTH_32_BIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@JZ_DMA_DCM_TSZ_SHIFT = common dso_local global i64 0, align 8
@JZ_DMA_DCM_SP_SHIFT = common dso_local global i64 0, align 8
@JZ_DMA_DCM_DP_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_dma_chan*, %struct.jz4780_dma_hwdesc*, i64, i64, i32)* @jz4780_dma_setup_hwdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_dma_setup_hwdesc(%struct.jz4780_dma_chan* %0, %struct.jz4780_dma_hwdesc* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.jz4780_dma_chan*, align 8
  %8 = alloca %struct.jz4780_dma_hwdesc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_slave_config*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.jz4780_dma_chan* %0, %struct.jz4780_dma_chan** %7, align 8
  store %struct.jz4780_dma_hwdesc* %1, %struct.jz4780_dma_hwdesc** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %7, align 8
  %17 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %16, i32 0, i32 1
  store %struct.dma_slave_config* %17, %struct.dma_slave_config** %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %5
  %22 = load i64, i64* @JZ_DMA_DCM_SAI, align 8
  %23 = load %struct.jz4780_dma_hwdesc*, %struct.jz4780_dma_hwdesc** %8, align 8
  %24 = getelementptr inbounds %struct.jz4780_dma_hwdesc, %struct.jz4780_dma_hwdesc* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.jz4780_dma_hwdesc*, %struct.jz4780_dma_hwdesc** %8, align 8
  %27 = getelementptr inbounds %struct.jz4780_dma_hwdesc, %struct.jz4780_dma_hwdesc* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %29 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.jz4780_dma_hwdesc*, %struct.jz4780_dma_hwdesc** %8, align 8
  %32 = getelementptr inbounds %struct.jz4780_dma_hwdesc, %struct.jz4780_dma_hwdesc* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %34 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  %36 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %37 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %14, align 8
  br label %57

39:                                               ; preds = %5
  %40 = load i64, i64* @JZ_DMA_DCM_DAI, align 8
  %41 = load %struct.jz4780_dma_hwdesc*, %struct.jz4780_dma_hwdesc** %8, align 8
  %42 = getelementptr inbounds %struct.jz4780_dma_hwdesc, %struct.jz4780_dma_hwdesc* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %44 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.jz4780_dma_hwdesc*, %struct.jz4780_dma_hwdesc** %8, align 8
  %47 = getelementptr inbounds %struct.jz4780_dma_hwdesc, %struct.jz4780_dma_hwdesc* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.jz4780_dma_hwdesc*, %struct.jz4780_dma_hwdesc** %8, align 8
  %50 = getelementptr inbounds %struct.jz4780_dma_hwdesc, %struct.jz4780_dma_hwdesc* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %52 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %13, align 8
  %54 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %55 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %14, align 8
  br label %57

57:                                               ; preds = %39, %21
  %58 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = or i64 %59, %60
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %14, align 8
  %64 = mul i64 %62, %63
  %65 = or i64 %61, %64
  %66 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %7, align 8
  %67 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %66, i32 0, i32 0
  %68 = call i64 @jz4780_dma_transfer_size(%struct.jz4780_dma_chan* %58, i64 %65, i64* %67)
  store i64 %68, i64* %15, align 8
  %69 = load i64, i64* %13, align 8
  switch i64 %69, label %73 [
    i64 130, label %70
    i64 129, label %70
    i64 128, label %71
  ]

70:                                               ; preds = %57, %57
  br label %76

71:                                               ; preds = %57
  %72 = load i64, i64* @JZ_DMA_WIDTH_32_BIT, align 8
  store i64 %72, i64* %13, align 8
  br label %76

73:                                               ; preds = %57
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %105

76:                                               ; preds = %71, %70
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* @JZ_DMA_DCM_TSZ_SHIFT, align 8
  %79 = shl i64 %77, %78
  %80 = load %struct.jz4780_dma_hwdesc*, %struct.jz4780_dma_hwdesc** %8, align 8
  %81 = getelementptr inbounds %struct.jz4780_dma_hwdesc, %struct.jz4780_dma_hwdesc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = or i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* @JZ_DMA_DCM_SP_SHIFT, align 8
  %86 = shl i64 %84, %85
  %87 = load %struct.jz4780_dma_hwdesc*, %struct.jz4780_dma_hwdesc** %8, align 8
  %88 = getelementptr inbounds %struct.jz4780_dma_hwdesc, %struct.jz4780_dma_hwdesc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = or i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @JZ_DMA_DCM_DP_SHIFT, align 8
  %93 = shl i64 %91, %92
  %94 = load %struct.jz4780_dma_hwdesc*, %struct.jz4780_dma_hwdesc** %8, align 8
  %95 = getelementptr inbounds %struct.jz4780_dma_hwdesc, %struct.jz4780_dma_hwdesc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = or i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %7, align 8
  %100 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = lshr i64 %98, %101
  %103 = load %struct.jz4780_dma_hwdesc*, %struct.jz4780_dma_hwdesc** %8, align 8
  %104 = getelementptr inbounds %struct.jz4780_dma_hwdesc, %struct.jz4780_dma_hwdesc* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %76, %73
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i64 @jz4780_dma_transfer_size(%struct.jz4780_dma_chan*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
