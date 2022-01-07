; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_verbs_pio_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_verbs_pio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @verbs_pio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verbs_pio_complete(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.hfi1_qp_priv*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.rvt_qp*
  store %struct.rvt_qp* %8, %struct.rvt_qp** %5, align 8
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 0
  %11 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  store %struct.hfi1_qp_priv* %11, %struct.hfi1_qp_priv** %6, align 8
  %12 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  %13 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %12, i32 0, i32 0
  %14 = call i64 @iowait_pio_dec(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  %18 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %17, i32 0, i32 0
  %19 = call i32 @iowait_drain_wakeup(i32* %18)
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

declare dso_local i64 @iowait_pio_dec(i32*) #1

declare dso_local i32 @iowait_drain_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
