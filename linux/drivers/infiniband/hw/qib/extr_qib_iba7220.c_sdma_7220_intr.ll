; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_sdma_7220_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_sdma_7220_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@qib_sdma_event_e20_hw_started = common dso_local global i32 0, align 4
@qib_sdma_event_e60_hw_halted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32)* @sdma_7220_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_7220_intr(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %7 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %29 [
    i32 134, label %14
    i32 133, label %15
    i32 132, label %19
    i32 131, label %20
    i32 130, label %21
    i32 129, label %22
    i32 128, label %26
  ]

14:                                               ; preds = %2
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %17 = load i32, i32* @qib_sdma_event_e20_hw_started, align 4
  %18 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %16, i32 %17)
  br label %29

19:                                               ; preds = %2
  br label %29

20:                                               ; preds = %2
  br label %29

21:                                               ; preds = %2
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %24 = load i32, i32* @qib_sdma_event_e60_hw_halted, align 4
  %25 = call i32 @__qib_sdma_process_event(%struct.qib_pportdata* %23, i32 %24)
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %28 = call i32 @__qib_sdma_intr(%struct.qib_pportdata* %27)
  br label %29

29:                                               ; preds = %2, %26, %22, %21, %20, %19, %15, %14
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %31 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__qib_sdma_process_event(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @__qib_sdma_intr(%struct.qib_pportdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
