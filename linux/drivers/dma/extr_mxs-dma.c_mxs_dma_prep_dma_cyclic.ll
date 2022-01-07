; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.mxs_dma_chan = type { i64, i64, %struct.dma_async_tx_descriptor, i64, %struct.mxs_dma_ccw*, i32, %struct.mxs_dma_engine* }
%struct.mxs_dma_ccw = type { i64, i64, i32, i64 }
%struct.mxs_dma_engine = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DMA_IN_PROGRESS = common dso_local global i64 0, align 8
@MXS_DMA_SG_LOOP = common dso_local global i32 0, align 4
@MXS_DMA_USE_SEMAPHORE = common dso_local global i32 0, align 4
@NUM_CCW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"maximum number of sg exceeded: %d > %d\0A\00", align 1
@MAX_XFER_BYTES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"maximum period size exceeded: %zu > %d\0A\00", align 1
@CCW_CHAIN = common dso_local global i32 0, align 4
@CCW_IRQ = common dso_local global i32 0, align 4
@CCW_HALT_ON_TERM = common dso_local global i32 0, align 4
@CCW_TERM_FLUSH = common dso_local global i32 0, align 4
@CCW_DEC_SEM = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@MXS_DMA_CMD_WRITE = common dso_local global i32 0, align 4
@MXS_DMA_CMD_READ = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@DMA_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i32, i64)* @mxs_dma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @mxs_dma_prep_dma_cyclic(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.mxs_dma_chan*, align 8
  %15 = alloca %struct.mxs_dma_engine*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.mxs_dma_ccw*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %20 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %21 = call %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan* %20)
  store %struct.mxs_dma_chan* %21, %struct.mxs_dma_chan** %14, align 8
  %22 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %14, align 8
  %23 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %22, i32 0, i32 6
  %24 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %23, align 8
  store %struct.mxs_dma_engine* %24, %struct.mxs_dma_engine** %15, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = udiv i64 %25, %26
  store i64 %27, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %28 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %14, align 8
  %29 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DMA_IN_PROGRESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %169

34:                                               ; preds = %6
  %35 = load i64, i64* @DMA_IN_PROGRESS, align 8
  %36 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %14, align 8
  %37 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @MXS_DMA_SG_LOOP, align 4
  %39 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %14, align 8
  %40 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @MXS_DMA_USE_SEMAPHORE, align 4
  %44 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %14, align 8
  %45 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* @NUM_CCW, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %34
  %52 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %15, align 8
  %53 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* @NUM_CCW, align 8
  %58 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %57)
  br label %165

59:                                               ; preds = %34
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @MAX_XFER_BYTES, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %15, align 8
  %65 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @MAX_XFER_BYTES, align 8
  %70 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %69)
  br label %165

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %143, %71
  %73 = load i64, i64* %18, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %159

76:                                               ; preds = %72
  %77 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %14, align 8
  %78 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %77, i32 0, i32 4
  %79 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %78, align 8
  %80 = load i64, i64* %17, align 8
  %81 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %79, i64 %80
  store %struct.mxs_dma_ccw* %81, %struct.mxs_dma_ccw** %19, align 8
  %82 = load i64, i64* %17, align 8
  %83 = add i64 %82, 1
  %84 = load i64, i64* %16, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %14, align 8
  %88 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %19, align 8
  %91 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  br label %102

92:                                               ; preds = %76
  %93 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %14, align 8
  %94 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %17, align 8
  %97 = add i64 %96, 1
  %98 = mul i64 32, %97
  %99 = add i64 %95, %98
  %100 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %19, align 8
  %101 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %100, i32 0, i32 3
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %92, %86
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %19, align 8
  %105 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %19, align 8
  %108 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %19, align 8
  %110 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %109, i32 0, i32 2
  store i32 0, i32* %110, align 8
  %111 = load i32, i32* @CCW_CHAIN, align 4
  %112 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %19, align 8
  %113 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* @CCW_IRQ, align 4
  %117 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %19, align 8
  %118 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load i32, i32* @CCW_HALT_ON_TERM, align 4
  %122 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %19, align 8
  %123 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load i32, i32* @CCW_TERM_FLUSH, align 4
  %127 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %19, align 8
  %128 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* @CCW_DEC_SEM, align 4
  %132 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %19, align 8
  %133 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %102
  %140 = load i32, i32* @MXS_DMA_CMD_WRITE, align 4
  br label %143

141:                                              ; preds = %102
  %142 = load i32, i32* @MXS_DMA_CMD_READ, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  %145 = load i32, i32* @COMMAND, align 4
  %146 = call i32 @BF_CCW(i32 %144, i32 %145)
  %147 = load %struct.mxs_dma_ccw*, %struct.mxs_dma_ccw** %19, align 8
  %148 = getelementptr inbounds %struct.mxs_dma_ccw, %struct.mxs_dma_ccw* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* %9, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %9, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %18, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %18, align 8
  %157 = load i64, i64* %17, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %17, align 8
  br label %72

159:                                              ; preds = %72
  %160 = load i64, i64* %17, align 8
  %161 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %14, align 8
  %162 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  %163 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %14, align 8
  %164 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %163, i32 0, i32 2
  store %struct.dma_async_tx_descriptor* %164, %struct.dma_async_tx_descriptor** %7, align 8
  br label %169

165:                                              ; preds = %63, %51
  %166 = load i64, i64* @DMA_ERROR, align 8
  %167 = load %struct.mxs_dma_chan*, %struct.mxs_dma_chan** %14, align 8
  %168 = getelementptr inbounds %struct.mxs_dma_chan, %struct.mxs_dma_chan* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %169

169:                                              ; preds = %165, %159, %33
  %170 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %170
}

declare dso_local %struct.mxs_dma_chan* @to_mxs_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

declare dso_local i32 @BF_CCW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
