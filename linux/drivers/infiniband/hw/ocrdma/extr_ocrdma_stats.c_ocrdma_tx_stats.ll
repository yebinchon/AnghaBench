; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_tx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.ocrdma_rdma_stats_resp = type { %struct.ocrdma_tx_stats }
%struct.ocrdma_tx_stats = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OCRDMA_MAX_DBGFS_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"send_pkts\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"write_pkts\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"read_pkts\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"read_rsp_pkts\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ack_pkts\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"send_bytes\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"write_bytes\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"read_req_bytes\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"read_rsp_bytes\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"ack_timeouts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ocrdma_dev*)* @ocrdma_tx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ocrdma_tx_stats(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocrdma_rdma_stats_resp*, align 8
  %6 = alloca %struct.ocrdma_tx_stats*, align 8
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
  store %struct.ocrdma_tx_stats* %17, %struct.ocrdma_tx_stats** %6, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @OCRDMA_MAX_DBGFS_MEM, align 4
  %20 = call i32 @memset(i8* %18, i32 0, i32 %19)
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %25 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %24, i32 0, i32 18
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %28 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %27, i32 0, i32 17
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @convert_to_64bit(i32 %26, i32 %29)
  %31 = call i32 @ocrdma_add_stat(i8* %22, i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i8*, i8** %4, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %38 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %37, i32 0, i32 16
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %41 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %40, i32 0, i32 15
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @convert_to_64bit(i32 %39, i32 %42)
  %44 = call i32 @ocrdma_add_stat(i8* %35, i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %4, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %51 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %50, i32 0, i32 14
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %54 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %53, i32 0, i32 13
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @convert_to_64bit(i32 %52, i32 %55)
  %57 = call i32 @ocrdma_add_stat(i8* %48, i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i8*, i8** %4, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %64 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %67 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @convert_to_64bit(i32 %65, i32 %68)
  %70 = call i32 @ocrdma_add_stat(i8* %61, i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i8*, i8** %4, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %4, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %77 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %80 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @convert_to_64bit(i32 %78, i32 %81)
  %83 = call i32 @ocrdma_add_stat(i8* %74, i8* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load i8*, i8** %4, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %4, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %90 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %93 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @convert_to_64bit(i32 %91, i32 %94)
  %96 = call i32 @ocrdma_add_stat(i8* %87, i8* %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load i8*, i8** %4, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %4, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %103 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %106 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @convert_to_64bit(i32 %104, i32 %107)
  %109 = call i32 @ocrdma_add_stat(i8* %100, i8* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %108)
  %110 = load i8*, i8** %4, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %4, align 8
  %113 = load i8*, i8** %3, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %116 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %119 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @convert_to_64bit(i32 %117, i32 %120)
  %122 = call i32 @ocrdma_add_stat(i8* %113, i8* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %121)
  %123 = load i8*, i8** %4, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %4, align 8
  %126 = load i8*, i8** %3, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %129 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %132 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @convert_to_64bit(i32 %130, i32 %133)
  %135 = call i32 @ocrdma_add_stat(i8* %126, i8* %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %134)
  %136 = load i8*, i8** %4, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %4, align 8
  %139 = load i8*, i8** %3, align 8
  %140 = load i8*, i8** %4, align 8
  %141 = load %struct.ocrdma_tx_stats*, %struct.ocrdma_tx_stats** %6, align 8
  %142 = getelementptr inbounds %struct.ocrdma_tx_stats, %struct.ocrdma_tx_stats* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @ocrdma_add_stat(i8* %139, i8* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %144)
  %146 = load i8*, i8** %4, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %4, align 8
  %149 = load i8*, i8** %3, align 8
  ret i8* %149
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ocrdma_add_stat(i8*, i8*, i8*, i32) #1

declare dso_local i32 @convert_to_64bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
