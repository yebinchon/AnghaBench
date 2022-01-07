; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_driver_pstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_driver_pstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i32 }

@IB_PORTPHYSSTATE_LINKUP = common dso_local global i32 0, align 4
@IB_PORTPHYSSTATE_POLLING = common dso_local global i32 0, align 4
@IB_PORTPHYSSTATE_DISABLED = common dso_local global i32 0, align 4
@OPA_PORTPHYSSTATE_OFFLINE = common dso_local global i32 0, align 4
@IB_PORTPHYSSTATE_TRAINING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid host_link_state 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @driver_pstate(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %3, align 8
  %4 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %5 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %24 [
    i32 129, label %7
    i32 130, label %7
    i32 131, label %7
    i32 135, label %9
    i32 138, label %11
    i32 136, label %13
    i32 128, label %15
    i32 133, label %17
    i32 134, label %19
    i32 132, label %21
    i32 137, label %23
  ]

7:                                                ; preds = %1, %1, %1
  %8 = load i32, i32* @IB_PORTPHYSSTATE_LINKUP, align 4
  store i32 %8, i32* %2, align 4
  br label %32

9:                                                ; preds = %1
  %10 = load i32, i32* @IB_PORTPHYSSTATE_POLLING, align 4
  store i32 %10, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load i32, i32* @IB_PORTPHYSSTATE_DISABLED, align 4
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load i32, i32* @OPA_PORTPHYSSTATE_OFFLINE, align 4
  store i32 %14, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load i32, i32* @IB_PORTPHYSSTATE_TRAINING, align 4
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load i32, i32* @IB_PORTPHYSSTATE_TRAINING, align 4
  store i32 %18, i32* %2, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load i32, i32* @OPA_PORTPHYSSTATE_OFFLINE, align 4
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load i32, i32* @OPA_PORTPHYSSTATE_OFFLINE, align 4
  store i32 %22, i32* %2, align 4
  br label %32

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %1, %23
  %25 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %26 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %29 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dd_dev_err(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %21, %19, %17, %15, %13, %11, %9, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @dd_dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
