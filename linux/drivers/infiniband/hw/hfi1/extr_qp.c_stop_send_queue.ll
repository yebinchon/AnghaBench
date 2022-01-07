; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_stop_send_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_stop_send_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_send_queue(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.hfi1_qp_priv*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %4 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %5 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %4, i32 0, i32 0
  %6 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  store %struct.hfi1_qp_priv* %6, %struct.hfi1_qp_priv** %3, align 8
  %7 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %7, i32 0, i32 1
  %9 = call i32 @iowait_cancel_work(i32* %8)
  %10 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %11 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i64 @cancel_work_sync(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %17 = call i32 @rvt_put_qp(%struct.rvt_qp* %16)
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @iowait_cancel_work(i32*) #1

declare dso_local i64 @cancel_work_sync(i32*) #1

declare dso_local i32 @rvt_put_qp(%struct.rvt_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
