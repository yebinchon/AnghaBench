; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_qp_rem_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_qp_rem_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { i64, i32, i32, %struct.i40iw_sc_vsi* }
%struct.i40iw_sc_vsi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_qp_rem_qos(%struct.i40iw_sc_qp* %0) #0 {
  %2 = alloca %struct.i40iw_sc_qp*, align 8
  %3 = alloca %struct.i40iw_sc_vsi*, align 8
  %4 = alloca i64, align 8
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %2, align 8
  %5 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %2, align 8
  %6 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %5, i32 0, i32 3
  %7 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %6, align 8
  store %struct.i40iw_sc_vsi* %7, %struct.i40iw_sc_vsi** %3, align 8
  %8 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %2, align 8
  %9 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %15 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %2, align 8
  %18 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %2, align 8
  %25 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %24, i32 0, i32 1
  %26 = call i32 @list_del(i32* %25)
  %27 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %28 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %2, align 8
  %31 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
