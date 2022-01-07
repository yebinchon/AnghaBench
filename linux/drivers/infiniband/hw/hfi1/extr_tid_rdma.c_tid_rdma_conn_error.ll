; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_tid_rdma_conn_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_tid_rdma_conn_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tid_rdma_params = type { i32 }

@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tid_rdma_conn_error(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.hfi1_qp_priv*, align 8
  %4 = alloca %struct.tid_rdma_params*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %5 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %6 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %5, i32 0, i32 0
  %7 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  store %struct.hfi1_qp_priv* %7, %struct.hfi1_qp_priv** %3, align 8
  %8 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %9 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %13 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @lockdep_is_held(i32* %14)
  %16 = call %struct.tid_rdma_params* @rcu_dereference_protected(i32 %11, i32 %15)
  store %struct.tid_rdma_params* %16, %struct.tid_rdma_params** %4, align 8
  %17 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @RCU_INIT_POINTER(i32 %20, i32* null)
  %22 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %4, align 8
  %23 = icmp ne %struct.tid_rdma_params* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %4, align 8
  %26 = load i32, i32* @rcu_head, align 4
  %27 = call i32 @kfree_rcu(%struct.tid_rdma_params* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %1
  ret void
}

declare dso_local %struct.tid_rdma_params* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.tid_rdma_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
