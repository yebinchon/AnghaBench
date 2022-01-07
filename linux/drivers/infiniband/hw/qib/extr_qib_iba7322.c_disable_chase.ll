; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_disable_chase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_disable_chase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }

@qib_chase = common dso_local global i32 0, align 4
@QLOGIC_IB_IBCC_LINKCMD_DOWN = common dso_local global i32 0, align 4
@QLOGIC_IB_IBCC_LINKINITCMD_DISABLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@QIB_CHASE_DIS_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i64, i32)* @disable_chase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_chase(%struct.qib_pportdata* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %8 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @qib_chase, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %32

14:                                               ; preds = %3
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %16 = load i32, i32* @QLOGIC_IB_IBCC_LINKCMD_DOWN, align 4
  %17 = load i32, i32* @QLOGIC_IB_IBCC_LINKINITCMD_DISABLE, align 4
  %18 = call i32 @qib_set_ib_7322_lstate(%struct.qib_pportdata* %15, i32 %16, i32 %17)
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* @QIB_CHASE_DIS_TIME, align 8
  %21 = add nsw i64 %19, %20
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %23 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 %21, i64* %26, align 8
  %27 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %28 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @add_timer(%struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @qib_set_ib_7322_lstate(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
