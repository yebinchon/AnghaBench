; ModuleID = '/home/carl/AnghaBench/linux/drivers/dca/extr_dca-core.c_dca_pci_rc_from_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dca/extr_dca-core.c_dca_pci_rc_from_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_bus* }
%struct.device = type { i32 }
%struct.pci_dev = type { %struct.pci_bus* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_bus* (%struct.device*)* @dca_pci_rc_from_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_bus* @dca_pci_rc_from_dev(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.pci_dev* @to_pci_dev(%struct.device* %5)
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  store %struct.pci_bus* %9, %struct.pci_bus** %4, align 8
  br label %10

10:                                               ; preds = %15, %1
  %11 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %12 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %11, i32 0, i32 0
  %13 = load %struct.pci_bus*, %struct.pci_bus** %12, align 8
  %14 = icmp ne %struct.pci_bus* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %17 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %16, i32 0, i32 0
  %18 = load %struct.pci_bus*, %struct.pci_bus** %17, align 8
  store %struct.pci_bus* %18, %struct.pci_bus** %4, align 8
  br label %10

19:                                               ; preds = %10
  %20 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  ret %struct.pci_bus* %20
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
