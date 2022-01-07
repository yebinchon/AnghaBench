; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_flush_tx_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_flush_tx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*)* @flush_tx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_tx_list(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.hfi1_qp_priv*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %4 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %5 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %4, i32 0, i32 0
  %6 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  store %struct.hfi1_qp_priv* %6, %struct.hfi1_qp_priv** %3, align 8
  %7 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %7, i32 0, i32 0
  %9 = call %struct.TYPE_4__* @iowait_get_ib_work(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i32 @flush_list_head(i32* %10)
  %12 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %13 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %12, i32 0, i32 0
  %14 = call %struct.TYPE_3__* @iowait_get_tid_work(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @flush_list_head(i32* %15)
  ret void
}

declare dso_local i32 @flush_list_head(i32*) #1

declare dso_local %struct.TYPE_4__* @iowait_get_ib_work(i32*) #1

declare dso_local %struct.TYPE_3__* @iowait_get_tid_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
