; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_rx_dbg_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_rx_dbg_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.ocrdma_rdma_stats_resp = type { %struct.ocrdma_rx_dbg_stats }
%struct.ocrdma_rx_dbg_stats = type { i32* }

@OCRDMA_MAX_DBGFS_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"DW[%d] = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ocrdma_dev*)* @ocrdma_rx_dbg_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ocrdma_rx_dbg_stats(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocrdma_rdma_stats_resp*, align 8
  %6 = alloca %struct.ocrdma_rx_dbg_stats*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %2, align 8
  %7 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %8 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %12 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ocrdma_rdma_stats_resp*
  store %struct.ocrdma_rdma_stats_resp* %15, %struct.ocrdma_rdma_stats_resp** %5, align 8
  %16 = load %struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp** %5, align 8
  %17 = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, %struct.ocrdma_rdma_stats_resp* %16, i32 0, i32 0
  store %struct.ocrdma_rx_dbg_stats* %17, %struct.ocrdma_rx_dbg_stats** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @OCRDMA_MAX_DBGFS_MEM, align 4
  %20 = call i32 @memset(i8* %18, i32 0, i32 %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %38, %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 200
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.ocrdma_rx_dbg_stats*, %struct.ocrdma_rx_dbg_stats** %6, align 8
  %28 = getelementptr inbounds %struct.ocrdma_rx_dbg_stats, %struct.ocrdma_rx_dbg_stats* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snprintf(i8* %25, i32 80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %43 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  ret i8* %45
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
