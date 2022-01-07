; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd756.c_amd756_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd756.c_amd756_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }

@NFORCE = common dso_local global i64 0, align 8
@amd756_ioport = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Only one device supported (you have a strange motherboard, btw)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SMBBANFORCE = common dso_local global i32 0, align 4
@SMBGCFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Error: SMBus controller I/O not enabled!\0A\00", align 1
@SMBBA = common dso_local global i32 0, align 4
@SMB_ADDR_OFFSET = common dso_local global i64 0, align 8
@SMB_IOSIZE = common dso_local global i32 0, align 4
@amd756_driver = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"SMB region 0x%x already in use!\0A\00", align 1
@SMBREV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"SMBREV = 0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"AMD756_smba = 0x%X\0A\00", align 1
@amd756_smbus = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"SMBus %s adapter at %04x\00", align 1
@chipname = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @amd756_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd756_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %10 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NFORCE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @amd756_ioport, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %130

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PCI_FUNC(i32 %29)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %130

35:                                               ; preds = %26
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load i32, i32* @SMBBANFORCE, align 4
  %38 = call i32 @pci_read_config_word(%struct.pci_dev* %36, i32 %37, i32* @amd756_ioport)
  %39 = load i32, i32* @amd756_ioport, align 4
  %40 = and i32 %39, 65532
  store i32 %40, i32* @amd756_ioport, align 4
  br label %74

41:                                               ; preds = %23
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PCI_FUNC(i32 %44)
  %46 = icmp ne i32 %45, 3
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %130

50:                                               ; preds = %41
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = load i32, i32* @SMBGCFG, align 4
  %53 = call i32 @pci_read_config_byte(%struct.pci_dev* %51, i32 %52, i32* %8)
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %130

63:                                               ; preds = %50
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load i32, i32* @SMBBA, align 4
  %66 = call i32 @pci_read_config_word(%struct.pci_dev* %64, i32 %65, i32* @amd756_ioport)
  %67 = load i32, i32* @amd756_ioport, align 4
  %68 = and i32 %67, 65280
  store i32 %68, i32* @amd756_ioport, align 4
  %69 = load i64, i64* @SMB_ADDR_OFFSET, align 8
  %70 = load i32, i32* @amd756_ioport, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* @amd756_ioport, align 4
  br label %74

74:                                               ; preds = %63, %35
  %75 = load i32, i32* @amd756_ioport, align 4
  %76 = load i32, i32* @SMB_IOSIZE, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @amd756_driver, i32 0, i32 0), align 4
  %78 = call i32 @acpi_check_region(i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %130

84:                                               ; preds = %74
  %85 = load i32, i32* @amd756_ioport, align 4
  %86 = load i32, i32* @SMB_IOSIZE, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @amd756_driver, i32 0, i32 0), align 4
  %88 = call i32 @request_region(i32 %85, i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %84
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 0
  %93 = load i32, i32* @amd756_ioport, align 4
  %94 = call i32 (i32*, i8*, ...) @dev_err(i32* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %130

97:                                               ; preds = %84
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = load i32, i32* @SMBREV, align 4
  %100 = call i32 @pci_read_config_byte(%struct.pci_dev* %98, i32 %99, i32* %8)
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @dev_dbg(i32* %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 0
  %107 = load i32, i32* @amd756_ioport, align 4
  %108 = call i32 @dev_dbg(i32* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 0
  store i32* %110, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd756_smbus, i32 0, i32 1, i32 0), align 8
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd756_smbus, i32 0, i32 0), align 8
  %112 = load i8**, i8*** @chipname, align 8
  %113 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %114 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i8*, i8** %112, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* @amd756_ioport, align 4
  %119 = call i32 @snprintf(i32 %111, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %117, i32 %118)
  %120 = call i32 @i2c_add_adapter(%struct.TYPE_6__* @amd756_smbus)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %97
  br label %125

124:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %130

125:                                              ; preds = %123
  %126 = load i32, i32* @amd756_ioport, align 4
  %127 = load i32, i32* @SMB_IOSIZE, align 4
  %128 = call i32 @release_region(i32 %126, i32 %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %125, %124, %90, %81, %57, %47, %32, %17
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @acpi_check_region(i32, i32, i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_6__*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
