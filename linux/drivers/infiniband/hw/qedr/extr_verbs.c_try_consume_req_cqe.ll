; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_try_consume_req_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_try_consume_req_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_cq = type { i32 }
%struct.qedr_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rdma_cqe_requester = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_cq*, %struct.qedr_qp*, %struct.rdma_cqe_requester*, i32*)* @try_consume_req_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_consume_req_cqe(%struct.qedr_cq* %0, %struct.qedr_qp* %1, %struct.rdma_cqe_requester* %2, i32* %3) #0 {
  %5 = alloca %struct.qedr_cq*, align 8
  %6 = alloca %struct.qedr_qp*, align 8
  %7 = alloca %struct.rdma_cqe_requester*, align 8
  %8 = alloca i32*, align 8
  store %struct.qedr_cq* %0, %struct.qedr_cq** %5, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %6, align 8
  store %struct.rdma_cqe_requester* %2, %struct.rdma_cqe_requester** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %7, align 8
  %10 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @le16_to_cpu(i32 %11)
  %13 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %14 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %12, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.qedr_cq*, %struct.qedr_cq** %5, align 8
  %20 = call i32 @consume_cqe(%struct.qedr_cq* %19)
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %4
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @consume_cqe(%struct.qedr_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
