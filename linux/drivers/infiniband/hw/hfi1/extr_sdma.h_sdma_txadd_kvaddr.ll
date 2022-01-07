; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h_sdma_txadd_kvaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h_sdma_txadd_kvaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sdma_txreq = type { i64, i64 }

@SDMA_MAP_SINGLE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.sdma_txreq*, i8*, i32)* @sdma_txadd_kvaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_txadd_kvaddr(%struct.hfi1_devdata* %0, %struct.sdma_txreq* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca %struct.sdma_txreq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %6, align 8
  store %struct.sdma_txreq* %1, %struct.sdma_txreq** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sdma_txreq*, %struct.sdma_txreq** %7, align 8
  %13 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sdma_txreq*, %struct.sdma_txreq** %7, align 8
  %16 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %4
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %24 = load %struct.sdma_txreq*, %struct.sdma_txreq** %7, align 8
  %25 = load i32, i32* @SDMA_MAP_SINGLE, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ext_coal_sdma_tx_descs(%struct.hfi1_devdata* %23, %struct.sdma_txreq* %24, i32 %25, i8* %26, i32* null, i32 0, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %64

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %4
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %36 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = call i32 @dma_map_single(i32* %38, i8* %39, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %44 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @dma_mapping_error(i32* %46, i32 %47)
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %34
  %52 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %53 = load %struct.sdma_txreq*, %struct.sdma_txreq** %7, align 8
  %54 = call i32 @__sdma_txclean(%struct.hfi1_devdata* %52, %struct.sdma_txreq* %53)
  %55 = load i32, i32* @ENOSPC, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %64

57:                                               ; preds = %34
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %59 = load i32, i32* @SDMA_MAP_SINGLE, align 4
  %60 = load %struct.sdma_txreq*, %struct.sdma_txreq** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @_sdma_txadd_daddr(%struct.hfi1_devdata* %58, i32 %59, %struct.sdma_txreq* %60, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %57, %51, %31
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext_coal_sdma_tx_descs(%struct.hfi1_devdata*, %struct.sdma_txreq*, i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @__sdma_txclean(%struct.hfi1_devdata*, %struct.sdma_txreq*) #1

declare dso_local i32 @_sdma_txadd_daddr(%struct.hfi1_devdata*, i32, %struct.sdma_txreq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
