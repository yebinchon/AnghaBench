; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_get_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_get_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.rdma_cqe = type { i32 }
%struct.qedr_cq = type { %union.rdma_cqe* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.rdma_cqe* (%struct.qedr_cq*)* @get_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.rdma_cqe* @get_cqe(%struct.qedr_cq* %0) #0 {
  %2 = alloca %struct.qedr_cq*, align 8
  store %struct.qedr_cq* %0, %struct.qedr_cq** %2, align 8
  %3 = load %struct.qedr_cq*, %struct.qedr_cq** %2, align 8
  %4 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %3, i32 0, i32 0
  %5 = load %union.rdma_cqe*, %union.rdma_cqe** %4, align 8
  ret %union.rdma_cqe* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
