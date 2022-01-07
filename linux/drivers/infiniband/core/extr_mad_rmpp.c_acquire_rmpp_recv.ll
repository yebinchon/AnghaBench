; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad_rmpp.c_acquire_rmpp_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad_rmpp.c_acquire_rmpp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mad_rmpp_recv = type { i32 }
%struct.ib_mad_agent_private = type { i32 }
%struct.ib_mad_recv_wc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mad_rmpp_recv* (%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*)* @acquire_rmpp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mad_rmpp_recv* @acquire_rmpp_recv(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent_private*, align 8
  %4 = alloca %struct.ib_mad_recv_wc*, align 8
  %5 = alloca %struct.mad_rmpp_recv*, align 8
  %6 = alloca i64, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %3, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %4, align 8
  %7 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %8 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %12 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %13 = call %struct.mad_rmpp_recv* @find_rmpp_recv(%struct.ib_mad_agent_private* %11, %struct.ib_mad_recv_wc* %12)
  store %struct.mad_rmpp_recv* %13, %struct.mad_rmpp_recv** %5, align 8
  %14 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %5, align 8
  %15 = icmp ne %struct.mad_rmpp_recv* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %5, align 8
  %18 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %17, i32 0, i32 0
  %19 = call i32 @atomic_inc(i32* %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %22 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %5, align 8
  ret %struct.mad_rmpp_recv* %25
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.mad_rmpp_recv* @find_rmpp_recv(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
