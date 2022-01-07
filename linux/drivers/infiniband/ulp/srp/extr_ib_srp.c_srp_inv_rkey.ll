; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_inv_rkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_inv_rkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.srp_rdma_ch = type { i32 }
%struct.ib_send_wr = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@IB_WR_LOCAL_INV = common dso_local global i32 0, align 4
@srp_inv_rkey_err_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_request*, %struct.srp_rdma_ch*, i32)* @srp_inv_rkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_inv_rkey(%struct.srp_request* %0, %struct.srp_rdma_ch* %1, i32 %2) #0 {
  %4 = alloca %struct.srp_request*, align 8
  %5 = alloca %struct.srp_rdma_ch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_send_wr, align 8
  store %struct.srp_request* %0, %struct.srp_request** %4, align 8
  store %struct.srp_rdma_ch* %1, %struct.srp_rdma_ch** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = bitcast %struct.ib_send_wr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 40, i1 false)
  %9 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 5
  %13 = load i32, i32* @IB_WR_LOCAL_INV, align 4
  store i32 %13, i32* %12, align 8
  %14 = load %struct.srp_request*, %struct.srp_request** %4, align 8
  %15 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 0
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %16, align 8
  %17 = load i32, i32* @srp_inv_rkey_err_done, align 4
  %18 = load %struct.srp_request*, %struct.srp_request** %4, align 8
  %19 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %5, align 8
  %22 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ib_post_send(i32 %23, %struct.ib_send_wr* %7, i32* null)
  ret i32 %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
