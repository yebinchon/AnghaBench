; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7300_edac.c_i7300_get_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7300_edac.c_i7300_get_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i7300_pvt* }
%struct.i7300_pvt = type { i8**, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_I7300_MCH_ERR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"'system address,Process Bus' device not found:vendor 0x%x device 0x%x ERR funcs (broken BIOS?)\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"System Address, processor bus- PCI Bus ID: %s  %x:%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Branchmap, control and errors - PCI Bus ID: %s  %x:%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"FSB Error Regs - PCI Bus ID: %s  %x:%x\0A\00", align 1
@PCI_DEVICE_ID_INTEL_I7300_MCH_FB0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"MC: 'BRANCH 0' device not found:vendor 0x%x device 0x%x Func 0 (broken BIOS?)\0A\00", align 1
@PCI_DEVICE_ID_INTEL_I7300_MCH_FB1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [79 x i8] c"MC: 'BRANCH 1' device not found:vendor 0x%x device 0x%x Func 0 (broken BIOS?)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @i7300_get_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i7300_get_devices(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i7300_pvt*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 0
  %8 = load %struct.i7300_pvt*, %struct.i7300_pvt** %7, align 8
  store %struct.i7300_pvt* %8, %struct.i7300_pvt** %4, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  br label %9

9:                                                ; preds = %45, %1
  %10 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %11 = load i32, i32* @PCI_DEVICE_ID_INTEL_I7300_MCH_ERR, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = call i8* @pci_get_device(i32 %10, i32 %11, %struct.pci_dev* %12)
  %14 = bitcast i8* %13 to %struct.pci_dev*
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = icmp ne %struct.pci_dev* %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %9
  %17 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PCI_FUNC(i32 %19)
  switch i32 %20, label %45 [
    i32 1, label %21
    i32 2, label %33
  ]

21:                                               ; preds = %16
  %22 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %23 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = call i8* @pci_dev_get(%struct.pci_dev* %27)
  %29 = bitcast i8* %28 to %struct.TYPE_2__*
  %30 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %31 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %30, i32 0, i32 2
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  br label %32

32:                                               ; preds = %26, %21
  br label %45

33:                                               ; preds = %16
  %34 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %35 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = call i8* @pci_dev_get(%struct.pci_dev* %39)
  %41 = bitcast i8* %40 to %struct.TYPE_2__*
  %42 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %43 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %42, i32 0, i32 1
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %43, align 8
  br label %44

44:                                               ; preds = %38, %33
  br label %45

45:                                               ; preds = %16, %44, %32
  br label %9

46:                                               ; preds = %9
  %47 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %48 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp ne %struct.TYPE_2__* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %53 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @KERN_ERR, align 4
  %58 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %59 = load i32, i32* @PCI_DEVICE_ID_INTEL_I7300_MCH_ERR, align 4
  %60 = call i32 @i7300_printk(i32 %57, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %145

61:                                               ; preds = %51
  %62 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %63 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = call i32 @pci_name(%struct.TYPE_2__* %64)
  %66 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %67 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %72 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %70, i32 %75)
  %77 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %78 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = call i32 @pci_name(%struct.TYPE_2__* %79)
  %81 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %82 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %87 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %85, i32 %90)
  %92 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %93 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = call i32 @pci_name(%struct.TYPE_2__* %94)
  %96 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %97 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %102 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %100, i32 %105)
  %107 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %108 = load i32, i32* @PCI_DEVICE_ID_INTEL_I7300_MCH_FB0, align 4
  %109 = call i8* @pci_get_device(i32 %107, i32 %108, %struct.pci_dev* null)
  %110 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %111 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %110, i32 0, i32 0
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  store i8* %109, i8** %113, align 8
  %114 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %115 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %114, i32 0, i32 0
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %61
  %121 = load i32, i32* @KERN_ERR, align 4
  %122 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %123 = load i32, i32* @PCI_DEVICE_ID_INTEL_I7300_MCH_FB0, align 4
  %124 = call i32 @i7300_printk(i32 %121, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 %123)
  br label %145

125:                                              ; preds = %61
  %126 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %127 = load i32, i32* @PCI_DEVICE_ID_INTEL_I7300_MCH_FB1, align 4
  %128 = call i8* @pci_get_device(i32 %126, i32 %127, %struct.pci_dev* null)
  %129 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %130 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %129, i32 0, i32 0
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 1
  store i8* %128, i8** %132, align 8
  %133 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %134 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %133, i32 0, i32 0
  %135 = load i8**, i8*** %134, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 1
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %144, label %139

139:                                              ; preds = %125
  %140 = load i32, i32* @KERN_ERR, align 4
  %141 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %142 = load i32, i32* @PCI_DEVICE_ID_INTEL_I7300_MCH_FB1, align 4
  %143 = call i32 @i7300_printk(i32 %140, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 %141, i32 %142)
  br label %145

144:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %150

145:                                              ; preds = %139, %120, %56
  %146 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %147 = call i32 @i7300_put_devices(%struct.mem_ctl_info* %146)
  %148 = load i32, i32* @ENODEV, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %145, %144
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i8* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i8* @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @i7300_printk(i32, i8*, i32, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pci_name(%struct.TYPE_2__*) #1

declare dso_local i32 @i7300_put_devices(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
