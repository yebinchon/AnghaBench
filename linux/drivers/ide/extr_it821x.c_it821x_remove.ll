; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_it821x.c_it821x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_it821x.c_it821x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ide_host = type { %struct.it821x_dev* }
%struct.it821x_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @it821x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it821x_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ide_host*, align 8
  %4 = alloca %struct.it821x_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.ide_host* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.ide_host* %6, %struct.ide_host** %3, align 8
  %7 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %8 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %7, i32 0, i32 0
  %9 = load %struct.it821x_dev*, %struct.it821x_dev** %8, align 8
  store %struct.it821x_dev* %9, %struct.it821x_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call i32 @ide_pci_remove(%struct.pci_dev* %10)
  %12 = load %struct.it821x_dev*, %struct.it821x_dev** %4, align 8
  %13 = call i32 @kfree(%struct.it821x_dev* %12)
  ret void
}

declare dso_local %struct.ide_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ide_pci_remove(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.it821x_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
