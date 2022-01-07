; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis96x.c_sis96x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis96x.c_sis96x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.pci_dev = type { i32, i32* }
%struct.pci_device_id = type { i32 }

@sis96x_smbus_base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Only one device supported.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PCI_CLASS_DEVICE = common dso_local global i32 0, align 4
@PCI_CLASS_SERIAL_SMBUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Unsupported device class 0x%04x!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SIS96x_BAR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"SiS96x SMBus base address not initialized!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"SiS96x SMBus base address: 0x%04x\0A\00", align 1
@SMB_IOSIZE = common dso_local global i32 0, align 4
@sis96x_driver = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"SMBus registers 0x%04x-0x%04x already in use!\0A\00", align 1
@sis96x_adapter = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"SiS96x SMBus adapter at 0x%04x\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Couldn't register adapter!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @sis96x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis96x_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load i32, i32* @sis96x_smbus_base, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call i32 (i32*, i8*, ...) @dev_err(i32* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %92

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load i32, i32* @PCI_CLASS_DEVICE, align 4
  %19 = call i32 @pci_read_config_word(%struct.pci_dev* %17, i32 %18, i64* %6)
  %20 = load i64, i64* @PCI_CLASS_SERIAL_SMBUS, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %92

30:                                               ; preds = %16
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i64, i64* @SIS96x_BAR, align 8
  %33 = call i32 @pci_resource_start(%struct.pci_dev* %31, i64 %32)
  store i32 %33, i32* @sis96x_smbus_base, align 4
  %34 = load i32, i32* @sis96x_smbus_base, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %92

42:                                               ; preds = %30
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i32, i32* @sis96x_smbus_base, align 4
  %46 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @SIS96x_BAR, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = call i32 @acpi_check_resource_conflict(i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %92

58:                                               ; preds = %42
  %59 = load i32, i32* @sis96x_smbus_base, align 4
  %60 = load i32, i32* @SMB_IOSIZE, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sis96x_driver, i32 0, i32 0), align 4
  %62 = call i32 @request_region(i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %58
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* @sis96x_smbus_base, align 4
  %68 = load i32, i32* @sis96x_smbus_base, align 4
  %69 = load i32, i32* @SMB_IOSIZE, align 4
  %70 = add nsw i32 %68, %69
  %71 = sub nsw i32 %70, 1
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %71)
  store i32 0, i32* @sis96x_smbus_base, align 4
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %92

75:                                               ; preds = %58
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  store i32* %77, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sis96x_adapter, i32 0, i32 1, i32 0), align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sis96x_adapter, i32 0, i32 0), align 8
  %79 = load i32, i32* @sis96x_smbus_base, align 4
  %80 = call i32 @snprintf(i32 %78, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = call i32 @i2c_add_adapter(%struct.TYPE_7__* @sis96x_adapter)
  store i32 %81, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* @sis96x_smbus_base, align 4
  %88 = load i32, i32* @SMB_IOSIZE, align 4
  %89 = call i32 @release_region(i32 %87, i32 %88)
  store i32 0, i32* @sis96x_smbus_base, align 4
  br label %90

90:                                               ; preds = %83, %75
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %64, %55, %36, %23, %10
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @acpi_check_resource_conflict(i32*) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_7__*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
