; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.h_ack_to_tid_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.h_ack_to_tid_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_rdma_request = type { i32 }
%struct.rvt_ack_entry = type { i64 }
%struct.hfi1_ack_priv = type { %struct.tid_rdma_request }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tid_rdma_request* (%struct.rvt_ack_entry*)* @ack_to_tid_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tid_rdma_request* @ack_to_tid_req(%struct.rvt_ack_entry* %0) #0 {
  %2 = alloca %struct.rvt_ack_entry*, align 8
  store %struct.rvt_ack_entry* %0, %struct.rvt_ack_entry** %2, align 8
  %3 = load %struct.rvt_ack_entry*, %struct.rvt_ack_entry** %2, align 8
  %4 = getelementptr inbounds %struct.rvt_ack_entry, %struct.rvt_ack_entry* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to %struct.hfi1_ack_priv*
  %7 = getelementptr inbounds %struct.hfi1_ack_priv, %struct.hfi1_ack_priv* %6, i32 0, i32 0
  ret %struct.tid_rdma_request* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
