; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_qp_rem_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_qp_rem_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.qedr_qp = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedr_iw_qp_rem_ref(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca %struct.qedr_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %4 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %5 = call %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp* %4)
  store %struct.qedr_qp* %5, %struct.qedr_qp** %3, align 8
  %6 = load %struct.qedr_qp*, %struct.qedr_qp** %3, align 8
  %7 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %6, i32 0, i32 2
  %8 = call i64 @atomic_dec_and_test(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.qedr_qp*, %struct.qedr_qp** %3, align 8
  %12 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.qedr_qp*, %struct.qedr_qp** %3, align 8
  %16 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @xa_erase_irq(i32* %14, i32 %17)
  %19 = load %struct.qedr_qp*, %struct.qedr_qp** %3, align 8
  %20 = call i32 @kfree(%struct.qedr_qp* %19)
  br label %21

21:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.qedr_qp* @get_qedr_qp(%struct.ib_qp*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @xa_erase_irq(i32*, i32) #1

declare dso_local i32 @kfree(%struct.qedr_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
