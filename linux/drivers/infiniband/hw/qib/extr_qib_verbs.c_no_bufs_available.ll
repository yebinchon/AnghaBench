; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_no_bufs_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_no_bufs_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i32, i32, %struct.TYPE_3__, %struct.qib_qp_priv* }
%struct.TYPE_3__ = type { i32 }
%struct.qib_qp_priv = type { i32 }
%struct.qib_ibdev = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qib_devdata = type { i32 (%struct.qib_devdata*, i32)* }

@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@RVT_S_WAIT_PIO = common dso_local global i32 0, align 4
@RVT_S_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_qp*)* @no_bufs_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @no_bufs_available(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.qib_qp_priv*, align 8
  %4 = alloca %struct.qib_ibdev*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %8 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %9 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %8, i32 0, i32 4
  %10 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %9, align 8
  store %struct.qib_qp_priv* %10, %struct.qib_qp_priv** %3, align 8
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %12 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.qib_ibdev* @to_idev(i32 %14)
  store %struct.qib_ibdev* %15, %struct.qib_ibdev** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 1
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32*, i32** @ib_rvt_state_ops, align 8
  %21 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %22 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RVT_PROCESS_RECV_OK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %1
  %30 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %31 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %35 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %34, i32 0, i32 0
  %36 = call i64 @list_empty(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %29
  %39 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %40 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @RVT_S_WAIT_PIO, align 4
  %44 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %45 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %49 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %48, i32 0, i32 0
  %50 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %51 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %50, i32 0, i32 1
  %52 = call i32 @list_add_tail(i32* %49, i32* %51)
  %53 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %54 = call %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev* %53)
  store %struct.qib_devdata* %54, %struct.qib_devdata** %5, align 8
  %55 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %56 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %55, i32 0, i32 0
  %57 = load i32 (%struct.qib_devdata*, i32)*, i32 (%struct.qib_devdata*, i32)** %56, align 8
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %59 = call i32 %57(%struct.qib_devdata* %58, i32 1)
  br label %60

60:                                               ; preds = %38, %29
  %61 = load %struct.qib_ibdev*, %struct.qib_ibdev** %4, align 8
  %62 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load i32, i32* @RVT_S_BUSY, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %68 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %60, %1
  %74 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %75 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %74, i32 0, i32 1
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
