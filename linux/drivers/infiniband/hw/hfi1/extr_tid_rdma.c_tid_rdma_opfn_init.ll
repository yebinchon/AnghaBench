; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_tid_rdma_opfn_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_tid_rdma_opfn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tid_rdma_params = type { i32, i32, i32, i32, i32, i32, i32 }

@kdeth_qp = common dso_local global i32 0, align 4
@TID_RDMA_MAX_SEGMENT_SIZE = common dso_local global i32 0, align 4
@TID_RDMA_MAX_READ_SEGS_PER_REQ = common dso_local global i32 0, align 4
@TID_RDMA_MAX_WRITE_SEGS_PER_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tid_rdma_opfn_init(%struct.rvt_qp* %0, %struct.tid_rdma_params* %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca %struct.tid_rdma_params*, align 8
  %5 = alloca %struct.hfi1_qp_priv*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store %struct.tid_rdma_params* %1, %struct.tid_rdma_params** %4, align 8
  %6 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %7 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %6, i32 0, i32 1
  %8 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  store %struct.hfi1_qp_priv* %8, %struct.hfi1_qp_priv** %5, align 8
  %9 = load i32, i32* @kdeth_qp, align 4
  %10 = shl i32 %9, 16
  %11 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %12 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %10, %15
  %17 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %4, align 8
  %18 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @TID_RDMA_MAX_SEGMENT_SIZE, align 4
  %20 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %4, align 8
  %21 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %23 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %4, align 8
  %28 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @TID_RDMA_MAX_READ_SEGS_PER_REQ, align 4
  %30 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %4, align 8
  %31 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @TID_RDMA_MAX_WRITE_SEGS_PER_REQ, align 4
  %33 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %4, align 8
  %34 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %4, align 8
  %39 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %41 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 @is_urg_masked(%struct.TYPE_2__* %42)
  %44 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %4, align 8
  %45 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local i32 @is_urg_masked(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
