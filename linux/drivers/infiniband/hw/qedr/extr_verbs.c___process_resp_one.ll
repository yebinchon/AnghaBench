; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c___process_resp_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c___process_resp_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_qp = type { i32, i32 }
%struct.qedr_cq = type { i32 }
%struct.ib_wc = type { i64, i32, i32*, i32, i64, i64, i32 }
%struct.rdma_cqe_responder = type { i64, i64 }

@IB_WC_RECV = common dso_local global i32 0, align 4
@RDMA_CQE_RESP_STS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"CQ %p (icid=%d) has invalid CQE responder flags=0x%x\0A\00", align 1
@IB_WC_GENERAL_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"CQ %p (icid=%d) contains an invalid CQE status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*, %struct.qedr_qp*, %struct.qedr_cq*, %struct.ib_wc*, %struct.rdma_cqe_responder*, i32)* @__process_resp_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__process_resp_one(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.qedr_cq* %2, %struct.ib_wc* %3, %struct.rdma_cqe_responder* %4, i32 %5) #0 {
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca %struct.qedr_qp*, align 8
  %9 = alloca %struct.qedr_cq*, align 8
  %10 = alloca %struct.ib_wc*, align 8
  %11 = alloca %struct.rdma_cqe_responder*, align 8
  %12 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %7, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %8, align 8
  store %struct.qedr_cq* %2, %struct.qedr_cq** %9, align 8
  store %struct.ib_wc* %3, %struct.ib_wc** %10, align 8
  store %struct.rdma_cqe_responder* %4, %struct.rdma_cqe_responder** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @IB_WC_RECV, align 4
  %14 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %15 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %17 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %11, align 8
  %19 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RDMA_CQE_RESP_STS_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %6
  %27 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %11, align 8
  %28 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %29 = call i64 @qedr_set_ok_cqe_resp_wc(%struct.rdma_cqe_responder* %27, %struct.ib_wc* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %33 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %34 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %35 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %11, align 8
  %38 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @DP_ERR(%struct.qedr_dev* %32, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.qedr_cq* %33, i32 %36, i64 %39)
  br label %41

41:                                               ; preds = %31, %26
  br label %65

42:                                               ; preds = %6
  %43 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %11, align 8
  %44 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @qedr_cqe_resp_status_to_ib(i64 %45)
  %47 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %48 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %50 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IB_WC_GENERAL_ERR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %42
  %55 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %56 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %57 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %58 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %11, align 8
  %61 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @DP_ERR(%struct.qedr_dev* %55, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), %struct.qedr_cq* %56, i32 %59, i64 %62)
  br label %64

64:                                               ; preds = %54, %42
  br label %65

65:                                               ; preds = %64, %41
  %66 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %67 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %69 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %72 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %74 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %73, i32 0, i32 0
  %75 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %76 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %79 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @qedr_set_ok_cqe_resp_wc(%struct.rdma_cqe_responder*, %struct.ib_wc*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, %struct.qedr_cq*, i32, i64) #1

declare dso_local i64 @qedr_cqe_resp_status_to_ib(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
