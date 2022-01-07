; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_prepare_sq_rdma_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_prepare_sq_rdma_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_qp = type { i32 }
%struct.rdma_sq_rdma_wqe_1st = type { i32, i32 }
%struct.rdma_sq_rdma_wqe_2nd = type { i32, i32 }
%struct.ib_send_wr = type { i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@IB_SEND_INLINE = common dso_local global i32 0, align 4
@IB_WR_RDMA_WRITE_WITH_IMM = common dso_local global i64 0, align 8
@IB_WR_RDMA_WRITE = common dso_local global i64 0, align 8
@RDMA_SQ_RDMA_WQE_1ST_INLINE_FLG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qedr_qp*, %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_2nd*, %struct.ib_send_wr*, %struct.ib_send_wr**)* @qedr_prepare_sq_rdma_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_prepare_sq_rdma_data(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.rdma_sq_rdma_wqe_1st* %2, %struct.rdma_sq_rdma_wqe_2nd* %3, %struct.ib_send_wr* %4, %struct.ib_send_wr** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qedr_dev*, align 8
  %9 = alloca %struct.qedr_qp*, align 8
  %10 = alloca %struct.rdma_sq_rdma_wqe_1st*, align 8
  %11 = alloca %struct.rdma_sq_rdma_wqe_2nd*, align 8
  %12 = alloca %struct.ib_send_wr*, align 8
  %13 = alloca %struct.ib_send_wr**, align 8
  %14 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %8, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %9, align 8
  store %struct.rdma_sq_rdma_wqe_1st* %2, %struct.rdma_sq_rdma_wqe_1st** %10, align 8
  store %struct.rdma_sq_rdma_wqe_2nd* %3, %struct.rdma_sq_rdma_wqe_2nd** %11, align 8
  store %struct.ib_send_wr* %4, %struct.ib_send_wr** %12, align 8
  store %struct.ib_send_wr** %5, %struct.ib_send_wr*** %13, align 8
  %15 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %16 = call %struct.TYPE_2__* @rdma_wr(%struct.ib_send_wr* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cpu_to_le32(i32 %18)
  %20 = load %struct.rdma_sq_rdma_wqe_2nd*, %struct.rdma_sq_rdma_wqe_2nd** %11, align 8
  %21 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_2nd, %struct.rdma_sq_rdma_wqe_2nd* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rdma_sq_rdma_wqe_2nd*, %struct.rdma_sq_rdma_wqe_2nd** %11, align 8
  %23 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_2nd, %struct.rdma_sq_rdma_wqe_2nd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %26 = call %struct.TYPE_2__* @rdma_wr(%struct.ib_send_wr* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DMA_REGPAIR_LE(i32 %24, i32 %28)
  %30 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %31 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IB_SEND_INLINE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %6
  %37 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %38 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IB_WR_RDMA_WRITE_WITH_IMM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %44 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IB_WR_RDMA_WRITE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42, %36
  store i32 0, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @RDMA_SQ_RDMA_WQE_1ST_INLINE_FLG, align 4
  %51 = call i32 @SET_FIELD2(i32 %49, i32 %50, i32 1)
  %52 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %53 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %54 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %10, align 8
  %55 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %54, i32 0, i32 0
  %56 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %57 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %13, align 8
  %58 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %10, align 8
  %59 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %58, i32 0, i32 1
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @qedr_prepare_sq_inline_data(%struct.qedr_dev* %52, %struct.qedr_qp* %53, i32* %55, %struct.ib_send_wr* %56, %struct.ib_send_wr** %57, i32* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  br label %68

62:                                               ; preds = %42, %6
  %63 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %64 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %10, align 8
  %65 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %64, i32 0, i32 0
  %66 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %67 = call i32 @qedr_prepare_sq_sges(%struct.qedr_qp* %63, i32* %65, %struct.ib_send_wr* %66)
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %62, %48
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_2__* @rdma_wr(%struct.ib_send_wr*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @SET_FIELD2(i32, i32, i32) #1

declare dso_local i32 @qedr_prepare_sq_inline_data(%struct.qedr_dev*, %struct.qedr_qp*, i32*, %struct.ib_send_wr*, %struct.ib_send_wr**, i32*, i32) #1

declare dso_local i32 @qedr_prepare_sq_sges(%struct.qedr_qp*, i32*, %struct.ib_send_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
