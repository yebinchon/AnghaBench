; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_conn_setup_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_conn_setup_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { i32 }
%struct.rdma_cm_id = type { i32 }
%struct.isert_comp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_conn*, %struct.rdma_cm_id*)* @isert_conn_setup_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_conn_setup_qp(%struct.isert_conn* %0, %struct.rdma_cm_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isert_conn*, align 8
  %5 = alloca %struct.rdma_cm_id*, align 8
  %6 = alloca %struct.isert_comp*, align 8
  %7 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %4, align 8
  store %struct.rdma_cm_id* %1, %struct.rdma_cm_id** %5, align 8
  %8 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %9 = call %struct.isert_comp* @isert_comp_get(%struct.isert_conn* %8)
  store %struct.isert_comp* %9, %struct.isert_comp** %6, align 8
  %10 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %11 = load %struct.isert_comp*, %struct.isert_comp** %6, align 8
  %12 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %13 = call i32 @isert_create_qp(%struct.isert_conn* %10, %struct.isert_comp* %11, %struct.rdma_cm_id* %12)
  %14 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %15 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %17 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @IS_ERR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %23 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PTR_ERR(i32 %24)
  store i32 %25, i32* %7, align 4
  br label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

27:                                               ; preds = %21
  %28 = load %struct.isert_comp*, %struct.isert_comp** %6, align 8
  %29 = call i32 @isert_comp_put(%struct.isert_comp* %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %26
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.isert_comp* @isert_comp_get(%struct.isert_conn*) #1

declare dso_local i32 @isert_create_qp(%struct.isert_conn*, %struct.isert_comp*, %struct.rdma_cm_id*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @isert_comp_put(%struct.isert_comp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
