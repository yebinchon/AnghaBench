; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_flush_qp_waiters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_flush_qp_waiters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.TYPE_3__, %struct.qib_qp_priv* }
%struct.TYPE_3__ = type { i32 }
%struct.qib_qp_priv = type { i32 }
%struct.qib_ibdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_flush_qp_waiters(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.qib_qp_priv*, align 8
  %4 = alloca %struct.qib_ibdev*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %5 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %6 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %5, i32 0, i32 1
  %7 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %6, align 8
  store %struct.qib_qp_priv* %7, %struct.qib_qp_priv** %3, align 8
  %8 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %9 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.qib_ibdev* @to_idev(i32 %11)
  store %struct.qib_ibdev* %12, %struct.qib_ibdev** %4, align 8
  %13 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %14 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %18 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %17, i32 0, i32 0
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %23 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %22, i32 0, i32 0
  %24 = call i32 @list_del_init(i32* %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %27 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  ret void
}

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
