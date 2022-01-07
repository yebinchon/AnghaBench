; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_find_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.amd_mp2_dev = type { i32 }
%struct.device = type { i32 }
%struct.pci_dev = type { i32 }

@amd_mp2_pci_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.amd_mp2_dev* @amd_mp2_find_device() #0 {
  %1 = alloca %struct.amd_mp2_dev*, align 8
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = call %struct.device* @driver_find_next_device(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_mp2_pci_driver, i32 0, i32 0), i32* null)
  store %struct.device* %4, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = icmp ne %struct.device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.amd_mp2_dev* null, %struct.amd_mp2_dev** %1, align 8
  br label %14

8:                                                ; preds = %0
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.pci_dev* @to_pci_dev(%struct.device* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call i64 @pci_get_drvdata(%struct.pci_dev* %11)
  %13 = inttoptr i64 %12 to %struct.amd_mp2_dev*
  store %struct.amd_mp2_dev* %13, %struct.amd_mp2_dev** %1, align 8
  br label %14

14:                                               ; preds = %8, %7
  %15 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %1, align 8
  ret %struct.amd_mp2_dev* %15
}

declare dso_local %struct.device* @driver_find_next_device(i32*, i32*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i64 @pci_get_drvdata(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
