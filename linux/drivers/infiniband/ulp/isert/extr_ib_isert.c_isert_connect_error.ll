; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_connect_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_connect_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.isert_conn* }
%struct.isert_conn = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*)* @isert_connect_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_connect_error(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca %struct.isert_conn*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %4 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %5 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  store %struct.isert_conn* %8, %struct.isert_conn** %3, align 8
  %9 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %10 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ib_drain_qp(i32 %11)
  %13 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %14 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %13, i32 0, i32 1
  %15 = call i32 @list_del_init(i32* %14)
  %16 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %17 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %19 = call i32 @isert_put_conn(%struct.isert_conn* %18)
  ret i32 -1
}

declare dso_local i32 @ib_drain_qp(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @isert_put_conn(%struct.isert_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
