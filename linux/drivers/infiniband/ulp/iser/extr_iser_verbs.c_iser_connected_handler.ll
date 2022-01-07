; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_connected_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_connected_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8* }
%struct.iser_conn = type { i64, i32, i32 }
%struct.ib_qp_attr = type { %struct.iser_conn* }
%struct.ib_qp_init_attr = type { i32 }

@ISER_CONN_PENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"remote qpn:%x my qpn:%x\0A\00", align 1
@ISER_SEND_W_INV_NOT_SUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"conn %p: negotiated %s invalidation\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@ISER_CONN_UP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*, i8*)* @iser_connected_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_connected_handler(%struct.rdma_cm_id* %0, i8* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iser_conn*, align 8
  %6 = alloca %struct.ib_qp_attr, align 8
  %7 = alloca %struct.ib_qp_init_attr, align 4
  %8 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.iser_conn*
  store %struct.iser_conn* %12, %struct.iser_conn** %5, align 8
  %13 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %14 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ISER_CONN_PENDING, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %61

19:                                               ; preds = %2
  %20 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %21 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @ib_query_qp(%struct.TYPE_2__* %22, %struct.ib_qp_attr* %6, i32 -1, %struct.ib_qp_init_attr* %7)
  %24 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %6, i32 0, i32 0
  %25 = load %struct.iser_conn*, %struct.iser_conn** %24, align 8
  %26 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %27 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @iser_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %25, i8* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %19
  %35 = load i8*, i8** %4, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ISER_SEND_W_INV_NOT_SUP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %45 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %34, %19
  %47 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %48 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %49 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %54 = call i32 @iser_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.iser_conn* %47, i8* %53)
  %55 = load i64, i64* @ISER_CONN_UP, align 8
  %56 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %57 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %59 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %58, i32 0, i32 2
  %60 = call i32 @complete(i32* %59)
  br label %61

61:                                               ; preds = %46, %18
  ret void
}

declare dso_local i32 @ib_query_qp(%struct.TYPE_2__*, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @iser_info(i8*, %struct.iser_conn*, i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
