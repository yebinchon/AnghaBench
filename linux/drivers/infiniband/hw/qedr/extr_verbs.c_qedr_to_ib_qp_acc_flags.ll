; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_to_ib_qp_acc_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_to_ib_qp_acc_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_rdma_query_qp_out_params = type { i64, i64, i64 }

@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_rdma_query_qp_out_params*)* @qedr_to_ib_qp_acc_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_to_ib_qp_acc_flags(%struct.qed_rdma_query_qp_out_params* %0) #0 {
  %2 = alloca %struct.qed_rdma_query_qp_out_params*, align 8
  %3 = alloca i32, align 4
  store %struct.qed_rdma_query_qp_out_params* %0, %struct.qed_rdma_query_qp_out_params** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %2, align 8
  %5 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %2, align 8
  %14 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %2, align 8
  %23 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
