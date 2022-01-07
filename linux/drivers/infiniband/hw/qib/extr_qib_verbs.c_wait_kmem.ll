; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_wait_kmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_wait_kmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibdev = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rvt_qp = type { i64, i32, i32, %struct.qib_qp_priv* }
%struct.qib_qp_priv = type { i32 }

@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RVT_S_WAIT_KMEM = common dso_local global i32 0, align 4
@RVT_S_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ibdev*, %struct.rvt_qp*)* @wait_kmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_kmem(%struct.qib_ibdev* %0, %struct.rvt_qp* %1) #0 {
  %3 = alloca %struct.qib_ibdev*, align 8
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca %struct.qib_qp_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.qib_ibdev* %0, %struct.qib_ibdev** %3, align 8
  store %struct.rvt_qp* %1, %struct.rvt_qp** %4, align 8
  %8 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %9 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %8, i32 0, i32 3
  %10 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %9, align 8
  store %struct.qib_qp_priv* %10, %struct.qib_qp_priv** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %12 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %11, i32 0, i32 1
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32*, i32** @ib_rvt_state_ops, align 8
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %68

24:                                               ; preds = %2
  %25 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %26 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %5, align 8
  %30 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %29, i32 0, i32 0
  %31 = call i64 @list_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %24
  %34 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %35 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %34, i32 0, i32 1
  %36 = call i64 @list_empty(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %40 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %39, i32 0, i32 2
  %41 = load i64, i64* @jiffies, align 8
  %42 = add nsw i64 %41, 1
  %43 = call i32 @mod_timer(i32* %40, i64 %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* @RVT_S_WAIT_KMEM, align 4
  %46 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %47 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %5, align 8
  %51 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %50, i32 0, i32 0
  %52 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %53 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %52, i32 0, i32 1
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  br label %55

55:                                               ; preds = %44, %24
  %56 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %57 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load i32, i32* @RVT_S_BUSY, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %63 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %55, %2
  %69 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %70 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %69, i32 0, i32 1
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
