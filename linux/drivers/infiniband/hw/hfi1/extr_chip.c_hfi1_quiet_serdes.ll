; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hfi1_quiet_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hfi1_quiet_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i32, i32, i32, i64, i64, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@MAX_QSFP_RETRIES = common dso_local global i32 0, align 4
@OPA_LINKDOWN_REASON_REBOOT = common dso_local global i32 0, align 4
@HLS_DN_OFFLINE = common dso_local global i32 0, align 4
@RCV_CTRL_RCV_PORT_ENABLE_SMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_quiet_serdes(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  %4 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %5 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %4, i32 0, i32 6
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  store %struct.hfi1_devdata* %6, %struct.hfi1_devdata** %3, align 8
  %7 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %8 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %10 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @MAX_QSFP_RETRIES, align 4
  %12 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %13 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %15 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %14, i32 0, i32 2
  %16 = call i32 @flush_delayed_work(i32* %15)
  %17 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %18 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %17, i32 0, i32 2
  %19 = call i32 @cancel_delayed_work_sync(i32* %18)
  %20 = load i32, i32* @OPA_LINKDOWN_REASON_REBOOT, align 4
  %21 = call i32 @HFI1_ODR_MASK(i32 %20)
  %22 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %23 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %25 = load i32, i32* @OPA_LINKDOWN_REASON_REBOOT, align 4
  %26 = load i32, i32* @OPA_LINKDOWN_REASON_REBOOT, align 4
  %27 = call i32 @set_link_down_reason(%struct.hfi1_pportdata* %24, i32 %25, i32 0, i32 %26)
  %28 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %29 = load i32, i32* @HLS_DN_OFFLINE, align 4
  %30 = call i32 @set_link_state(%struct.hfi1_pportdata* %28, i32 %29)
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %32 = load i32, i32* @RCV_CTRL_RCV_PORT_ENABLE_SMASK, align 4
  %33 = call i32 @clear_rcvctrl(%struct.hfi1_devdata* %31, i32 %32)
  %34 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %35 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %34, i32 0, i32 0
  %36 = call i32 @cancel_work_sync(i32* %35)
  ret void
}

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @HFI1_ODR_MASK(i32) #1

declare dso_local i32 @set_link_down_reason(%struct.hfi1_pportdata*, i32, i32, i32) #1

declare dso_local i32 @set_link_state(%struct.hfi1_pportdata*, i32) #1

declare dso_local i32 @clear_rcvctrl(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
