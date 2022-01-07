; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_i5400_get_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_i5400_get_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5400_pvt* }
%struct.i5400_pvt = type { i64, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, i32*, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32, i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_5400_ERR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"'system address,Process Bus' device not found:vendor 0x%x device 0x%x ERR func 1 (broken BIOS?)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [97 x i8] c"'system address,Process Bus' device not found:vendor 0x%x device 0x%x ERR func 2 (broken BIOS?)\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"System Address, processor bus- PCI Bus ID: %s  %x:%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Branchmap, control and errors - PCI Bus ID: %s  %x:%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"FSB Error Regs - PCI Bus ID: %s  %x:%x\0A\00", align 1
@PCI_DEVICE_ID_INTEL_5400_FBD0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [79 x i8] c"MC: 'BRANCH 0' device not found:vendor 0x%x device 0x%x Func 0 (broken BIOS?)\0A\00", align 1
@CHANNELS_PER_BRANCH = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_5400_FBD1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [79 x i8] c"MC: 'BRANCH 1' device not found:vendor 0x%x device 0x%x Func 0 (broken BIOS?)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i32)* @i5400_get_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5400_get_devices(%struct.mem_ctl_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i5400_pvt*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 0
  %10 = load %struct.i5400_pvt*, %struct.i5400_pvt** %9, align 8
  store %struct.i5400_pvt* %10, %struct.i5400_pvt** %6, align 8
  %11 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %12 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %11, i32 0, i32 1
  store %struct.pci_dev* null, %struct.pci_dev** %12, align 8
  %13 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %14 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %13, i32 0, i32 2
  store %struct.pci_dev* null, %struct.pci_dev** %14, align 8
  %15 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %16 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %15, i32 0, i32 3
  store %struct.pci_dev* null, %struct.pci_dev** %16, align 8
  %17 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %18 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  br label %19

19:                                               ; preds = %2, %41
  %20 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %21 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_ERR, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %23 = call i8* @pci_get_device(i32 %20, i32 %21, %struct.pci_dev* %22)
  %24 = bitcast i8* %23 to %struct.pci_dev*
  store %struct.pci_dev* %24, %struct.pci_dev** %7, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %26 = icmp ne %struct.pci_dev* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @KERN_ERR, align 4
  %29 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %30 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_ERR, align 4
  %31 = call i32 @i5400_printk(i32 %28, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %185

34:                                               ; preds = %19
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PCI_FUNC(i32 %37)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %34
  br label %19

42:                                               ; preds = %40
  %43 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %44 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %45 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %44, i32 0, i32 1
  store %struct.pci_dev* %43, %struct.pci_dev** %45, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  br label %46

46:                                               ; preds = %42, %72
  %47 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %48 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_ERR, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %50 = call i8* @pci_get_device(i32 %47, i32 %48, %struct.pci_dev* %49)
  %51 = bitcast i8* %50 to %struct.pci_dev*
  store %struct.pci_dev* %51, %struct.pci_dev** %7, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %53 = icmp ne %struct.pci_dev* %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @KERN_ERR, align 4
  %56 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %57 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_ERR, align 4
  %58 = call i32 @i5400_printk(i32 %55, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %60 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %59, i32 0, i32 1
  %61 = load %struct.pci_dev*, %struct.pci_dev** %60, align 8
  %62 = call i32 @pci_dev_put(%struct.pci_dev* %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %185

65:                                               ; preds = %46
  %66 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PCI_FUNC(i32 %68)
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %73

72:                                               ; preds = %65
  br label %46

73:                                               ; preds = %71
  %74 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %75 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %76 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %75, i32 0, i32 2
  store %struct.pci_dev* %74, %struct.pci_dev** %76, align 8
  %77 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %78 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %77, i32 0, i32 5
  %79 = load %struct.pci_dev*, %struct.pci_dev** %78, align 8
  %80 = call i32 @pci_name(%struct.pci_dev* %79)
  %81 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %82 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %81, i32 0, i32 5
  %83 = load %struct.pci_dev*, %struct.pci_dev** %82, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %87 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %86, i32 0, i32 5
  %88 = load %struct.pci_dev*, %struct.pci_dev** %87, align 8
  %89 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %85, i32 %90)
  %92 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %93 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %92, i32 0, i32 1
  %94 = load %struct.pci_dev*, %struct.pci_dev** %93, align 8
  %95 = call i32 @pci_name(%struct.pci_dev* %94)
  %96 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %97 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %96, i32 0, i32 1
  %98 = load %struct.pci_dev*, %struct.pci_dev** %97, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %102 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %101, i32 0, i32 1
  %103 = load %struct.pci_dev*, %struct.pci_dev** %102, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %100, i32 %105)
  %107 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %108 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %107, i32 0, i32 2
  %109 = load %struct.pci_dev*, %struct.pci_dev** %108, align 8
  %110 = call i32 @pci_name(%struct.pci_dev* %109)
  %111 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %112 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %111, i32 0, i32 2
  %113 = load %struct.pci_dev*, %struct.pci_dev** %112, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %117 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %116, i32 0, i32 2
  %118 = load %struct.pci_dev*, %struct.pci_dev** %117, align 8
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %115, i32 %120)
  %122 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %123 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_FBD0, align 4
  %124 = call i8* @pci_get_device(i32 %122, i32 %123, %struct.pci_dev* null)
  %125 = bitcast i8* %124 to %struct.pci_dev*
  %126 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %127 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %126, i32 0, i32 3
  store %struct.pci_dev* %125, %struct.pci_dev** %127, align 8
  %128 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %129 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %128, i32 0, i32 3
  %130 = load %struct.pci_dev*, %struct.pci_dev** %129, align 8
  %131 = icmp ne %struct.pci_dev* %130, null
  br i1 %131, label %147, label %132

132:                                              ; preds = %73
  %133 = load i32, i32* @KERN_ERR, align 4
  %134 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %135 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_FBD0, align 4
  %136 = call i32 @i5400_printk(i32 %133, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %138 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %137, i32 0, i32 2
  %139 = load %struct.pci_dev*, %struct.pci_dev** %138, align 8
  %140 = call i32 @pci_dev_put(%struct.pci_dev* %139)
  %141 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %142 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %141, i32 0, i32 1
  %143 = load %struct.pci_dev*, %struct.pci_dev** %142, align 8
  %144 = call i32 @pci_dev_put(%struct.pci_dev* %143)
  %145 = load i32, i32* @ENODEV, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %185

147:                                              ; preds = %73
  %148 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %149 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CHANNELS_PER_BRANCH, align 8
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %185

154:                                              ; preds = %147
  %155 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %156 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_FBD1, align 4
  %157 = call i8* @pci_get_device(i32 %155, i32 %156, %struct.pci_dev* null)
  %158 = bitcast i8* %157 to i32*
  %159 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %160 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %159, i32 0, i32 4
  store i32* %158, i32** %160, align 8
  %161 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %162 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %184, label %165

165:                                              ; preds = %154
  %166 = load i32, i32* @KERN_ERR, align 4
  %167 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %168 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_FBD1, align 4
  %169 = call i32 @i5400_printk(i32 %166, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i32 %167, i32 %168)
  %170 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %171 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %170, i32 0, i32 3
  %172 = load %struct.pci_dev*, %struct.pci_dev** %171, align 8
  %173 = call i32 @pci_dev_put(%struct.pci_dev* %172)
  %174 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %175 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %174, i32 0, i32 2
  %176 = load %struct.pci_dev*, %struct.pci_dev** %175, align 8
  %177 = call i32 @pci_dev_put(%struct.pci_dev* %176)
  %178 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %179 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %178, i32 0, i32 1
  %180 = load %struct.pci_dev*, %struct.pci_dev** %179, align 8
  %181 = call i32 @pci_dev_put(%struct.pci_dev* %180)
  %182 = load i32, i32* @ENODEV, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %185

184:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %184, %165, %153, %132, %54, %27
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i8* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @i5400_printk(i32, i8*, i32, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
