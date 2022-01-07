; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_process_resp_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_process_resp_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_qp = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qedr_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.rdma_cqe_responder = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qedr_qp*, %struct.qedr_cq*, %struct.ib_wc*, %struct.rdma_cqe_responder*)* @process_resp_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_resp_one(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.qedr_cq* %2, %struct.ib_wc* %3, %struct.rdma_cqe_responder* %4) #0 {
  %6 = alloca %struct.qedr_dev*, align 8
  %7 = alloca %struct.qedr_qp*, align 8
  %8 = alloca %struct.qedr_cq*, align 8
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca %struct.rdma_cqe_responder*, align 8
  %11 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %6, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %7, align 8
  store %struct.qedr_cq* %2, %struct.qedr_cq** %8, align 8
  store %struct.ib_wc* %3, %struct.ib_wc** %9, align 8
  store %struct.rdma_cqe_responder* %4, %struct.rdma_cqe_responder** %10, align 8
  %12 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %13 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %16 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %23 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %24 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %25 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %26 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @__process_resp_one(%struct.qedr_dev* %22, %struct.qedr_qp* %23, %struct.qedr_cq* %24, %struct.ib_wc* %25, %struct.rdma_cqe_responder* %26, i32 %27)
  br label %29

29:                                               ; preds = %42, %5
  %30 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %31 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %34 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %44 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = call i32 @qed_chain_consume(i32* %45)
  br label %29

47:                                               ; preds = %29
  %48 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %49 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %48, i32 0, i32 0
  %50 = call i32 @qedr_inc_sw_cons(%struct.TYPE_4__* %49)
  ret i32 1
}

declare dso_local i32 @__process_resp_one(%struct.qedr_dev*, %struct.qedr_qp*, %struct.qedr_cq*, %struct.ib_wc*, %struct.rdma_cqe_responder*, i32) #1

declare dso_local i32 @qed_chain_consume(i32*) #1

declare dso_local i32 @qedr_inc_sw_cons(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
