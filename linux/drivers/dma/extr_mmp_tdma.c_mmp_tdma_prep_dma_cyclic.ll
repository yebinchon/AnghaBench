; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.mmp_tdma_chan = type { i64, i32, i64, i64, i64, %struct.dma_async_tx_descriptor, i64, i64, %struct.mmp_tdma_desc*, i32, i32 }
%struct.mmp_tdma_desc = type { i64, i64, i64, i64 }

@DMA_COMPLETE = common dso_local global i64 0, align 8
@TDMA_MAX_XFER_BYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"maximum period size exceeded: %zu > %d\0A\00", align 1
@DMA_IN_PROGRESS = common dso_local global i64 0, align 8
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@DMA_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i32, i64)* @mmp_tdma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @mmp_tdma_prep_dma_cyclic(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.mmp_tdma_chan*, align 8
  %15 = alloca %struct.mmp_tdma_desc*, align 8
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
  %20 = call %struct.mmp_tdma_chan* @to_mmp_tdma_chan(%struct.dma_chan* %19)
  store %struct.mmp_tdma_chan* %20, %struct.mmp_tdma_chan** %14, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %25 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %26 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DMA_COMPLETE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %152

31:                                               ; preds = %6
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @TDMA_MAX_XFER_BYTES, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %37 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @TDMA_MAX_XFER_BYTES, align 8
  %41 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40)
  br label %148

42:                                               ; preds = %31
  %43 = load i64, i64* @DMA_IN_PROGRESS, align 8
  %44 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %45 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %48 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %50 = call %struct.mmp_tdma_desc* @mmp_tdma_alloc_descriptor(%struct.mmp_tdma_chan* %49)
  store %struct.mmp_tdma_desc* %50, %struct.mmp_tdma_desc** %15, align 8
  %51 = load %struct.mmp_tdma_desc*, %struct.mmp_tdma_desc** %15, align 8
  %52 = icmp ne %struct.mmp_tdma_desc* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %148

54:                                               ; preds = %42
  %55 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %58 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %57, i32 0, i32 9
  %59 = call i32 @mmp_tdma_config_write(%struct.dma_chan* %55, i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %115, %54
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %10, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %129

65:                                               ; preds = %60
  %66 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %67 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %66, i32 0, i32 8
  %68 = load %struct.mmp_tdma_desc*, %struct.mmp_tdma_desc** %67, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.mmp_tdma_desc, %struct.mmp_tdma_desc* %68, i64 %70
  store %struct.mmp_tdma_desc* %71, %struct.mmp_tdma_desc** %15, align 8
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %16, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %78 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.mmp_tdma_desc*, %struct.mmp_tdma_desc** %15, align 8
  %81 = getelementptr inbounds %struct.mmp_tdma_desc, %struct.mmp_tdma_desc* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  br label %93

82:                                               ; preds = %65
  %83 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %84 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = mul i64 32, %88
  %90 = add i64 %85, %89
  %91 = load %struct.mmp_tdma_desc*, %struct.mmp_tdma_desc** %15, align 8
  %92 = getelementptr inbounds %struct.mmp_tdma_desc, %struct.mmp_tdma_desc* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %82, %76
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.mmp_tdma_desc*, %struct.mmp_tdma_desc** %15, align 8
  %100 = getelementptr inbounds %struct.mmp_tdma_desc, %struct.mmp_tdma_desc* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %102 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.mmp_tdma_desc*, %struct.mmp_tdma_desc** %15, align 8
  %105 = getelementptr inbounds %struct.mmp_tdma_desc, %struct.mmp_tdma_desc* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %115

106:                                              ; preds = %93
  %107 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %108 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.mmp_tdma_desc*, %struct.mmp_tdma_desc** %15, align 8
  %111 = getelementptr inbounds %struct.mmp_tdma_desc, %struct.mmp_tdma_desc* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load %struct.mmp_tdma_desc*, %struct.mmp_tdma_desc** %15, align 8
  %114 = getelementptr inbounds %struct.mmp_tdma_desc, %struct.mmp_tdma_desc* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %106, %97
  %116 = load i64, i64* %11, align 8
  %117 = load %struct.mmp_tdma_desc*, %struct.mmp_tdma_desc** %15, align 8
  %118 = getelementptr inbounds %struct.mmp_tdma_desc, %struct.mmp_tdma_desc* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %9, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %17, align 4
  br label %60

129:                                              ; preds = %60
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %132 = and i64 %130, %131
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %136 = call i32 @mmp_tdma_enable_irq(%struct.mmp_tdma_chan* %135, i32 1)
  br label %137

137:                                              ; preds = %134, %129
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %140 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %139, i32 0, i32 3
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* %11, align 8
  %142 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %143 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %142, i32 0, i32 4
  store i64 %141, i64* %143, align 8
  %144 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %145 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %144, i32 0, i32 6
  store i64 0, i64* %145, align 8
  %146 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %147 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %146, i32 0, i32 5
  store %struct.dma_async_tx_descriptor* %147, %struct.dma_async_tx_descriptor** %7, align 8
  br label %152

148:                                              ; preds = %53, %35
  %149 = load i64, i64* @DMA_ERROR, align 8
  %150 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %14, align 8
  %151 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %152

152:                                              ; preds = %148, %137, %30
  %153 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %153
}

declare dso_local %struct.mmp_tdma_chan* @to_mmp_tdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

declare dso_local %struct.mmp_tdma_desc* @mmp_tdma_alloc_descriptor(%struct.mmp_tdma_chan*) #1

declare dso_local i32 @mmp_tdma_config_write(%struct.dma_chan*, i32, i32*) #1

declare dso_local i32 @mmp_tdma_enable_irq(%struct.mmp_tdma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
