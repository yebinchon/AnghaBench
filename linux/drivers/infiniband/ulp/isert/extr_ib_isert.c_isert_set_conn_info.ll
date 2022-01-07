; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_set_conn_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_set_conn_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_np = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_conn = type { i32, i32, i32 }
%struct.isert_conn = type { %struct.rdma_cm_id* }
%struct.rdma_cm_id = type { %struct.rdma_route }
%struct.rdma_route = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_np*, %struct.iscsi_conn*, %struct.isert_conn*)* @isert_set_conn_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_set_conn_info(%struct.iscsi_np* %0, %struct.iscsi_conn* %1, %struct.isert_conn* %2) #0 {
  %4 = alloca %struct.iscsi_np*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.isert_conn*, align 8
  %7 = alloca %struct.rdma_cm_id*, align 8
  %8 = alloca %struct.rdma_route*, align 8
  store %struct.iscsi_np* %0, %struct.iscsi_np** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  store %struct.isert_conn* %2, %struct.isert_conn** %6, align 8
  %9 = load %struct.isert_conn*, %struct.isert_conn** %6, align 8
  %10 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %9, i32 0, i32 0
  %11 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %10, align 8
  store %struct.rdma_cm_id* %11, %struct.rdma_cm_id** %7, align 8
  %12 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %7, align 8
  %13 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %12, i32 0, i32 0
  store %struct.rdma_route* %13, %struct.rdma_route** %8, align 8
  %14 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.rdma_route*, %struct.rdma_route** %8, align 8
  %21 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.rdma_route*, %struct.rdma_route** %8, align 8
  %27 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
