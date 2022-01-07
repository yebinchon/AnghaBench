; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_terminate_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_terminate_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rport = type { %struct.srp_target_port* }
%struct.srp_target_port = type { i32, i32, %struct.srp_rdma_ch* }
%struct.srp_rdma_ch = type { %struct.srp_request* }
%struct.srp_request = type { i32 }

@DID_TRANSPORT_FAILFAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_rport*)* @srp_terminate_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_terminate_io(%struct.srp_rport* %0) #0 {
  %2 = alloca %struct.srp_rport*, align 8
  %3 = alloca %struct.srp_target_port*, align 8
  %4 = alloca %struct.srp_rdma_ch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.srp_request*, align 8
  store %struct.srp_rport* %0, %struct.srp_rport** %2, align 8
  %8 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %9 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %8, i32 0, i32 0
  %10 = load %struct.srp_target_port*, %struct.srp_target_port** %9, align 8
  store %struct.srp_target_port* %10, %struct.srp_target_port** %3, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %46, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %14 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %11
  %18 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %19 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %18, i32 0, i32 2
  %20 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %20, i64 %22
  store %struct.srp_rdma_ch* %23, %struct.srp_rdma_ch** %4, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %42, %17
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %27 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %32 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %31, i32 0, i32 0
  %33 = load %struct.srp_request*, %struct.srp_request** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %33, i64 %35
  store %struct.srp_request* %36, %struct.srp_request** %7, align 8
  %37 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %38 = load %struct.srp_request*, %struct.srp_request** %7, align 8
  %39 = load i32, i32* @DID_TRANSPORT_FAILFAST, align 4
  %40 = shl i32 %39, 16
  %41 = call i32 @srp_finish_req(%struct.srp_rdma_ch* %37, %struct.srp_request* %38, i32* null, i32 %40)
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %24

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %11

49:                                               ; preds = %11
  ret void
}

declare dso_local i32 @srp_finish_req(%struct.srp_rdma_ch*, %struct.srp_request*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
