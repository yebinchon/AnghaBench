; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32)* }
%struct.device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }
%struct.pci_dev = type { i32 }

@vgasr_mutex = common dso_local global i32 0, align 4
@vgasr_priv = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@VGA_SWITCHEROO_IGD = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@VGA_SWITCHEROO_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @vga_switcheroo_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_switcheroo_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.pci_dev* @to_pci_dev(%struct.device* %6)
  store %struct.pci_dev* %7, %struct.pci_dev** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.device*)**
  %15 = load i32 (%struct.device*)*, i32 (%struct.device*)** %14, align 8
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i32 %15(%struct.device* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %46

22:                                               ; preds = %1
  %23 = call i32 @mutex_lock(i32* @vgasr_mutex)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vgasr_priv, i32 0, i32 1), align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = icmp ne i32 (i32)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vgasr_priv, i32 0, i32 0))
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vgasr_priv, i32 0, i32 1), align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load i32, i32* @VGA_SWITCHEROO_IGD, align 4
  %34 = call i32 %32(i32 %33)
  %35 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vgasr_priv, i32 0, i32 0))
  br label %36

36:                                               ; preds = %28, %22
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PCI_D3cold, align 4
  %41 = call i32 @pci_bus_set_current_state(i32 %39, i32 %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* @VGA_SWITCHEROO_OFF, align 4
  %44 = call i32 @vga_switcheroo_power_switch(%struct.pci_dev* %42, i32 %43)
  %45 = call i32 @mutex_unlock(i32* @vgasr_mutex)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %36, %20
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pci_bus_set_current_state(i32, i32) #1

declare dso_local i32 @vga_switcheroo_power_switch(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
