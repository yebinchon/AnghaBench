; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_qp_priv_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_qp_priv_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { i32 }
%struct.rvt_qp = type { %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { %struct.hfi1_qp_priv* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qp_priv_free(%struct.rvt_dev_info* %0, %struct.rvt_qp* %1) #0 {
  %3 = alloca %struct.rvt_dev_info*, align 8
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca %struct.hfi1_qp_priv*, align 8
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %3, align 8
  store %struct.rvt_qp* %1, %struct.rvt_qp** %4, align 8
  %6 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %7 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %6, i32 0, i32 0
  %8 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  store %struct.hfi1_qp_priv* %8, %struct.hfi1_qp_priv** %5, align 8
  %9 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %11 = call i32 @hfi1_qp_priv_tid_free(%struct.rvt_dev_info* %9, %struct.rvt_qp* %10)
  %12 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %13 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %12, i32 0, i32 0
  %14 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %13, align 8
  %15 = call i32 @kfree(%struct.hfi1_qp_priv* %14)
  %16 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %17 = call i32 @kfree(%struct.hfi1_qp_priv* %16)
  ret void
}

declare dso_local i32 @hfi1_qp_priv_tid_free(%struct.rvt_dev_info*, %struct.rvt_qp*) #1

declare dso_local i32 @kfree(%struct.hfi1_qp_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
