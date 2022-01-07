; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_driver_lstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_driver_lstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i32 }

@HLS_DOWN = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i32 0, align 4
@HLS_UP = common dso_local global i32 0, align 4
@IB_PORT_INIT = common dso_local global i32 0, align 4
@IB_PORT_ARMED = common dso_local global i32 0, align 4
@IB_PORT_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid host_link_state 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @driver_lstate(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %3, align 8
  %4 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %5 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %10 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HLS_DOWN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @IB_PORT_DOWN, align 4
  store i32 %16, i32* %2, align 4
  br label %37

17:                                               ; preds = %8, %1
  %18 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %19 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HLS_UP, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %29 [
    i32 128, label %23
    i32 129, label %25
    i32 130, label %27
  ]

23:                                               ; preds = %17
  %24 = load i32, i32* @IB_PORT_INIT, align 4
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %17
  %26 = load i32, i32* @IB_PORT_ARMED, align 4
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %17
  %28 = load i32, i32* @IB_PORT_ACTIVE, align 4
  store i32 %28, i32* %2, align 4
  br label %37

29:                                               ; preds = %17
  %30 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %34 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dd_dev_err(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %2, align 4
  br label %37

37:                                               ; preds = %29, %27, %25, %23, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @dd_dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
