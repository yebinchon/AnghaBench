; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_wqe_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_wqe_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.ocrdma_rdma_stats_resp = type { %struct.ocrdma_wqe_stats }
%struct.ocrdma_wqe_stats = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OCRDMA_MAX_DBGFS_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"large_send_rc_wqes\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"large_write_rc_wqes\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"read_wqes\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"frmr_wqes\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"mw_bind_wqes\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"invalidate_wqes\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"dpp_wqe_drops\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ocrdma_dev*)* @ocrdma_wqe_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ocrdma_wqe_stats(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocrdma_rdma_stats_resp*, align 8
  %6 = alloca %struct.ocrdma_wqe_stats*, align 8
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
  store %struct.ocrdma_wqe_stats* %17, %struct.ocrdma_wqe_stats** %6, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @OCRDMA_MAX_DBGFS_MEM, align 4
  %20 = call i32 @memset(i8* %18, i32 0, i32 %19)
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.ocrdma_wqe_stats*, %struct.ocrdma_wqe_stats** %6, align 8
  %25 = getelementptr inbounds %struct.ocrdma_wqe_stats, %struct.ocrdma_wqe_stats* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ocrdma_wqe_stats*, %struct.ocrdma_wqe_stats** %6, align 8
  %28 = getelementptr inbounds %struct.ocrdma_wqe_stats, %struct.ocrdma_wqe_stats* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @convert_to_64bit(i32 %26, i32 %29)
  %31 = call i32 @ocrdma_add_stat(i8* %22, i8* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i8*, i8** %4, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.ocrdma_wqe_stats*, %struct.ocrdma_wqe_stats** %6, align 8
  %38 = getelementptr inbounds %struct.ocrdma_wqe_stats, %struct.ocrdma_wqe_stats* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ocrdma_wqe_stats*, %struct.ocrdma_wqe_stats** %6, align 8
  %41 = getelementptr inbounds %struct.ocrdma_wqe_stats, %struct.ocrdma_wqe_stats* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @convert_to_64bit(i32 %39, i32 %42)
  %44 = call i32 @ocrdma_add_stat(i8* %35, i8* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %4, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.ocrdma_wqe_stats*, %struct.ocrdma_wqe_stats** %6, align 8
  %51 = getelementptr inbounds %struct.ocrdma_wqe_stats, %struct.ocrdma_wqe_stats* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ocrdma_wqe_stats*, %struct.ocrdma_wqe_stats** %6, align 8
  %54 = getelementptr inbounds %struct.ocrdma_wqe_stats, %struct.ocrdma_wqe_stats* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @convert_to_64bit(i32 %52, i32 %55)
  %57 = call i32 @ocrdma_add_stat(i8* %48, i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i8*, i8** %4, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.ocrdma_wqe_stats*, %struct.ocrdma_wqe_stats** %6, align 8
  %64 = getelementptr inbounds %struct.ocrdma_wqe_stats, %struct.ocrdma_wqe_stats* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ocrdma_wqe_stats*, %struct.ocrdma_wqe_stats** %6, align 8
  %67 = getelementptr inbounds %struct.ocrdma_wqe_stats, %struct.ocrdma_wqe_stats* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @convert_to_64bit(i32 %65, i32 %68)
  %70 = call i32 @ocrdma_add_stat(i8* %61, i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i8*, i8** %4, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %4, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = load %struct.ocrdma_wqe_stats*, %struct.ocrdma_wqe_stats** %6, align 8
  %77 = getelementptr inbounds %struct.ocrdma_wqe_stats, %struct.ocrdma_wqe_stats* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ocrdma_wqe_stats*, %struct.ocrdma_wqe_stats** %6, align 8
  %80 = getelementptr inbounds %struct.ocrdma_wqe_stats, %struct.ocrdma_wqe_stats* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @convert_to_64bit(i32 %78, i32 %81)
  %83 = call i32 @ocrdma_add_stat(i8* %74, i8* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load i8*, i8** %4, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %4, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = load %struct.ocrdma_wqe_stats*, %struct.ocrdma_wqe_stats** %6, align 8
  %90 = getelementptr inbounds %struct.ocrdma_wqe_stats, %struct.ocrdma_wqe_stats* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ocrdma_wqe_stats*, %struct.ocrdma_wqe_stats** %6, align 8
  %93 = getelementptr inbounds %struct.ocrdma_wqe_stats, %struct.ocrdma_wqe_stats* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @convert_to_64bit(i32 %91, i32 %94)
  %96 = call i32 @ocrdma_add_stat(i8* %87, i8* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load i8*, i8** %4, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %4, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = load %struct.ocrdma_wqe_stats*, %struct.ocrdma_wqe_stats** %6, align 8
  %103 = getelementptr inbounds %struct.ocrdma_wqe_stats, %struct.ocrdma_wqe_stats* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @ocrdma_add_stat(i8* %100, i8* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load i8*, i8** %4, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %4, align 8
  %110 = load i8*, i8** %3, align 8
  ret i8* %110
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
