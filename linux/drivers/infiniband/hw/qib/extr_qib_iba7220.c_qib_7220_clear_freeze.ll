; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_clear_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_clear_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@kr_errmask = common dso_local global i32 0, align 4
@kr_control = common dso_local global i32 0, align 4
@kr_scratch = common dso_local global i32 0, align 4
@kr_hwerrclear = common dso_local global i32 0, align 4
@kr_errclear = common dso_local global i32 0, align 4
@E_SPKT_ERRS_IGNORE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_7220_clear_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7220_clear_freeze(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %3 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %4 = load i32, i32* @kr_errmask, align 4
  %5 = call i32 @qib_write_kreg(%struct.qib_devdata* %3, i32 %4, i64 0)
  %6 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %7 = call i32 @qib_7220_set_intr_state(%struct.qib_devdata* %6, i32 0)
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %9 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @qib_cancel_sends(i32 %10)
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = load i32, i32* @kr_control, align 4
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @qib_write_kreg(%struct.qib_devdata* %12, i32 %13, i64 %16)
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = load i32, i32* @kr_scratch, align 4
  %20 = call i32 @qib_read_kreg32(%struct.qib_devdata* %18, i32 %19)
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = call i32 @qib_force_pio_avail_update(%struct.qib_devdata* %21)
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %24 = load i32, i32* @kr_hwerrclear, align 4
  %25 = call i32 @qib_write_kreg(%struct.qib_devdata* %23, i32 %24, i64 0)
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %27 = load i32, i32* @kr_errclear, align 4
  %28 = load i64, i64* @E_SPKT_ERRS_IGNORE, align 8
  %29 = call i32 @qib_write_kreg(%struct.qib_devdata* %26, i32 %27, i64 %28)
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %31 = load i32, i32* @kr_errmask, align 4
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %33 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @qib_write_kreg(%struct.qib_devdata* %30, i32 %31, i64 %36)
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %39 = call i32 @qib_7220_set_intr_state(%struct.qib_devdata* %38, i32 1)
  ret void
}

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i32 @qib_7220_set_intr_state(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_cancel_sends(i32) #1

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_force_pio_avail_update(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
