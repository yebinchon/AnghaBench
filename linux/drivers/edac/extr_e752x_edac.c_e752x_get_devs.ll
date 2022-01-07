; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_get_devs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_e752x_get_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.e752x_pvt = type { i32*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"error reporting device not found:vendor %x device 0x%x (broken BIOS?)\0A\00", align 1
@e752x_devs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, %struct.e752x_pvt*)* @e752x_get_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e752x_get_devs(%struct.pci_dev* %0, i32 %1, %struct.e752x_pvt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e752x_pvt*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.e752x_pvt* %2, %struct.e752x_pvt** %7, align 8
  %8 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %9 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %10 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @pci_get_device(i32 %8, i32 %13, i32* null)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %17 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %19 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PCI_DEVFN(i32 0, i32 1)
  %27 = call i32* @pci_scan_single_device(i32 %25, i32 %26)
  %28 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %29 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %31 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @pci_dev_get(i32* %32)
  br label %34

34:                                               ; preds = %22, %3
  %35 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %36 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i32, i32* @KERN_ERR, align 4
  %41 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @e752x_devs, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @e752x_printk(i32 %40, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %47)
  store i32 1, i32* %4, align 4
  br label %72

49:                                               ; preds = %34
  %50 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @e752x_devs, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @pci_get_device(i32 %50, i32 %56, i32* null)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %60 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %62 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  br label %67

66:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %72

67:                                               ; preds = %65
  %68 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %69 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @pci_dev_put(i32* %70)
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %66, %39
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i8* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32* @pci_scan_single_device(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_dev_get(i32*) #1

declare dso_local i32 @e752x_printk(i32, i8*, i32, i32) #1

declare dso_local i32 @pci_dev_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
