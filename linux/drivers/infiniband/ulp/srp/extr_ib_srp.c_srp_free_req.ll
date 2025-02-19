; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_free_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_free_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rdma_ch = type { i32, i32 }
%struct.srp_request = type { i32 }
%struct.scsi_cmnd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_rdma_ch*, %struct.srp_request*, %struct.scsi_cmnd*, i64)* @srp_free_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_free_req(%struct.srp_rdma_ch* %0, %struct.srp_request* %1, %struct.scsi_cmnd* %2, i64 %3) #0 {
  %5 = alloca %struct.srp_rdma_ch*, align 8
  %6 = alloca %struct.srp_request*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.srp_rdma_ch* %0, %struct.srp_rdma_ch** %5, align 8
  store %struct.srp_request* %1, %struct.srp_request** %6, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %11 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %5, align 8
  %12 = load %struct.srp_request*, %struct.srp_request** %6, align 8
  %13 = call i32 @srp_unmap_data(%struct.scsi_cmnd* %10, %struct.srp_rdma_ch* %11, %struct.srp_request* %12)
  %14 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %5, align 8
  %15 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %5, align 8
  %20 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %5, align 8
  %26 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  ret void
}

declare dso_local i32 @srp_unmap_data(%struct.scsi_cmnd*, %struct.srp_rdma_ch*, %struct.srp_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
