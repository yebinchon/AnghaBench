; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rdma_ch = type { i32, %struct.srp_target_port* }
%struct.srp_target_port = type { i32 }
%struct.srp_iu = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.ib_sge*, %struct.TYPE_2__*, i32* }
%struct.ib_sge = type { i32, i32, i32 }

@srp_recv_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_rdma_ch*, %struct.srp_iu*)* @srp_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_post_recv(%struct.srp_rdma_ch* %0, %struct.srp_iu* %1) #0 {
  %3 = alloca %struct.srp_rdma_ch*, align 8
  %4 = alloca %struct.srp_iu*, align 8
  %5 = alloca %struct.srp_target_port*, align 8
  %6 = alloca %struct.ib_recv_wr, align 8
  %7 = alloca %struct.ib_sge, align 4
  store %struct.srp_rdma_ch* %0, %struct.srp_rdma_ch** %3, align 8
  store %struct.srp_iu* %1, %struct.srp_iu** %4, align 8
  %8 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %9 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %8, i32 0, i32 1
  %10 = load %struct.srp_target_port*, %struct.srp_target_port** %9, align 8
  store %struct.srp_target_port* %10, %struct.srp_target_port** %5, align 8
  %11 = load %struct.srp_iu*, %struct.srp_iu** %4, align 8
  %12 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load %struct.srp_iu*, %struct.srp_iu** %4, align 8
  %16 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %20 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @srp_recv_done, align 4
  %24 = load %struct.srp_iu*, %struct.srp_iu** %4, align 8
  %25 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = load %struct.srp_iu*, %struct.srp_iu** %4, align 8
  %29 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 2
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %30, align 8
  %31 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 1
  store %struct.ib_sge* %7, %struct.ib_sge** %31, align 8
  %32 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %34 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ib_post_recv(i32 %35, %struct.ib_recv_wr* %6, i32* null)
  ret i32 %36
}

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
