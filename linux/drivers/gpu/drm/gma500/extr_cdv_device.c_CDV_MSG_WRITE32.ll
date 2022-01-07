; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_device.c_CDV_MSG_WRITE32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_device.c_CDV_MSG_WRITE32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @CDV_MSG_WRITE32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CDV_MSG_WRITE32(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 %11, 16
  %13 = or i32 285212672, %12
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 %14, 8
  %16 = or i32 %13, %15
  %17 = or i32 %16, 240
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %18, i32 0, i32 0)
  store %struct.pci_dev* %19, %struct.pci_dev** %10, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @pci_write_config_dword(%struct.pci_dev* %20, i32 212, i32 %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @pci_write_config_dword(%struct.pci_dev* %23, i32 208, i32 %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %27 = call i32 @pci_dev_put(%struct.pci_dev* %26)
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
