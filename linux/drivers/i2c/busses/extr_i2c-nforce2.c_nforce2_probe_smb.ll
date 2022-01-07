; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nforce2.c_nforce2_probe_smb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nforce2.c_nforce2_probe_smb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.nforce2_smbus = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32, %struct.nforce2_smbus*, i32*, i32 }
%struct.TYPE_7__ = type { i32* }

@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Error reading PCI config for %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_IO_MASK = common dso_local global i32 0, align 4
@nforce2_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Error requesting region %02x .. %02X for %s\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@smbus_algorithm = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"SMBus nForce2 adapter at %04x\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"nForce2 SMBus adapter at %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32, %struct.nforce2_smbus*, i8*)* @nforce2_probe_smb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nforce2_probe_smb(%struct.pci_dev* %0, i32 %1, i32 %2, %struct.nforce2_smbus* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nforce2_smbus*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.nforce2_smbus* %3, %struct.nforce2_smbus** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @pci_resource_start(%struct.pci_dev* %14, i32 %15)
  %17 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %18 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %20 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pci_resource_len(%struct.pci_dev* %24, i32 %25)
  %27 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %28 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %51

29:                                               ; preds = %5
  %30 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @pci_read_config_word(%struct.pci_dev* %30, i32 %31, i32* %13)
  %33 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to %struct.TYPE_7__*
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %147

43:                                               ; preds = %29
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @PCI_BASE_ADDRESS_IO_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %48 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %50 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %49, i32 0, i32 1
  store i32 64, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %23
  %52 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %53 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %56 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nforce2_driver, i32 0, i32 0), align 4
  %59 = call i32 @acpi_check_region(i32 %54, i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %147

64:                                               ; preds = %51
  %65 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %66 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %69 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nforce2_driver, i32 0, i32 0), align 4
  %72 = call i32 @request_region(i32 %67, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %93, label %74

74:                                               ; preds = %64
  %75 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %76 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %79 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %82 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %85 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = sub nsw i32 %87, 1
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %88, i8* %89)
  %91 = load i32, i32* @EBUSY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %147

93:                                               ; preds = %64
  %94 = load i32, i32* @THIS_MODULE, align 4
  %95 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %96 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 5
  store i32 %94, i32* %97, align 8
  %98 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %99 = load i32, i32* @I2C_CLASS_SPD, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %102 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %105 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  store i32* @smbus_algorithm, i32** %106, align 8
  %107 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %108 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %109 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  store %struct.nforce2_smbus* %107, %struct.nforce2_smbus** %110, align 8
  %111 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %114 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32* %112, i32** %116, align 8
  %117 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %118 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %122 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @snprintf(i32 %120, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %126 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %125, i32 0, i32 2
  %127 = call i32 @i2c_add_adapter(%struct.TYPE_6__* %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %93
  %131 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %132 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %135 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @release_region(i32 %133, i32 %136)
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %6, align 4
  br label %147

139:                                              ; preds = %93
  %140 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %141 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %10, align 8
  %144 = getelementptr inbounds %struct.nforce2_smbus, %struct.nforce2_smbus* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @dev_info(%struct.TYPE_7__* %142, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %139, %130, %74, %62, %35
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @acpi_check_region(i32, i32, i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_6__*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
