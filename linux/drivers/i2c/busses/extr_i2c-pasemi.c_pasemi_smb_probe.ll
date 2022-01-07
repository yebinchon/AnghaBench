; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pasemi.c_pasemi_smb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pasemi.c_pasemi_smb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.pasemi_smbus = type { i32, i32, %struct.TYPE_6__, %struct.pci_dev* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__, %struct.pasemi_smbus*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pasemi_smb_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@EBUSY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PA Semi SMBus adapter at 0x%lx\00", align 1
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@smbus_algorithm = common dso_local global i32 0, align 4
@REG_CTL = common dso_local global i32 0, align 4
@CTL_MTR = common dso_local global i32 0, align 4
@CTL_MRR = common dso_local global i32 0, align 4
@CLK_100K_DIV = common dso_local global i32 0, align 4
@CTL_CLK_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pasemi_smb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_smb_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.pasemi_smbus*, align 8
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
  br label %112

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.pasemi_smbus* @kzalloc(i32 56, i32 %17)
  store %struct.pasemi_smbus* %18, %struct.pasemi_smbus** %6, align 8
  %19 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %20 = icmp ne %struct.pasemi_smbus* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %112

24:                                               ; preds = %16
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %27 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %26, i32 0, i32 3
  store %struct.pci_dev* %25, %struct.pci_dev** %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_resource_start(%struct.pci_dev* %28, i32 0)
  %30 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %31 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i32 @pci_resource_len(%struct.pci_dev* %32, i32 0)
  %34 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %35 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %37 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %40 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pasemi_smb_driver, i32 0, i32 0), align 4
  %43 = call i32 @request_region(i32 %38, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %24
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %108

48:                                               ; preds = %24
  %49 = load i32, i32* @THIS_MODULE, align 4
  %50 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %51 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  store i32 %49, i32* %52, align 4
  %53 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %54 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %58 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @snprintf(i32 %56, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %62 = load i32, i32* @I2C_CLASS_SPD, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %65 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %68 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  store i32* @smbus_algorithm, i32** %69, align 8
  %70 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %71 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %72 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  store %struct.pasemi_smbus* %70, %struct.pasemi_smbus** %73, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %77 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32* %75, i32** %79, align 8
  %80 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %81 = load i32, i32* @REG_CTL, align 4
  %82 = load i32, i32* @CTL_MTR, align 4
  %83 = load i32, i32* @CTL_MRR, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @CLK_100K_DIV, align 4
  %86 = load i32, i32* @CTL_CLK_M, align 4
  %87 = and i32 %85, %86
  %88 = or i32 %84, %87
  %89 = call i32 @reg_write(%struct.pasemi_smbus* %80, i32 %81, i32 %88)
  %90 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %91 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %90, i32 0, i32 2
  %92 = call i32 @i2c_add_adapter(%struct.TYPE_6__* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %48
  br label %100

96:                                               ; preds = %48
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %99 = call i32 @pci_set_drvdata(%struct.pci_dev* %97, %struct.pasemi_smbus* %98)
  store i32 0, i32* %3, align 4
  br label %112

100:                                              ; preds = %95
  %101 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %102 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %105 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @release_region(i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %100, %45
  %109 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %6, align 8
  %110 = call i32 @kfree(%struct.pasemi_smbus* %109)
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %96, %21, %13
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local %struct.pasemi_smbus* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @reg_write(%struct.pasemi_smbus*, i32, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_6__*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.pasemi_smbus*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.pasemi_smbus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
