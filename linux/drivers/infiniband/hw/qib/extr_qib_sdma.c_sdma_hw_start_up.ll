; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sdma.c_sdma_hw_start_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sdma.c_sdma_hw_start_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_2__*, %struct.qib_sdma_state }
%struct.TYPE_2__ = type { i32 (%struct.qib_pportdata*)*, i32 (%struct.qib_pportdata*, i32)* }
%struct.qib_sdma_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @sdma_hw_start_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_hw_start_up(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.qib_sdma_state*, align 8
  %4 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %5 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %6 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %5, i32 0, i32 1
  store %struct.qib_sdma_state* %6, %struct.qib_sdma_state** %3, align 8
  %7 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %3, align 8
  %8 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.qib_sdma_state*, %struct.qib_sdma_state** %3, align 8
  %13 = getelementptr inbounds %struct.qib_sdma_state, %struct.qib_sdma_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %18 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %20, align 8
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @QIB_SENDCTRL_DISARM_BUF(i32 %23)
  %25 = call i32 %21(%struct.qib_pportdata* %22, i32 %24)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %31 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.qib_pportdata*)*, i32 (%struct.qib_pportdata*)** %33, align 8
  %35 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %36 = call i32 %34(%struct.qib_pportdata* %35)
  ret void
}

declare dso_local i32 @QIB_SENDCTRL_DISARM_BUF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
