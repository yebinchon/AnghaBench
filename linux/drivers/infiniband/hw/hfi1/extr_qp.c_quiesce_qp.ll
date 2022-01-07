; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_quiesce_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_quiesce_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quiesce_qp(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.hfi1_qp_priv*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %4 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %5 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %4, i32 0, i32 0
  %6 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  store %struct.hfi1_qp_priv* %6, %struct.hfi1_qp_priv** %3, align 8
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %8 = call i32 @hfi1_del_tid_reap_timer(%struct.rvt_qp* %7)
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %10 = call i32 @hfi1_del_tid_retry_timer(%struct.rvt_qp* %9)
  %11 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %12 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %11, i32 0, i32 0
  %13 = call i32 @iowait_sdma_drain(i32* %12)
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %15 = call i32 @qp_pio_drain(%struct.rvt_qp* %14)
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %17 = call i32 @flush_tx_list(%struct.rvt_qp* %16)
  ret void
}

declare dso_local i32 @hfi1_del_tid_reap_timer(%struct.rvt_qp*) #1

declare dso_local i32 @hfi1_del_tid_retry_timer(%struct.rvt_qp*) #1

declare dso_local i32 @iowait_sdma_drain(i32*) #1

declare dso_local i32 @qp_pio_drain(%struct.rvt_qp*) #1

declare dso_local i32 @flush_tx_list(%struct.rvt_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
