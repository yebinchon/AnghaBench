; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i10nm_base.c_pci_get_dev_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i10nm_base.c_pci_get_dev_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"No device %02x:%02x.%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to enable device %02x:%02x.%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (i32, i32, i32, i32)* @pci_get_dev_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @pci_get_dev_wrapper(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @PCI_DEVFN(i32 %13, i32 %14)
  %16 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %11, i32 %12, i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %10, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %18 = icmp ne %struct.pci_dev* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @edac_dbg(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  br label %40

24:                                               ; preds = %4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %26 = call i64 @pci_enable_device(%struct.pci_dev* %25)
  %27 = icmp slt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @edac_dbg(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  br label %40

36:                                               ; preds = %24
  %37 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %38 = call i32 @pci_dev_get(%struct.pci_dev* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %39, %struct.pci_dev** %5, align 8
  br label %40

40:                                               ; preds = %36, %31, %19
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  ret %struct.pci_dev* %41
}

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
