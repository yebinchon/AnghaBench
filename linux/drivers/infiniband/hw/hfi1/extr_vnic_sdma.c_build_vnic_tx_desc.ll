; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_sdma.c_build_vnic_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_sdma.c_build_vnic_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32 }
%struct.vnic_txreq = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@vnic_sdma_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_engine*, %struct.vnic_txreq*, i32)* @build_vnic_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_vnic_tx_desc(%struct.sdma_engine* %0, %struct.vnic_txreq* %1, i32 %2) #0 {
  %4 = alloca %struct.sdma_engine*, align 8
  %5 = alloca %struct.vnic_txreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %4, align 8
  store %struct.vnic_txreq* %1, %struct.vnic_txreq** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 8, i32* %8, align 4
  %9 = load %struct.vnic_txreq*, %struct.vnic_txreq** %5, align 8
  %10 = getelementptr inbounds %struct.vnic_txreq, %struct.vnic_txreq* %9, i32 0, i32 2
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.vnic_txreq*, %struct.vnic_txreq** %5, align 8
  %13 = getelementptr inbounds %struct.vnic_txreq, %struct.vnic_txreq* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %11, %16
  %18 = load %struct.vnic_txreq*, %struct.vnic_txreq** %5, align 8
  %19 = getelementptr inbounds %struct.vnic_txreq, %struct.vnic_txreq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %17, %20
  %22 = load i32, i32* @vnic_sdma_complete, align 4
  %23 = call i32 @sdma_txinit_ahg(i32* %10, i32 0, i32 %21, i32 0, i32 0, i32* null, i32 0, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %50

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @cpu_to_le64(i32 %29)
  %31 = load %struct.vnic_txreq*, %struct.vnic_txreq** %5, align 8
  %32 = getelementptr inbounds %struct.vnic_txreq, %struct.vnic_txreq* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %34 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vnic_txreq*, %struct.vnic_txreq** %5, align 8
  %37 = getelementptr inbounds %struct.vnic_txreq, %struct.vnic_txreq* %36, i32 0, i32 2
  %38 = load %struct.vnic_txreq*, %struct.vnic_txreq** %5, align 8
  %39 = getelementptr inbounds %struct.vnic_txreq, %struct.vnic_txreq* %38, i32 0, i32 1
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @sdma_txadd_kvaddr(i32 %35, i32* %37, i32* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %50

46:                                               ; preds = %28
  %47 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %48 = load %struct.vnic_txreq*, %struct.vnic_txreq** %5, align 8
  %49 = call i32 @build_vnic_ulp_payload(%struct.sdma_engine* %47, %struct.vnic_txreq* %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %45, %27
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @sdma_txinit_ahg(i32*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @sdma_txadd_kvaddr(i32, i32*, i32*, i32) #1

declare dso_local i32 @build_vnic_ulp_payload(%struct.sdma_engine*, %struct.vnic_txreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
