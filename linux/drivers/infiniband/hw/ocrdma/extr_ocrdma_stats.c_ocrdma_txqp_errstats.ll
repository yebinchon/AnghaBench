; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_txqp_errstats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_txqp_errstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.ocrdma_rdma_stats_resp = type { %struct.ocrdma_tx_qp_err_stats }
%struct.ocrdma_tx_qp_err_stats = type { i64, i64, i64, i64, i64 }

@OCRDMA_MAX_DBGFS_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"local_length_errors\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"local_protection_errors\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"local_qp_operation_errors\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"retry_count_exceeded_errors\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"rnr_retry_count_exceeded_errors\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ocrdma_dev*)* @ocrdma_txqp_errstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ocrdma_txqp_errstats(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocrdma_rdma_stats_resp*, align 8
  %6 = alloca %struct.ocrdma_tx_qp_err_stats*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %2, align 8
  %7 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %8 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %3, align 8
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %12 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ocrdma_rdma_stats_resp*
  store %struct.ocrdma_rdma_stats_resp* %15, %struct.ocrdma_rdma_stats_resp** %5, align 8
  %16 = load %struct.ocrdma_rdma_stats_resp*, %struct.ocrdma_rdma_stats_resp** %5, align 8
  %17 = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, %struct.ocrdma_rdma_stats_resp* %16, i32 0, i32 0
  store %struct.ocrdma_tx_qp_err_stats* %17, %struct.ocrdma_tx_qp_err_stats** %6, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @OCRDMA_MAX_DBGFS_MEM, align 4
  %20 = call i32 @memset(i8* %18, i32 0, i32 %19)
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.ocrdma_tx_qp_err_stats*, %struct.ocrdma_tx_qp_err_stats** %6, align 8
  %25 = getelementptr inbounds %struct.ocrdma_tx_qp_err_stats, %struct.ocrdma_tx_qp_err_stats* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @ocrdma_add_stat(i8* %22, i8* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.ocrdma_tx_qp_err_stats*, %struct.ocrdma_tx_qp_err_stats** %6, align 8
  %35 = getelementptr inbounds %struct.ocrdma_tx_qp_err_stats, %struct.ocrdma_tx_qp_err_stats* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @ocrdma_add_stat(i8* %32, i8* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.ocrdma_tx_qp_err_stats*, %struct.ocrdma_tx_qp_err_stats** %6, align 8
  %45 = getelementptr inbounds %struct.ocrdma_tx_qp_err_stats, %struct.ocrdma_tx_qp_err_stats* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @ocrdma_add_stat(i8* %42, i8* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i8*, i8** %4, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %4, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load %struct.ocrdma_tx_qp_err_stats*, %struct.ocrdma_tx_qp_err_stats** %6, align 8
  %55 = getelementptr inbounds %struct.ocrdma_tx_qp_err_stats, %struct.ocrdma_tx_qp_err_stats* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @ocrdma_add_stat(i8* %52, i8* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i8*, i8** %4, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %4, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load %struct.ocrdma_tx_qp_err_stats*, %struct.ocrdma_tx_qp_err_stats** %6, align 8
  %65 = getelementptr inbounds %struct.ocrdma_tx_qp_err_stats, %struct.ocrdma_tx_qp_err_stats* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @ocrdma_add_stat(i8* %62, i8* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i8*, i8** %4, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %4, align 8
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ocrdma_add_stat(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
