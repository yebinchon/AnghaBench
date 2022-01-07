; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_build_tskmgmt_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_build_tskmgmt_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_rdma_ch = type { i32 }
%struct.srpt_send_ioctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.srp_rsp* }
%struct.srp_rsp = type { i32*, i8*, i32, i32, i8*, i32 }

@SRP_RSP = common dso_local global i32 0, align 4
@SRP_RSP_FLAG_RSPVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srpt_rdma_ch*, %struct.srpt_send_ioctx*, i32, i32)* @srpt_build_tskmgmt_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srpt_build_tskmgmt_rsp(%struct.srpt_rdma_ch* %0, %struct.srpt_send_ioctx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.srpt_rdma_ch*, align 8
  %6 = alloca %struct.srpt_send_ioctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.srp_rsp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.srpt_rdma_ch* %0, %struct.srpt_rdma_ch** %5, align 8
  store %struct.srpt_send_ioctx* %1, %struct.srpt_send_ioctx** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 40, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %17 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.srp_rsp*, %struct.srp_rsp** %18, align 8
  store %struct.srp_rsp* %19, %struct.srp_rsp** %9, align 8
  %20 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %21 = icmp ne %struct.srp_rsp* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %26 = call i32 @memset(%struct.srp_rsp* %25, i32 0, i32 40)
  %27 = load i32, i32* @SRP_RSP, align 4
  %28 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %29 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %5, align 8
  %31 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %30, i32 0, i32 0
  %32 = call i32 @atomic_xchg(i32* %31, i32 0)
  %33 = add nsw i32 1, %32
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %36 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %39 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @SRP_RSP_FLAG_RSPVALID, align 4
  %41 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %42 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %48 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %51 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  ret i32 %54
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.srp_rsp*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
