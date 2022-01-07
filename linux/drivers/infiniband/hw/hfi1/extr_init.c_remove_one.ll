; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.hfi1_devdata = type { i32 }

@ib_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.hfi1_devdata* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.hfi1_devdata* %5, %struct.hfi1_devdata** %3, align 8
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %7 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %6, i32 0, i32 0
  %8 = call i32 @hfi1_dbg_ibdev_exit(i32* %7)
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %10 = call i32 @hfi1_device_remove(%struct.hfi1_devdata* %9)
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %12 = call i32 @wait_for_clients(%struct.hfi1_devdata* %11)
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %14 = call i32 @hfi1_unregister_ib_device(%struct.hfi1_devdata* %13)
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %16 = call i32 @hfi1_vnic_cleanup(%struct.hfi1_devdata* %15)
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %18 = call i32 @shutdown_device(%struct.hfi1_devdata* %17)
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %20 = call i32 @stop_timers(%struct.hfi1_devdata* %19)
  %21 = load i32, i32* @ib_wq, align 4
  %22 = call i32 @flush_workqueue(i32 %21)
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %24 = call i32 @postinit_cleanup(%struct.hfi1_devdata* %23)
  ret void
}

declare dso_local %struct.hfi1_devdata* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @hfi1_dbg_ibdev_exit(i32*) #1

declare dso_local i32 @hfi1_device_remove(%struct.hfi1_devdata*) #1

declare dso_local i32 @wait_for_clients(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_unregister_ib_device(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_vnic_cleanup(%struct.hfi1_devdata*) #1

declare dso_local i32 @shutdown_device(%struct.hfi1_devdata*) #1

declare dso_local i32 @stop_timers(%struct.hfi1_devdata*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @postinit_cleanup(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
