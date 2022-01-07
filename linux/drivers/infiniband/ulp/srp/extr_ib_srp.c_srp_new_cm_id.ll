; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_new_cm_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_new_cm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rdma_ch = type { %struct.srp_target_port* }
%struct.srp_target_port = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_rdma_ch*)* @srp_new_cm_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_new_cm_id(%struct.srp_rdma_ch* %0) #0 {
  %2 = alloca %struct.srp_rdma_ch*, align 8
  %3 = alloca %struct.srp_target_port*, align 8
  store %struct.srp_rdma_ch* %0, %struct.srp_rdma_ch** %2, align 8
  %4 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %2, align 8
  %5 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %4, i32 0, i32 0
  %6 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  store %struct.srp_target_port* %6, %struct.srp_target_port** %3, align 8
  %7 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %8 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %2, align 8
  %13 = call i32 @srp_new_rdma_cm_id(%struct.srp_rdma_ch* %12)
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %2, align 8
  %16 = call i32 @srp_new_ib_cm_id(%struct.srp_rdma_ch* %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %13, %11 ], [ %16, %14 ]
  ret i32 %18
}

declare dso_local i32 @srp_new_rdma_cm_id(%struct.srp_rdma_ch*) #1

declare dso_local i32 @srp_new_ib_cm_id(%struct.srp_rdma_ch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
