; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali15x3.c_ali15x3_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali15x3.c_ali15x3_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@SMBATPC = common dso_local global i32 0, align 4
@ALI15X3_LOCK = common dso_local global i8 0, align 1
@SMBBA = common dso_local global i32 0, align 4
@ali15x3_smba = common dso_local global i32 0, align 4
@ALI15X3_SMB_IOSIZE = common dso_local global i32 0, align 4
@force_addr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"ALI15X3_smb region uninitialized - upgrade BIOS or use force_addr=0xaddr\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ali15x3_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ALI15X3_smb region 0x%x already in use!\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"forcing ISA address 0x%04X\0A\00", align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"force address failed - not supported?\0A\00", align 1
@SMBCOM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"enabling SMBus device\0A\00", align 1
@SMBHSTCFG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"enabling SMBus controller\0A\00", align 1
@SMBCLK = common dso_local global i32 0, align 4
@SMBREV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"SMBREV = 0x%X\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"iALI15X3_smba = 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @ali15x3_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali15x3_setup(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* @SMBATPC, align 4
  %8 = call i32 @pci_read_config_byte(%struct.pci_dev* %6, i32 %7, i8* %5)
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @ALI15X3_LOCK, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load i8, i8* @ALI15X3_LOCK, align 1
  %17 = zext i8 %16 to i32
  %18 = xor i32 %17, -1
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, %18
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %5, align 1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load i32, i32* @SMBATPC, align 4
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = call i32 @pci_write_config_byte(%struct.pci_dev* %23, i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %15, %1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load i32, i32* @SMBBA, align 4
  %31 = call i64 @pci_read_config_word(%struct.pci_dev* %29, i32 %30, i32* @ali15x3_smba)
  %32 = load i32, i32* @ALI15X3_SMB_IOSIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = xor i32 %33, -1
  %35 = and i32 65535, %34
  %36 = load i32, i32* @ali15x3_smba, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* @ali15x3_smba, align 4
  %38 = load i32, i32* @ali15x3_smba, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %28
  %41 = load i32, i32* @force_addr, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %173

49:                                               ; preds = %40, %28
  %50 = load i32, i32* @force_addr, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @force_addr, align 4
  %54 = load i32, i32* @ALI15X3_SMB_IOSIZE, align 4
  %55 = sub nsw i32 %54, 1
  %56 = xor i32 %55, -1
  %57 = and i32 %53, %56
  store i32 %57, i32* @ali15x3_smba, align 4
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32, i32* @ali15x3_smba, align 4
  %60 = load i32, i32* @ALI15X3_SMB_IOSIZE, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ali15x3_driver, i32 0, i32 0), align 4
  %62 = call i64 @acpi_check_region(i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %173

67:                                               ; preds = %58
  %68 = load i32, i32* @ali15x3_smba, align 4
  %69 = load i32, i32* @ALI15X3_SMB_IOSIZE, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ali15x3_driver, i32 0, i32 0), align 4
  %71 = call i32 @request_region(i32 %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %67
  %74 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load i32, i32* @ali15x3_smba, align 4
  %77 = call i32 (i32*, i8*, ...) @dev_err(i32* %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %173

80:                                               ; preds = %67
  %81 = load i32, i32* @force_addr, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %80
  %84 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* @ali15x3_smba, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_info(i32* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %89 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %90 = load i32, i32* @SMBBA, align 4
  %91 = load i32, i32* @ali15x3_smba, align 4
  %92 = call i64 @pci_write_config_word(%struct.pci_dev* %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %167

95:                                               ; preds = %83
  %96 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %97 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %98 = load i32, i32* @SMBBA, align 4
  %99 = call i64 @pci_read_config_word(%struct.pci_dev* %97, i32 %98, i32* %4)
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %167

102:                                              ; preds = %95
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @ALI15X3_SMB_IOSIZE, align 4
  %105 = sub nsw i32 %104, 1
  %106 = xor i32 %105, -1
  %107 = and i32 %103, %106
  %108 = load i32, i32* @ali15x3_smba, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = call i32 (i32*, i8*, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %167

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %80
  %116 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %117 = load i32, i32* @SMBCOM, align 4
  %118 = call i32 @pci_read_config_byte(%struct.pci_dev* %116, i32 %117, i8* %5)
  %119 = load i8, i8* %5, align 1
  %120 = zext i8 %119 to i32
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %115
  %124 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 0
  %126 = call i32 (i32*, i8*, ...) @dev_info(i32* %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %127 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %128 = load i32, i32* @SMBCOM, align 4
  %129 = load i8, i8* %5, align 1
  %130 = zext i8 %129 to i32
  %131 = or i32 %130, 1
  %132 = call i32 @pci_write_config_byte(%struct.pci_dev* %127, i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %123, %115
  %134 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %135 = load i32, i32* @SMBHSTCFG, align 4
  %136 = call i32 @pci_read_config_byte(%struct.pci_dev* %134, i32 %135, i8* %5)
  %137 = load i8, i8* %5, align 1
  %138 = zext i8 %137 to i32
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %133
  %142 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %143 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %142, i32 0, i32 0
  %144 = call i32 (i32*, i8*, ...) @dev_info(i32* %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %145 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %146 = load i32, i32* @SMBHSTCFG, align 4
  %147 = load i8, i8* %5, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %148, 1
  %150 = call i32 @pci_write_config_byte(%struct.pci_dev* %145, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %141, %133
  %152 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %153 = load i32, i32* @SMBCLK, align 4
  %154 = call i32 @pci_write_config_byte(%struct.pci_dev* %152, i32 %153, i32 32)
  %155 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %156 = load i32, i32* @SMBREV, align 4
  %157 = call i32 @pci_read_config_byte(%struct.pci_dev* %155, i32 %156, i8* %5)
  %158 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = load i8, i8* %5, align 1
  %161 = zext i8 %160 to i32
  %162 = call i32 @dev_dbg(i32* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  %163 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %164 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %163, i32 0, i32 0
  %165 = load i32, i32* @ali15x3_smba, align 4
  %166 = call i32 @dev_dbg(i32* %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %165)
  store i32 0, i32* %2, align 4
  br label %173

167:                                              ; preds = %110, %101, %94
  %168 = load i32, i32* @ali15x3_smba, align 4
  %169 = load i32, i32* @ALI15X3_SMB_IOSIZE, align 4
  %170 = call i32 @release_region(i32 %168, i32 %169)
  %171 = load i32, i32* @ENODEV, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %167, %151, %73, %64, %43
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @acpi_check_region(i32, i32, i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
