; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h_sdma_txadd_daddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h_sdma_txadd_daddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.sdma_txreq = type { i64, i64 }

@SDMA_MAP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.sdma_txreq*, i32, i32)* @sdma_txadd_daddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_txadd_daddr(%struct.hfi1_devdata* %0, %struct.sdma_txreq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca %struct.sdma_txreq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %6, align 8
  store %struct.sdma_txreq* %1, %struct.sdma_txreq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.sdma_txreq*, %struct.sdma_txreq** %7, align 8
  %12 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sdma_txreq*, %struct.sdma_txreq** %7, align 8
  %15 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %23 = load %struct.sdma_txreq*, %struct.sdma_txreq** %7, align 8
  %24 = load i32, i32* @SDMA_MAP_NONE, align 4
  %25 = call i32 @ext_coal_sdma_tx_descs(%struct.hfi1_devdata* %22, %struct.sdma_txreq* %23, i32 %24, i32* null, i32* null, i32 0, i32 0)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %38

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %4
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %33 = load i32, i32* @SDMA_MAP_NONE, align 4
  %34 = load %struct.sdma_txreq*, %struct.sdma_txreq** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @_sdma_txadd_daddr(%struct.hfi1_devdata* %32, i32 %33, %struct.sdma_txreq* %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext_coal_sdma_tx_descs(%struct.hfi1_devdata*, %struct.sdma_txreq*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @_sdma_txadd_daddr(%struct.hfi1_devdata*, i32, %struct.sdma_txreq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
