; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h__sdma_close_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h__sdma_close_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.sdma_txreq = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@SDMA_DESC0_LAST_DESC_FLAG = common dso_local global i32 0, align 4
@SDMA_TXREQ_F_URGENT = common dso_local global i32 0, align 4
@SDMA_DESC1_HEAD_TO_HOST_FLAG = common dso_local global i32 0, align 4
@SDMA_DESC1_INT_REQ_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, %struct.sdma_txreq*)* @_sdma_close_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_sdma_close_tx(%struct.hfi1_devdata* %0, %struct.sdma_txreq* %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.sdma_txreq*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store %struct.sdma_txreq* %1, %struct.sdma_txreq** %4, align 8
  %5 = load i32, i32* @SDMA_DESC0_LAST_DESC_FLAG, align 4
  %6 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %7 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %10 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %5
  store i32 %17, i32* %15, align 4
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %19 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %22 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %25 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %20
  store i32 %32, i32* %30, align 4
  %33 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %34 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SDMA_TXREQ_F_URGENT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %2
  %40 = load i32, i32* @SDMA_DESC1_HEAD_TO_HOST_FLAG, align 4
  %41 = load i32, i32* @SDMA_DESC1_INT_REQ_FLAG, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %44 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %47 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %42
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %39, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
