; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h_sdma_txadd_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h_sdma_txadd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sdma_txreq = type { i64, i64 }
%struct.page = type { i32 }

@SDMA_MAP_PAGE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.sdma_txreq*, %struct.page*, i64, i32)* @sdma_txadd_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_txadd_page(%struct.hfi1_devdata* %0, %struct.sdma_txreq* %1, %struct.page* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca %struct.sdma_txreq*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %7, align 8
  store %struct.sdma_txreq* %1, %struct.sdma_txreq** %8, align 8
  store %struct.page* %2, %struct.page** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %15 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %18 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %5
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %26 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %27 = load i32, i32* @SDMA_MAP_PAGE, align 4
  %28 = load %struct.page*, %struct.page** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @ext_coal_sdma_tx_descs(%struct.hfi1_devdata* %25, %struct.sdma_txreq* %26, i32 %27, i32* null, %struct.page* %28, i64 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %68

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %5
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %39 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.page*, %struct.page** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @DMA_TO_DEVICE, align 4
  %46 = call i32 @dma_map_page(i32* %41, %struct.page* %42, i64 %43, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %48 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @dma_mapping_error(i32* %50, i32 %51)
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %37
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %57 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %58 = call i32 @__sdma_txclean(%struct.hfi1_devdata* %56, %struct.sdma_txreq* %57)
  %59 = load i32, i32* @ENOSPC, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %68

61:                                               ; preds = %37
  %62 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %63 = load i32, i32* @SDMA_MAP_PAGE, align 4
  %64 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @_sdma_txadd_daddr(%struct.hfi1_devdata* %62, i32 %63, %struct.sdma_txreq* %64, i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %61, %55, %34
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext_coal_sdma_tx_descs(%struct.hfi1_devdata*, %struct.sdma_txreq*, i32, i32*, %struct.page*, i64, i32) #1

declare dso_local i32 @dma_map_page(i32*, %struct.page*, i64, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @__sdma_txclean(%struct.hfi1_devdata*, %struct.sdma_txreq*) #1

declare dso_local i32 @_sdma_txadd_daddr(%struct.hfi1_devdata*, i32, %struct.sdma_txreq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
