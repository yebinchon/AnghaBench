; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c__hfi1_schedule_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c__hfi1_schedule_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.TYPE_4__, i32, %struct.hfi1_qp_priv* }
%struct.TYPE_4__ = type { i32 }
%struct.hfi1_qp_priv = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hfi1_ibport = type { i32 }
%struct.hfi1_pportdata = type { i32 }
%struct.hfi1_devdata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hfi1_schedule_send(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.hfi1_qp_priv*, align 8
  %4 = alloca %struct.hfi1_ibport*, align 8
  %5 = alloca %struct.hfi1_pportdata*, align 8
  %6 = alloca %struct.hfi1_devdata*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %8 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %7, i32 0, i32 2
  %9 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  store %struct.hfi1_qp_priv* %9, %struct.hfi1_qp_priv** %3, align 8
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %15 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.hfi1_ibport* @to_iport(i32 %13, i32 %16)
  store %struct.hfi1_ibport* %17, %struct.hfi1_ibport** %4, align 8
  %18 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %19 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %18)
  store %struct.hfi1_pportdata* %19, %struct.hfi1_pportdata** %5, align 8
  %20 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %21 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.hfi1_devdata* @dd_from_ibdev(i32 %23)
  store %struct.hfi1_devdata* %24, %struct.hfi1_devdata** %6, align 8
  %25 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %26 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %25, i32 0, i32 1
  %27 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %28 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %36 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %46

40:                                               ; preds = %1
  %41 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %42 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpumask_of_node(i32 %43)
  %45 = call i32 @cpumask_first(i32 %44)
  br label %46

46:                                               ; preds = %40, %34
  %47 = phi i32 [ %39, %34 ], [ %45, %40 ]
  %48 = call i32 @iowait_schedule(i32* %26, i32 %29, i32 %47)
  ret i32 %48
}

declare dso_local %struct.hfi1_ibport* @to_iport(i32, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(i32) #1

declare dso_local i32 @iowait_schedule(i32*, i32, i32) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @cpumask_of_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
