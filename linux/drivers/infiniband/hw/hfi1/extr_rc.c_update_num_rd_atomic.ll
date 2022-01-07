; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_update_num_rd_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_update_num_rd_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i64, i32 }
%struct.rvt_swqe = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.tid_rdma_request = type { i64, i64, i64 }

@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_CMP_AND_SWP = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_FETCH_AND_ADD = common dso_local global i64 0, align 8
@IB_WR_TID_RDMA_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, i64, %struct.rvt_swqe*)* @update_num_rd_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_num_rd_atomic(%struct.rvt_qp* %0, i64 %1, %struct.rvt_swqe* %2) #0 {
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rvt_swqe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tid_rdma_request*, align 8
  %9 = alloca %struct.hfi1_qp_priv*, align 8
  %10 = alloca i64, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.rvt_swqe* %2, %struct.rvt_swqe** %6, align 8
  %11 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %12 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %18, %3
  %27 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %28 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %112

31:                                               ; preds = %22
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @IB_WR_TID_RDMA_READ, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %111

35:                                               ; preds = %31
  %36 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %37 = call %struct.tid_rdma_request* @wqe_to_tid_req(%struct.rvt_swqe* %36)
  store %struct.tid_rdma_request* %37, %struct.tid_rdma_request** %8, align 8
  %38 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %39 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %38, i32 0, i32 1
  %40 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %39, align 8
  store %struct.hfi1_qp_priv* %40, %struct.hfi1_qp_priv** %9, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %43 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @cmp_psn(i64 %41, i32 %44)
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %35
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %50 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %9, align 8
  %54 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sdiv i64 %52, %55
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.tid_rdma_request*, %struct.tid_rdma_request** %8, align 8
  %59 = getelementptr inbounds %struct.tid_rdma_request, %struct.tid_rdma_request* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.tid_rdma_request*, %struct.tid_rdma_request** %8, align 8
  %63 = getelementptr inbounds %struct.tid_rdma_request, %struct.tid_rdma_request* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.tid_rdma_request*, %struct.tid_rdma_request** %8, align 8
  %65 = getelementptr inbounds %struct.tid_rdma_request, %struct.tid_rdma_request* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %9, align 8
  %68 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 8
  %73 = load %struct.tid_rdma_request*, %struct.tid_rdma_request** %8, align 8
  %74 = getelementptr inbounds %struct.tid_rdma_request, %struct.tid_rdma_request* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %77 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %81 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %82 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %86 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %89 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.tid_rdma_request*, %struct.tid_rdma_request** %8, align 8
  %92 = call i32 @trace_hfi1_tid_req_update_num_rd_atomic(%struct.rvt_qp* %80, i32 0, i64 %84, i64 %87, i32 %90, %struct.tid_rdma_request* %91)
  br label %110

93:                                               ; preds = %35
  %94 = load %struct.tid_rdma_request*, %struct.tid_rdma_request** %8, align 8
  %95 = getelementptr inbounds %struct.tid_rdma_request, %struct.tid_rdma_request* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %9, align 8
  %98 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 8
  %103 = load %struct.tid_rdma_request*, %struct.tid_rdma_request** %8, align 8
  %104 = getelementptr inbounds %struct.tid_rdma_request, %struct.tid_rdma_request* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %107 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %93, %47
  br label %111

111:                                              ; preds = %110, %31
  br label %112

112:                                              ; preds = %111, %26
  ret void
}

declare dso_local %struct.tid_rdma_request* @wqe_to_tid_req(%struct.rvt_swqe*) #1

declare dso_local i64 @cmp_psn(i64, i32) #1

declare dso_local i32 @trace_hfi1_tid_req_update_num_rd_atomic(%struct.rvt_qp*, i32, i64, i64, i32, %struct.tid_rdma_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
