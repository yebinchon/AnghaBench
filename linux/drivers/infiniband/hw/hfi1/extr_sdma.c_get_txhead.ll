; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_get_txhead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_get_txhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_txreq = type { i32 }
%struct.sdma_engine = type { i64, i64, %struct.sdma_txreq** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdma_txreq* (%struct.sdma_engine*)* @get_txhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdma_txreq* @get_txhead(%struct.sdma_engine* %0) #0 {
  %2 = alloca %struct.sdma_engine*, align 8
  store %struct.sdma_engine* %0, %struct.sdma_engine** %2, align 8
  %3 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %4 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %3, i32 0, i32 2
  %5 = load %struct.sdma_txreq**, %struct.sdma_txreq*** %4, align 8
  %6 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %7 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %10 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = and i64 %8, %11
  %13 = getelementptr inbounds %struct.sdma_txreq*, %struct.sdma_txreq** %5, i64 %12
  %14 = load %struct.sdma_txreq*, %struct.sdma_txreq** %13, align 8
  ret %struct.sdma_txreq* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
