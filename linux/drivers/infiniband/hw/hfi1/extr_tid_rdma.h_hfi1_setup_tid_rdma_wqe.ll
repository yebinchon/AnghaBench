; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.h_hfi1_setup_tid_rdma_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.h_hfi1_setup_tid_rdma_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32 }
%struct.rvt_swqe = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@IB_WR_RDMA_WRITE = common dso_local global i64 0, align 8
@TID_RDMA_MIN_SEGMENT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, %struct.rvt_swqe*)* @hfi1_setup_tid_rdma_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_setup_tid_rdma_wqe(%struct.rvt_qp* %0, %struct.rvt_swqe* %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca %struct.rvt_swqe*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store %struct.rvt_swqe* %1, %struct.rvt_swqe** %4, align 8
  %5 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %6 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %11 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %18 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IB_WR_RDMA_WRITE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %16, %9
  %24 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %25 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TID_RDMA_MIN_SEGMENT_SIZE, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %31 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %32 = call i32 @setup_tid_rdma_wqe(%struct.rvt_qp* %30, %struct.rvt_swqe* %31)
  br label %33

33:                                               ; preds = %29, %23, %16, %2
  ret void
}

declare dso_local i32 @setup_tid_rdma_wqe(%struct.rvt_qp*, %struct.rvt_swqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
