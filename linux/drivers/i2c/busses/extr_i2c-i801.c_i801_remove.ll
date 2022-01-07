; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.i801_priv = type { i32, i32, i32 }

@SMBHSTCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @i801_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i801_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.i801_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.i801_priv* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.i801_priv* %5, %struct.i801_priv** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = call i32 @pm_runtime_forbid(i32* %7)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = call i32 @pm_runtime_get_noresume(i32* %10)
  %12 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %13 = call i32 @i801_disable_host_notify(%struct.i801_priv* %12)
  %14 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %15 = call i32 @i801_del_mux(%struct.i801_priv* %14)
  %16 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %17 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %16, i32 0, i32 2
  %18 = call i32 @i2c_del_adapter(i32* %17)
  %19 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %20 = call i32 @i801_acpi_remove(%struct.i801_priv* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = load i32, i32* @SMBHSTCFG, align 4
  %23 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %24 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pci_write_config_byte(%struct.pci_dev* %21, i32 %22, i32 %25)
  %27 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %28 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @platform_device_unregister(i32 %29)
  ret void
}

declare dso_local %struct.i801_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pm_runtime_forbid(i32*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @i801_disable_host_notify(%struct.i801_priv*) #1

declare dso_local i32 @i801_del_mux(%struct.i801_priv*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @i801_acpi_remove(%struct.i801_priv*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @platform_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
