; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_intr.c_qib_clear_symerror_on_linkup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_intr.c_qib_clear_symerror_on_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.qib_pportdata*, i32)* }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@symerr_clear_timer = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@QIBPORTCNTR_IBSYMBOLERR = common dso_local global i32 0, align 4
@ppd = common dso_local global %struct.qib_pportdata* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_clear_symerror_on_linkup(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.qib_pportdata*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %5 = ptrtoint %struct.qib_pportdata* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @symerr_clear_timer, align 4
  %8 = call %struct.qib_pportdata* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.qib_pportdata* %8, %struct.qib_pportdata** %3, align 8
  %9 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %18 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %20, align 8
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %23 = load i32, i32* @QIBPORTCNTR_IBSYMBOLERR, align 4
  %24 = call i32 %21(%struct.qib_pportdata* %22, i32 %23)
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %26 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  br label %28

28:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.qib_pportdata* @from_timer(i32, %struct.timer_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
