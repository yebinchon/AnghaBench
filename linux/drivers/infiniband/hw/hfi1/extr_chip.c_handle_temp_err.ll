; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_handle_temp_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_handle_temp_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, %struct.hfi1_pportdata* }
%struct.hfi1_pportdata = type { i64, i64 }

@.str = private unnamed_addr constant [64 x i8] c"Critical temperature reached! Forcing device into freeze mode!\0A\00", align 1
@HFI1_FORCED_FREEZE = common dso_local global i32 0, align 4
@FREEZE_SELF = common dso_local global i32 0, align 4
@FREEZE_ABORT = common dso_local global i32 0, align 4
@OPA_LINKDOWN_REASON_SMA_DISABLED = common dso_local global i32 0, align 4
@PLS_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @handle_temp_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_temp_err(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %4 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %5 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %4, i32 0, i32 1
  %6 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %7 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %6, i64 0
  store %struct.hfi1_pportdata* %7, %struct.hfi1_pportdata** %3, align 8
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %9 = call i32 @dd_dev_emerg(%struct.hfi1_devdata* %8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @HFI1_FORCED_FREEZE, align 4
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %16 = load i32, i32* @FREEZE_SELF, align 4
  %17 = load i32, i32* @FREEZE_ABORT, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @start_freeze_handling(%struct.hfi1_pportdata* %15, i32 %18)
  %20 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %21 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %23 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %25 = load i32, i32* @OPA_LINKDOWN_REASON_SMA_DISABLED, align 4
  %26 = shl i32 %25, 8
  %27 = load i32, i32* @PLS_OFFLINE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @set_physical_link_state(%struct.hfi1_devdata* %24, i32 %28)
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %31 = call i32 @dc_shutdown(%struct.hfi1_devdata* %30)
  ret void
}

declare dso_local i32 @dd_dev_emerg(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @start_freeze_handling(%struct.hfi1_pportdata*, i32) #1

declare dso_local i32 @set_physical_link_state(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @dc_shutdown(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
