; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_get_pci_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_get_pci_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.edd_device = type { i32 }
%struct.edd_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"XPRS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (%struct.edd_device*)* @edd_get_pci_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @edd_get_pci_dev(%struct.edd_device* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.edd_device*, align 8
  %4 = alloca %struct.edd_info*, align 8
  store %struct.edd_device* %0, %struct.edd_device** %3, align 8
  %5 = load %struct.edd_device*, %struct.edd_device** %3, align 8
  %6 = call %struct.edd_info* @edd_dev_get_info(%struct.edd_device* %5)
  store %struct.edd_info* %6, %struct.edd_info** %4, align 8
  %7 = load %struct.edd_device*, %struct.edd_device** %3, align 8
  %8 = call i64 @edd_dev_is_type(%struct.edd_device* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.edd_device*, %struct.edd_device** %3, align 8
  %12 = call i64 @edd_dev_is_type(%struct.edd_device* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %10, %1
  %15 = load %struct.edd_info*, %struct.edd_info** %4, align 8
  %16 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.edd_info*, %struct.edd_info** %4, align 8
  %22 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.edd_info*, %struct.edd_info** %4, align 8
  %28 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PCI_DEVFN(i32 %26, i32 %32)
  %34 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 0, i32 %20, i32 %33)
  store %struct.pci_dev* %34, %struct.pci_dev** %2, align 8
  br label %36

35:                                               ; preds = %10
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %36

36:                                               ; preds = %35, %14
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  ret %struct.pci_dev* %37
}

declare dso_local %struct.edd_info* @edd_dev_get_info(%struct.edd_device*) #1

declare dso_local i64 @edd_dev_is_type(%struct.edd_device*, i8*) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
