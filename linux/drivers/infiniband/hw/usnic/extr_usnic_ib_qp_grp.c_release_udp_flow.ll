; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_release_udp_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_release_udp_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_qp_grp_flow = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usnic_ib_qp_grp_flow*)* @release_udp_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_udp_flow(%struct.usnic_ib_qp_grp_flow* %0) #0 {
  %2 = alloca %struct.usnic_ib_qp_grp_flow*, align 8
  store %struct.usnic_ib_qp_grp_flow* %0, %struct.usnic_ib_qp_grp_flow** %2, align 8
  %3 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %2, align 8
  %4 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @usnic_fwd_dealloc_flow(i32 %5)
  %7 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %2, align 8
  %8 = getelementptr inbounds %struct.usnic_ib_qp_grp_flow, %struct.usnic_ib_qp_grp_flow* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @usnic_transport_put_socket(i32 %10)
  %12 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %2, align 8
  %13 = call i32 @kfree(%struct.usnic_ib_qp_grp_flow* %12)
  ret void
}

declare dso_local i32 @usnic_fwd_dealloc_flow(i32) #1

declare dso_local i32 @usnic_transport_put_socket(i32) #1

declare dso_local i32 @kfree(%struct.usnic_ib_qp_grp_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
