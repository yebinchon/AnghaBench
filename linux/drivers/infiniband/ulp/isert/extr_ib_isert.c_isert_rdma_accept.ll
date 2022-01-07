; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rdma_accept.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rdma_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { i32, i32, %struct.rdma_cm_id* }
%struct.rdma_cm_id = type { i32 }
%struct.rdma_conn_param = type { i32, i32, i32, i32, i8*, i32 }
%struct.iser_cm_hdr = type { i32, i32, i32, i32, i8*, i32 }

@ISERT_ZBVA_NOT_USED = common dso_local global i32 0, align 4
@ISERT_SEND_W_INV_NOT_USED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rdma_accept() failed with: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_conn*)* @isert_rdma_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_rdma_accept(%struct.isert_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isert_conn*, align 8
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.rdma_conn_param, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iser_cm_hdr, align 8
  store %struct.isert_conn* %0, %struct.isert_conn** %3, align 8
  %8 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %9 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %8, i32 0, i32 2
  %10 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %9, align 8
  store %struct.rdma_cm_id* %10, %struct.rdma_cm_id** %4, align 8
  %11 = call i32 @memset(%struct.rdma_conn_param* %5, i32 0, i32 32)
  %12 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %13 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %5, i32 0, i32 5
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %5, i32 0, i32 0
  store i32 7, i32* %16, align 8
  %17 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %5, i32 0, i32 1
  store i32 7, i32* %17, align 4
  %18 = bitcast %struct.iser_cm_hdr* %7 to %struct.rdma_conn_param*
  %19 = call i32 @memset(%struct.rdma_conn_param* %18, i32 0, i32 32)
  %20 = load i32, i32* @ISERT_ZBVA_NOT_USED, align 4
  %21 = getelementptr inbounds %struct.iser_cm_hdr, %struct.iser_cm_hdr* %7, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %23 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.iser_cm_hdr, %struct.iser_cm_hdr* %7, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ISERT_SEND_W_INV_NOT_USED, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.iser_cm_hdr, %struct.iser_cm_hdr* %7, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  br label %32

32:                                               ; preds = %26, %1
  %33 = bitcast %struct.iser_cm_hdr* %7 to i8*
  %34 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %5, i32 0, i32 4
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %5, i32 0, i32 3
  store i32 32, i32* %35, align 4
  %36 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %37 = call i32 @rdma_accept(%struct.rdma_cm_id* %36, %struct.rdma_conn_param* %5)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @isert_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.rdma_conn_param*, i32, i32) #1

declare dso_local i32 @rdma_accept(%struct.rdma_cm_id*, %struct.rdma_conn_param*) #1

declare dso_local i32 @isert_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
