; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd8111.c_amd8111_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd8111.c_amd8111_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pci_dev = type { i32, i32* }
%struct.pci_device_id = type { i32 }
%struct.amd_smbus = type { i32, i32, %struct.TYPE_5__, %struct.pci_dev* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, %struct.amd_smbus*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@amd8111_driver = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EBUSY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SMBus2 AMD8111 adapter at %04x\00", align 1
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@smbus_algorithm = common dso_local global i32 0, align 4
@AMD_PCI_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @amd8111_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.amd_smbus*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pci_resource_flags(%struct.pci_dev* %8, i32 0)
  %10 = load i32, i32* @IORESOURCE_IO, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %118

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.amd_smbus* @kzalloc(i32 56, i32 %17)
  store %struct.amd_smbus* %18, %struct.amd_smbus** %6, align 8
  %19 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %20 = icmp ne %struct.amd_smbus* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %118

24:                                               ; preds = %16
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %27 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %26, i32 0, i32 3
  store %struct.pci_dev* %25, %struct.pci_dev** %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_resource_start(%struct.pci_dev* %28, i32 0)
  %30 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %31 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i32 @pci_resource_len(%struct.pci_dev* %32, i32 0)
  %34 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %35 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @acpi_check_resource_conflict(i32* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %24
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %114

46:                                               ; preds = %24
  %47 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %48 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %51 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd8111_driver, i32 0, i32 0), align 4
  %54 = call i32 @request_region(i32 %49, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %114

59:                                               ; preds = %46
  %60 = load i32, i32* @THIS_MODULE, align 4
  %61 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %62 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  store i32 %60, i32* %63, align 4
  %64 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %65 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %69 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @snprintf(i32 %67, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %73 = load i32, i32* @I2C_CLASS_SPD, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %76 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %79 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  store i32* @smbus_algorithm, i32** %80, align 8
  %81 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %82 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %83 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store %struct.amd_smbus* %81, %struct.amd_smbus** %84, align 8
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %88 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32* %86, i32** %90, align 8
  %91 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %92 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %91, i32 0, i32 3
  %93 = load %struct.pci_dev*, %struct.pci_dev** %92, align 8
  %94 = load i32, i32* @AMD_PCI_MISC, align 4
  %95 = call i32 @pci_write_config_dword(%struct.pci_dev* %93, i32 %94, i32 0)
  %96 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %97 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %96, i32 0, i32 2
  %98 = call i32 @i2c_add_adapter(%struct.TYPE_5__* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %59
  br label %106

102:                                              ; preds = %59
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %105 = call i32 @pci_set_drvdata(%struct.pci_dev* %103, %struct.amd_smbus* %104)
  store i32 0, i32* %3, align 4
  br label %118

106:                                              ; preds = %101
  %107 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %108 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %111 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @release_region(i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %106, %56, %43
  %115 = load %struct.amd_smbus*, %struct.amd_smbus** %6, align 8
  %116 = call i32 @kfree(%struct.amd_smbus* %115)
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %102, %21, %13
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local %struct.amd_smbus* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @acpi_check_resource_conflict(i32*) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.amd_smbus*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.amd_smbus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
