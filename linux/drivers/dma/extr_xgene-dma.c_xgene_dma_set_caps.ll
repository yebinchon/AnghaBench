; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_set_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_set_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma_chan = type { i64, i32, i32 }
%struct.dma_device = type { i8*, i8*, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@XGENE_DMA_PQ_CHANNEL = common dso_local global i64 0, align 8
@DMA_PQ = common dso_local global i32 0, align 4
@DMA_XOR = common dso_local global i32 0, align 4
@XGENE_DMA_XOR_CHANNEL = common dso_local global i64 0, align 8
@xgene_dma_alloc_chan_resources = common dso_local global i32 0, align 4
@xgene_dma_free_chan_resources = common dso_local global i32 0, align 4
@xgene_dma_issue_pending = common dso_local global i32 0, align 4
@xgene_dma_tx_status = common dso_local global i32 0, align 4
@xgene_dma_prep_xor = common dso_local global i32 0, align 4
@XGENE_DMA_MAX_XOR_SRC = common dso_local global i8* null, align 8
@DMAENGINE_ALIGN_64_BYTES = common dso_local global i8* null, align 8
@xgene_dma_prep_pq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_dma_chan*, %struct.dma_device*)* @xgene_dma_set_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_dma_set_caps(%struct.xgene_dma_chan* %0, %struct.dma_device* %1) #0 {
  %3 = alloca %struct.xgene_dma_chan*, align 8
  %4 = alloca %struct.dma_device*, align 8
  store %struct.xgene_dma_chan* %0, %struct.xgene_dma_chan** %3, align 8
  store %struct.dma_device* %1, %struct.dma_device** %4, align 8
  %5 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %6 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dma_cap_zero(i32 %7)
  %9 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XGENE_DMA_PQ_CHANNEL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @is_pq_enabled(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load i32, i32* @DMA_PQ, align 4
  %22 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %23 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_cap_set(i32 %21, i32 %24)
  %26 = load i32, i32* @DMA_XOR, align 4
  %27 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %28 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dma_cap_set(i32 %26, i32 %29)
  br label %50

31:                                               ; preds = %14, %2
  %32 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XGENE_DMA_XOR_CHANNEL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %39 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @is_pq_enabled(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @DMA_XOR, align 4
  %45 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %46 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dma_cap_set(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %37, %31
  br label %50

50:                                               ; preds = %49, %20
  %51 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %52 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %55 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %54, i32 0, i32 11
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @xgene_dma_alloc_chan_resources, align 4
  %57 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %58 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @xgene_dma_free_chan_resources, align 4
  %60 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %61 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @xgene_dma_issue_pending, align 4
  %63 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %64 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @xgene_dma_tx_status, align 4
  %66 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %67 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @DMA_XOR, align 4
  %69 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %70 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @dma_has_cap(i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %50
  %75 = load i32, i32* @xgene_dma_prep_xor, align 4
  %76 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %77 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** @XGENE_DMA_MAX_XOR_SRC, align 8
  %79 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %80 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @DMAENGINE_ALIGN_64_BYTES, align 8
  %82 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %83 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %74, %50
  %85 = load i32, i32* @DMA_PQ, align 4
  %86 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %87 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @dma_has_cap(i32 %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load i32, i32* @xgene_dma_prep_pq, align 4
  %93 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %94 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load i8*, i8** @XGENE_DMA_MAX_XOR_SRC, align 8
  %96 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %97 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** @DMAENGINE_ALIGN_64_BYTES, align 8
  %99 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %100 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %91, %84
  ret void
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i64 @is_pq_enabled(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i64 @dma_has_cap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
