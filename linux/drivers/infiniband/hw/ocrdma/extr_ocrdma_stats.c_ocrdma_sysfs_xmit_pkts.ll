; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_sysfs_xmit_pkts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_sysfs_xmit_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ocrdma_rdma_stats_resp = type { %struct.ocrdma_tx_stats }
%struct.ocrdma_tx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ocrdma_dev*)* @ocrdma_sysfs_xmit_pkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocrdma_sysfs_xmit_pkts(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  %3 = alloca %struct.ocrdma_rdma_stats_resp*, align 8
  %4 = alloca %struct.ocrdma_tx_stats*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %2, align 8
  %5 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %6 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ocrdma_rdma_stats_resp*
  store %struct.ocrdma_rdma_stats_resp* %9, %struct.ocrdma_rdma_stats_resp** %3, align 8
  %10 = load %struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp** %3, align 8
  %11 = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, %struct.ocrdma_rdma_stats_resp* %10, i32 0, i32 0
  store %struct.ocrdma_tx_stats* %11, %struct.ocrdma_tx_stats** %4, align 8
  %12 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %4, align 8
  %13 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %4, align 8
  %16 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @convert_to_64bit(i32 %14, i32 %17)
  %19 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %4, align 8
  %20 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %4, align 8
  %23 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @convert_to_64bit(i32 %21, i32 %24)
  %26 = add nsw i64 %18, %25
  %27 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %4, align 8
  %28 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %4, align 8
  %31 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @convert_to_64bit(i32 %29, i32 %32)
  %34 = add nsw i64 %26, %33
  %35 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %4, align 8
  %36 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %4, align 8
  %39 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @convert_to_64bit(i32 %37, i32 %40)
  %42 = add nsw i64 %34, %41
  %43 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %4, align 8
  %44 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %4, align 8
  %47 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @convert_to_64bit(i32 %45, i32 %48)
  %50 = add nsw i64 %42, %49
  ret i64 %50
}

declare dso_local i64 @convert_to_64bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
