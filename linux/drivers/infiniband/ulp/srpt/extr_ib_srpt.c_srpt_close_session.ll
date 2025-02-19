; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_close_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_close_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { %struct.srpt_rdma_ch* }
%struct.srpt_rdma_ch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_session*)* @srpt_close_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srpt_close_session(%struct.se_session* %0) #0 {
  %2 = alloca %struct.se_session*, align 8
  %3 = alloca %struct.srpt_rdma_ch*, align 8
  store %struct.se_session* %0, %struct.se_session** %2, align 8
  %4 = load %struct.se_session*, %struct.se_session** %2, align 8
  %5 = getelementptr inbounds %struct.se_session, %struct.se_session* %4, i32 0, i32 0
  %6 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %5, align 8
  store %struct.srpt_rdma_ch* %6, %struct.srpt_rdma_ch** %3, align 8
  %7 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %8 = call i32 @srpt_disconnect_ch_sync(%struct.srpt_rdma_ch* %7)
  ret void
}

declare dso_local i32 @srpt_disconnect_ch_sync(%struct.srpt_rdma_ch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
