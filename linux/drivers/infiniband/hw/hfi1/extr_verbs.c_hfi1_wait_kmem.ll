; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_wait_kmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_hfi1_wait_kmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, %struct.ib_qp, %struct.hfi1_qp_priv* }
%struct.ib_qp = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.hfi1_qp_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.hfi1_ibdev = type { i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@RVT_S_WAIT_KMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_wait_kmem(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.hfi1_qp_priv*, align 8
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.hfi1_ibdev*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %8 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %7, i32 0, i32 2
  %9 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  store %struct.hfi1_qp_priv* %9, %struct.hfi1_qp_priv** %3, align 8
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 1
  store %struct.ib_qp* %11, %struct.ib_qp** %4, align 8
  %12 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %13 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %12, i32 0, i32 0
  %14 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  store %struct.ib_device* %14, %struct.ib_device** %5, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %16 = call %struct.hfi1_ibdev* @to_idev(%struct.ib_device* %15)
  store %struct.hfi1_ibdev* %16, %struct.hfi1_ibdev** %6, align 8
  %17 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i64 @list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %1
  %23 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %6, align 8
  %24 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %23, i32 0, i32 1
  %25 = call i64 @list_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %6, align 8
  %29 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %28, i32 0, i32 2
  %30 = load i64, i64* @jiffies, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @mod_timer(i32* %29, i64 %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i32, i32* @RVT_S_WAIT_KMEM, align 4
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %40 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %6, align 8
  %43 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %42, i32 0, i32 1
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %6, align 8
  %46 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %45, i32 0, i32 0
  %47 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %48 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %51 = load i32, i32* @RVT_S_WAIT_KMEM, align 4
  %52 = call i32 @trace_hfi1_qpsleep(%struct.rvt_qp* %50, i32 %51)
  %53 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %54 = call i32 @rvt_get_qp(%struct.rvt_qp* %53)
  br label %55

55:                                               ; preds = %33, %1
  ret void
}

declare dso_local %struct.hfi1_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @trace_hfi1_qpsleep(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_get_qp(%struct.rvt_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
