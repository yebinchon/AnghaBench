; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_quiesce_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_quiesce_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.qib_qp_priv* }
%struct.qib_qp_priv = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_quiesce_qp(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.qib_qp_priv*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %4 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %5 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %4, i32 0, i32 0
  %6 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %5, align 8
  store %struct.qib_qp_priv* %6, %struct.qib_qp_priv** %3, align 8
  %7 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %8 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %11 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %10, i32 0, i32 1
  %12 = call i32 @atomic_read(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @wait_event(i32 %9, i32 %15)
  %17 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %18 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %23 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @qib_put_txreq(i32* %24)
  %26 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %27 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @qib_put_txreq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
