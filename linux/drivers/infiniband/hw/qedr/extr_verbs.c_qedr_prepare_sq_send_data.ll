; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_prepare_sq_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_prepare_sq_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_qp = type { i32 }
%struct.rdma_sq_send_wqe_1st = type { i32, i32 }
%struct.rdma_sq_send_wqe_2st = type { i32 }
%struct.ib_send_wr = type { i32 }

@IB_SEND_INLINE = common dso_local global i32 0, align 4
@RDMA_SQ_SEND_WQE_INLINE_FLG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qedr_qp*, %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_2st*, %struct.ib_send_wr*, %struct.ib_send_wr**)* @qedr_prepare_sq_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_prepare_sq_send_data(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.rdma_sq_send_wqe_1st* %2, %struct.rdma_sq_send_wqe_2st* %3, %struct.ib_send_wr* %4, %struct.ib_send_wr** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qedr_dev*, align 8
  %9 = alloca %struct.qedr_qp*, align 8
  %10 = alloca %struct.rdma_sq_send_wqe_1st*, align 8
  %11 = alloca %struct.rdma_sq_send_wqe_2st*, align 8
  %12 = alloca %struct.ib_send_wr*, align 8
  %13 = alloca %struct.ib_send_wr**, align 8
  %14 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %8, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %9, align 8
  store %struct.rdma_sq_send_wqe_1st* %2, %struct.rdma_sq_send_wqe_1st** %10, align 8
  store %struct.rdma_sq_send_wqe_2st* %3, %struct.rdma_sq_send_wqe_2st** %11, align 8
  store %struct.ib_send_wr* %4, %struct.ib_send_wr** %12, align 8
  store %struct.ib_send_wr** %5, %struct.ib_send_wr*** %13, align 8
  %15 = load %struct.rdma_sq_send_wqe_2st*, %struct.rdma_sq_send_wqe_2st** %11, align 8
  %16 = call i32 @memset(%struct.rdma_sq_send_wqe_2st* %15, i32 0, i32 4)
  %17 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %18 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IB_SEND_INLINE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @RDMA_SQ_SEND_WQE_INLINE_FLG, align 4
  %26 = call i32 @SET_FIELD2(i32 %24, i32 %25, i32 1)
  %27 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %28 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %29 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %10, align 8
  %30 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %29, i32 0, i32 0
  %31 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %32 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %13, align 8
  %33 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %10, align 8
  %34 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %33, i32 0, i32 1
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @qedr_prepare_sq_inline_data(%struct.qedr_dev* %27, %struct.qedr_qp* %28, i32* %30, %struct.ib_send_wr* %31, %struct.ib_send_wr** %32, i32* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %43

37:                                               ; preds = %6
  %38 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %39 = load %struct.rdma_sq_send_wqe_1st*, %struct.rdma_sq_send_wqe_1st** %10, align 8
  %40 = getelementptr inbounds %struct.rdma_sq_send_wqe_1st, %struct.rdma_sq_send_wqe_1st* %39, i32 0, i32 0
  %41 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %42 = call i32 @qedr_prepare_sq_sges(%struct.qedr_qp* %38, i32* %40, %struct.ib_send_wr* %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %23
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.rdma_sq_send_wqe_2st*, i32, i32) #1

declare dso_local i32 @SET_FIELD2(i32, i32, i32) #1

declare dso_local i32 @qedr_prepare_sq_inline_data(%struct.qedr_dev*, %struct.qedr_qp*, i32*, %struct.ib_send_wr*, %struct.ib_send_wr**, i32*, i32) #1

declare dso_local i32 @qedr_prepare_sq_sges(%struct.qedr_qp*, i32*, %struct.ib_send_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
