; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali1535.c_ali1535_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali1535.c_ali1535_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"ALI1535_smb can't enable device\0A\00", align 1
@SMBBA = common dso_local global i32 0, align 4
@ali1535_offset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ALI1535_smb is at offset 0x%04x\0A\00", align 1
@ALI1535_SMB_IOSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"ALI1535_smb region uninitialized - upgrade BIOS?\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@ali1535_smba = common dso_local global i8 0, align 1
@ali1535_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"ALI1535_smb region 0x%lx already in use!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SMBCFG = common dso_local global i32 0, align 4
@ALI1535_SMBIO_EN = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"SMB device not enabled - upgrade BIOS?\0A\00", align 1
@SMBHSTCFG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"SMBus controller not enabled - upgrade BIOS?\0A\00", align 1
@SMBCLK = common dso_local global i32 0, align 4
@SMBREV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"SMBREV = 0x%X\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ALI1535_smba = 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @ali1535_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali1535_setup(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call i32 @pci_enable_device(%struct.pci_dev* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call i32 (i32*, i8*, ...) @dev_err(i32* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %124

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = load i32, i32* @SMBBA, align 4
  %17 = call i32 @pci_read_config_word(%struct.pci_dev* %15, i32 %16, i32* @ali1535_offset)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* @ali1535_offset, align 4
  %21 = trunc i32 %20 to i8
  %22 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %21)
  %23 = load i32, i32* @ALI1535_SMB_IOSIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = xor i32 %24, -1
  %26 = and i32 65535, %25
  %27 = load i32, i32* @ali1535_offset, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* @ali1535_offset, align 4
  %29 = load i32, i32* @ali1535_offset, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %14
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @dev_warn(i32* %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %124

37:                                               ; preds = %14
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = call i32 @pci_resource_flags(%struct.pci_dev* %38, i32 0)
  %40 = load i32, i32* @IORESOURCE_IO, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = call zeroext i8 @pci_resource_start(%struct.pci_dev* %44, i32 0)
  %46 = zext i8 %45 to i32
  %47 = load i32, i32* @ali1535_offset, align 4
  %48 = add nsw i32 %46, %47
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* @ali1535_smba, align 1
  br label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @ali1535_offset, align 4
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* @ali1535_smba, align 1
  br label %53

53:                                               ; preds = %50, %43
  %54 = load i8, i8* @ali1535_smba, align 1
  %55 = load i32, i32* @ALI1535_SMB_IOSIZE, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ali1535_driver, i32 0, i32 0), align 4
  %57 = call i32 @acpi_check_region(i8 zeroext %54, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %124

61:                                               ; preds = %53
  %62 = load i8, i8* @ali1535_smba, align 1
  %63 = load i32, i32* @ALI1535_SMB_IOSIZE, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ali1535_driver, i32 0, i32 0), align 4
  %65 = call i32 @request_region(i8 zeroext %62, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %61
  %68 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load i8, i8* @ali1535_smba, align 1
  %71 = zext i8 %70 to i32
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %124

75:                                               ; preds = %61
  %76 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %77 = load i32, i32* @SMBCFG, align 4
  %78 = call i32 @pci_read_config_byte(%struct.pci_dev* %76, i32 %77, i8* %5)
  %79 = load i8, i8* %5, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @ALI1535_SMBIO_EN, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %120

91:                                               ; preds = %75
  %92 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %93 = load i32, i32* @SMBHSTCFG, align 4
  %94 = call i32 @pci_read_config_byte(%struct.pci_dev* %92, i32 %93, i8* %5)
  %95 = load i8, i8* %5, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 0
  %102 = call i32 (i32*, i8*, ...) @dev_err(i32* %101, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %120

105:                                              ; preds = %91
  %106 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %107 = load i32, i32* @SMBCLK, align 4
  %108 = call i32 @pci_write_config_byte(%struct.pci_dev* %106, i32 %107, i32 32)
  %109 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %110 = load i32, i32* @SMBREV, align 4
  %111 = call i32 @pci_read_config_byte(%struct.pci_dev* %109, i32 %110, i8* %5)
  %112 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 0
  %114 = load i8, i8* %5, align 1
  %115 = call i32 @dev_dbg(i32* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8 zeroext %114)
  %116 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 0
  %118 = load i8, i8* @ali1535_smba, align 1
  %119 = call i32 @dev_dbg(i32* %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8 zeroext %118)
  store i32 0, i32* %2, align 4
  br label %126

120:                                              ; preds = %99, %85
  %121 = load i8, i8* @ali1535_smba, align 1
  %122 = load i32, i32* @ALI1535_SMB_IOSIZE, align 4
  %123 = call i32 @release_region(i8 zeroext %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %67, %60, %31, %10
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %105
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local zeroext i8 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @acpi_check_region(i8 zeroext, i32, i32) #1

declare dso_local i32 @request_region(i8 zeroext, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @release_region(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
