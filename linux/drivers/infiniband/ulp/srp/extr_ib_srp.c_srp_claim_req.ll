; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_claim_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_claim_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rdma_ch = type { i32 }
%struct.srp_request = type { %struct.scsi_cmnd* }
%struct.scsi_device = type { i32 }
%struct.scsi_cmnd = type { %struct.scsi_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_cmnd* (%struct.srp_rdma_ch*, %struct.srp_request*, %struct.scsi_device*, %struct.scsi_cmnd*)* @srp_claim_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_cmnd* @srp_claim_req(%struct.srp_rdma_ch* %0, %struct.srp_request* %1, %struct.scsi_device* %2, %struct.scsi_cmnd* %3) #0 {
  %5 = alloca %struct.srp_rdma_ch*, align 8
  %6 = alloca %struct.srp_request*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i64, align 8
  store %struct.srp_rdma_ch* %0, %struct.srp_rdma_ch** %5, align 8
  store %struct.srp_request* %1, %struct.srp_request** %6, align 8
  store %struct.scsi_device* %2, %struct.scsi_device** %7, align 8
  store %struct.scsi_cmnd* %3, %struct.scsi_cmnd** %8, align 8
  %10 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %5, align 8
  %11 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %15 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %14, i32 0, i32 0
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %17 = icmp ne %struct.scsi_cmnd* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %4
  %19 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %20 = icmp ne %struct.scsi_device* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %23 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %22, i32 0, i32 0
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %23, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = load %struct.scsi_device*, %struct.scsi_device** %25, align 8
  %27 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %28 = icmp eq %struct.scsi_device* %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %21, %18
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %31 = icmp ne %struct.scsi_cmnd* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %34 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %33, i32 0, i32 0
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %34, align 8
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %37 = icmp eq %struct.scsi_cmnd* %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32, %29
  %39 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %40 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %39, i32 0, i32 0
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %40, align 8
  store %struct.scsi_cmnd* %41, %struct.scsi_cmnd** %8, align 8
  %42 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %43 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %42, i32 0, i32 0
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %43, align 8
  br label %45

44:                                               ; preds = %32, %21, %4
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %8, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %5, align 8
  %47 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %46, i32 0, i32 0
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  ret %struct.scsi_cmnd* %50
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
