; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_connected_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_connected_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.isert_np*, %struct.TYPE_2__* }
%struct.isert_np = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.isert_np* }
%struct.isert_conn = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"conn %p\0A\00", align 1
@ISER_CONN_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"np %p: Allow accept_np to continue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*)* @isert_connected_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_connected_handler(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca %struct.isert_conn*, align 8
  %4 = alloca %struct.isert_np*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %5 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %6 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.isert_np*, %struct.isert_np** %8, align 8
  %10 = bitcast %struct.isert_np* %9 to %struct.isert_conn*
  store %struct.isert_conn* %10, %struct.isert_conn** %3, align 8
  %11 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %12 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %11, i32 0, i32 0
  %13 = load %struct.isert_np*, %struct.isert_np** %12, align 8
  store %struct.isert_np* %13, %struct.isert_np** %4, align 8
  %14 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %15 = bitcast %struct.isert_conn* %14 to %struct.isert_np*
  %16 = call i32 @isert_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.isert_np* %15)
  %17 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %18 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* @ISER_CONN_UP, align 4
  %21 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %22 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %24 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %23, i32 0, i32 4
  %25 = call i32 @kref_get(i32* %24)
  %26 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %27 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.isert_np*, %struct.isert_np** %4, align 8
  %30 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %33 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %32, i32 0, i32 3
  %34 = load %struct.isert_np*, %struct.isert_np** %4, align 8
  %35 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %34, i32 0, i32 2
  %36 = call i32 @list_move_tail(i32* %33, i32* %35)
  %37 = load %struct.isert_np*, %struct.isert_np** %4, align 8
  %38 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.isert_np*, %struct.isert_np** %4, align 8
  %41 = call i32 @isert_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.isert_np* %40)
  %42 = load %struct.isert_np*, %struct.isert_np** %4, align 8
  %43 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %42, i32 0, i32 0
  %44 = call i32 @up(i32* %43)
  ret void
}

declare dso_local i32 @isert_info(i8*, %struct.isert_np*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
