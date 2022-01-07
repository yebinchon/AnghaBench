; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_login_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_login_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.ib_recv_wr*, %struct.TYPE_7__*, i32, i32, i32 }
%struct.ib_sge = type { i32, %struct.ib_sge*, %struct.TYPE_7__*, i32, i32, i32 }

@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Setup sge: addr: %llx length: %d 0x%08x\0A\00", align 1
@isert_login_recv_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ib_post_recv() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_conn*)* @isert_login_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_login_post_recv(%struct.isert_conn* %0) #0 {
  %2 = alloca %struct.isert_conn*, align 8
  %3 = alloca %struct.ib_recv_wr, align 8
  %4 = alloca %struct.ib_sge, align 8
  %5 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %2, align 8
  %6 = call i32 @memset(%struct.ib_sge* %4, i32 0, i32 40)
  %7 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %8 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %4, i32 0, i32 5
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %12 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %4, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %14 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %4, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %4, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %4, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %4, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @isert_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24, i32 %26)
  %28 = load i32, i32* @isert_login_recv_done, align 4
  %29 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %30 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 4
  %34 = bitcast %struct.ib_recv_wr* %3 to %struct.ib_sge*
  %35 = call i32 @memset(%struct.ib_sge* %34, i32 0, i32 40)
  %36 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %37 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %3, i32 0, i32 2
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %40, align 8
  %41 = bitcast %struct.ib_sge* %4 to %struct.ib_recv_wr*
  %42 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %3, i32 0, i32 1
  store %struct.ib_recv_wr* %41, %struct.ib_recv_wr** %42, align 8
  %43 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %3, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %45 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = bitcast %struct.ib_recv_wr* %3 to %struct.ib_sge*
  %48 = call i32 @ib_post_recv(i32 %46, %struct.ib_sge* %47, i32* null)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %1
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @isert_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %1
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @memset(%struct.ib_sge*, i32, i32) #1

declare dso_local i32 @isert_dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @ib_post_recv(i32, %struct.ib_sge*, i32*) #1

declare dso_local i32 @isert_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
