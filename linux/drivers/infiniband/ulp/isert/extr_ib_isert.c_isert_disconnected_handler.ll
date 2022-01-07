; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_disconnected_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_disconnected_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.isert_conn* }
%struct.isert_conn = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"conn %p terminating in state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, i32)* @isert_disconnected_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_disconnected_handler(%struct.rdma_cm_id* %0, i32 %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isert_conn*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %7 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.isert_conn*, %struct.isert_conn** %9, align 8
  store %struct.isert_conn* %10, %struct.isert_conn** %5, align 8
  %11 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %12 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %15 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %32 [
    i32 129, label %17
    i32 128, label %18
    i32 131, label %27
    i32 130, label %27
  ]

17:                                               ; preds = %2
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %20 = call i32 @isert_conn_terminate(%struct.isert_conn* %19)
  %21 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %22 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ib_drain_qp(i32 %23)
  %25 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %26 = call i32 @isert_handle_unbound_conn(%struct.isert_conn* %25)
  br label %38

27:                                               ; preds = %2, %2
  %28 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %29 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iscsit_cause_connection_reinstatement(i32 %30, i32 0)
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %34 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %35 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @isert_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.isert_conn* %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %27, %18, %17
  %39 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %40 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @isert_conn_terminate(%struct.isert_conn*) #1

declare dso_local i32 @ib_drain_qp(i32) #1

declare dso_local i32 @isert_handle_unbound_conn(%struct.isert_conn*) #1

declare dso_local i32 @iscsit_cause_connection_reinstatement(i32, i32) #1

declare dso_local i32 @isert_warn(i8*, %struct.isert_conn*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
