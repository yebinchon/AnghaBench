; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_rx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.ocrdma_rdma_stats_resp = type { %struct.ocrdma_rx_stats }
%struct.ocrdma_rx_stats = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@OCRDMA_MAX_DBGFS_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"roce_frame_bytes\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"roce_frame_icrc_drops\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"roce_frame_payload_len_drops\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ud_drops\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"qp1_drops\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"psn_error_request_packets\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"psn_error_resp_packets\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"rnr_nak_timeouts\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"rnr_nak_receives\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"roce_frame_rxmt_drops\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"nak_count_psn_sequence_errors\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"rc_drop_count_lookup_errors\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"rq_rnr_naks\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"srq_rnr_naks\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"roce_frames\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ocrdma_dev*)* @ocrdma_rx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ocrdma_rx_stats(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocrdma_rdma_stats_resp*, align 8
  %6 = alloca %struct.ocrdma_rx_stats*, align 8
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
  store %struct.ocrdma_rx_stats* %17, %struct.ocrdma_rx_stats** %6, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @OCRDMA_MAX_DBGFS_MEM, align 4
  %20 = call i32 @memset(i8* %18, i32 0, i32 %19)
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %25 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %24, i32 0, i32 16
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %28 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @convert_to_64bit(i32 %26, i32 %29)
  %31 = call i32 @ocrdma_add_stat(i8* %22, i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i8*, i8** %4, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %38 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %37, i32 0, i32 14
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ocrdma_add_stat(i8* %35, i8* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i8*, i8** %4, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %4, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %48 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %47, i32 0, i32 13
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @ocrdma_add_stat(i8* %45, i8* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i8*, i8** %4, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %4, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %58 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %57, i32 0, i32 12
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @ocrdma_add_stat(i8* %55, i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i8*, i8** %4, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %4, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %68 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %67, i32 0, i32 11
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @ocrdma_add_stat(i8* %65, i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load i8*, i8** %4, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %4, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %78 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %77, i32 0, i32 10
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @ocrdma_add_stat(i8* %75, i8* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %4, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %4, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %88 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %87, i32 0, i32 9
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @ocrdma_add_stat(i8* %85, i8* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = load i8*, i8** %4, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %4, align 8
  %95 = load i8*, i8** %3, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %98 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %97, i32 0, i32 8
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @ocrdma_add_stat(i8* %95, i8* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  %102 = load i8*, i8** %4, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %4, align 8
  %105 = load i8*, i8** %3, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %108 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @ocrdma_add_stat(i8* %105, i8* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %110)
  %112 = load i8*, i8** %4, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %4, align 8
  %115 = load i8*, i8** %3, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %118 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @ocrdma_add_stat(i8* %115, i8* %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  %122 = load i8*, i8** %4, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %4, align 8
  %125 = load i8*, i8** %3, align 8
  %126 = load i8*, i8** %4, align 8
  %127 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %128 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @ocrdma_add_stat(i8* %125, i8* %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %130)
  %132 = load i8*, i8** %4, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %4, align 8
  %135 = load i8*, i8** %3, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %138 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @ocrdma_add_stat(i8* %135, i8* %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %140)
  %142 = load i8*, i8** %4, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %4, align 8
  %145 = load i8*, i8** %3, align 8
  %146 = load i8*, i8** %4, align 8
  %147 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %148 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 @ocrdma_add_stat(i8* %145, i8* %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %150)
  %152 = load i8*, i8** %4, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %4, align 8
  %155 = load i8*, i8** %3, align 8
  %156 = load i8*, i8** %4, align 8
  %157 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %158 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @ocrdma_add_stat(i8* %155, i8* %156, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %160)
  %162 = load i8*, i8** %4, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %4, align 8
  %165 = load i8*, i8** %3, align 8
  %166 = load i8*, i8** %4, align 8
  %167 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %168 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ocrdma_rx_stats*, %struct.ocrdma_rx_stats** %6, align 8
  %171 = getelementptr inbounds %struct.ocrdma_rx_stats, %struct.ocrdma_rx_stats* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @convert_to_64bit(i32 %169, i32 %172)
  %174 = call i32 @ocrdma_add_stat(i8* %165, i8* %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %173)
  %175 = load i8*, i8** %4, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %4, align 8
  %178 = load i8*, i8** %3, align 8
  ret i8* %178
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
