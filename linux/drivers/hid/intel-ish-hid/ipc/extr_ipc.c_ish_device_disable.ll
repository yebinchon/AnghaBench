; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_ish_device_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_ish_device_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Can't reset - stuck with DMA in-progress\0A\00", align 1
@PCI_D3hot = common dso_local global i32 0, align 4
@ISHTP_DEV_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ish_device_disable(%struct.ishtp_device* %0) #0 {
  %2 = alloca %struct.ishtp_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %2, align 8
  %4 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %5 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %4, i32 0, i32 1
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = icmp ne %struct.pci_dev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %12 = call i64 @ish_disable_dma(%struct.ishtp_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %27

18:                                               ; preds = %10
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = load i32, i32* @PCI_D3hot, align 4
  %21 = call i32 @pci_set_power_state(%struct.pci_dev* %19, i32 %20)
  %22 = load i32, i32* @ISHTP_DEV_DISABLED, align 4
  %23 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %24 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %26 = call i32 @ish_clr_host_rdy(%struct.ishtp_device* %25)
  br label %27

27:                                               ; preds = %18, %14, %9
  ret void
}

declare dso_local i64 @ish_disable_dma(%struct.ishtp_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @ish_clr_host_rdy(%struct.ishtp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
