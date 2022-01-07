; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_diag.c_qib_register_observer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_diag.c_qib_register_observer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, %struct.diag_observer_list_elt* }
%struct.diag_observer_list_elt = type { %struct.diag_observer_list_elt*, %struct.diag_observer* }
%struct.diag_observer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_register_observer(%struct.qib_devdata* %0, %struct.diag_observer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca %struct.diag_observer*, align 8
  %6 = alloca %struct.diag_observer_list_elt*, align 8
  %7 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %4, align 8
  store %struct.diag_observer* %1, %struct.diag_observer** %5, align 8
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %9 = icmp ne %struct.qib_devdata* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.diag_observer*, %struct.diag_observer** %5, align 8
  %12 = icmp ne %struct.diag_observer* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %10
  %17 = call %struct.diag_observer_list_elt* @vmalloc(i32 16)
  store %struct.diag_observer_list_elt* %17, %struct.diag_observer_list_elt** %6, align 8
  %18 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %6, align 8
  %19 = icmp ne %struct.diag_observer_list_elt* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %43

23:                                               ; preds = %16
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %25 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.diag_observer*, %struct.diag_observer** %5, align 8
  %29 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %6, align 8
  %30 = getelementptr inbounds %struct.diag_observer_list_elt, %struct.diag_observer_list_elt* %29, i32 0, i32 1
  store %struct.diag_observer* %28, %struct.diag_observer** %30, align 8
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %32 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %31, i32 0, i32 1
  %33 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %32, align 8
  %34 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %6, align 8
  %35 = getelementptr inbounds %struct.diag_observer_list_elt, %struct.diag_observer_list_elt* %34, i32 0, i32 0
  store %struct.diag_observer_list_elt* %33, %struct.diag_observer_list_elt** %35, align 8
  %36 = load %struct.diag_observer_list_elt*, %struct.diag_observer_list_elt** %6, align 8
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 1
  store %struct.diag_observer_list_elt* %36, %struct.diag_observer_list_elt** %38, align 8
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 0
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %23, %20, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.diag_observer_list_elt* @vmalloc(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
