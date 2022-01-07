; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_device = type { i32, i64, i32 }
%struct.srpt_rdma_ch = type { i32 }
%struct.srpt_recv_ioctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ib_sge = type { i32, i32, i64 }
%struct.ib_recv_wr = type { i32, %struct.ib_sge*, i32*, %struct.TYPE_3__* }

@srp_max_req_size = common dso_local global i32 0, align 4
@srpt_recv_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srpt_device*, %struct.srpt_rdma_ch*, %struct.srpt_recv_ioctx*)* @srpt_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srpt_post_recv(%struct.srpt_device* %0, %struct.srpt_rdma_ch* %1, %struct.srpt_recv_ioctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.srpt_device*, align 8
  %6 = alloca %struct.srpt_rdma_ch*, align 8
  %7 = alloca %struct.srpt_recv_ioctx*, align 8
  %8 = alloca %struct.ib_sge, align 8
  %9 = alloca %struct.ib_recv_wr, align 8
  store %struct.srpt_device* %0, %struct.srpt_device** %5, align 8
  store %struct.srpt_rdma_ch* %1, %struct.srpt_rdma_ch** %6, align 8
  store %struct.srpt_recv_ioctx* %2, %struct.srpt_recv_ioctx** %7, align 8
  %10 = load %struct.srpt_device*, %struct.srpt_device** %5, align 8
  %11 = icmp ne %struct.srpt_device* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %7, align 8
  %16 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %7, align 8
  %20 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %18, %22
  %24 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %8, i32 0, i32 2
  store i64 %23, i64* %24, align 8
  %25 = load i32, i32* @srp_max_req_size, align 4
  %26 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.srpt_device*, %struct.srpt_device** %5, align 8
  %28 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %8, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @srpt_recv_done, align 4
  %32 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %7, align 8
  %33 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %7, align 8
  %37 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %9, i32 0, i32 3
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %39, align 8
  %40 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %9, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %9, i32 0, i32 1
  store %struct.ib_sge* %8, %struct.ib_sge** %41, align 8
  %42 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %9, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.srpt_device*, %struct.srpt_device** %5, align 8
  %44 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %3
  %48 = load %struct.srpt_device*, %struct.srpt_device** %5, align 8
  %49 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ib_post_srq_recv(i32 %50, %struct.ib_recv_wr* %9, i32* null)
  store i32 %51, i32* %4, align 4
  br label %57

52:                                               ; preds = %3
  %53 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %6, align 8
  %54 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ib_post_recv(i32 %55, %struct.ib_recv_wr* %9, i32* null)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ib_post_srq_recv(i32, %struct.ib_recv_wr*, i32*) #1

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
