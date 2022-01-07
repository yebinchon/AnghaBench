; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i64, i64, i32 }
%struct.pci_device_id = type { i32 }

@PCI_VENDOR_ID_SERVERWORKS = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_SERVERWORKS_CSB5 = common dso_local global i64 0, align 8
@srvrworks_csb5_delay = common dso_local global i32 0, align 4
@piix4_dmi_blacklist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Accessing the SMBus on this system is unsafe!\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@piix4_dmi_ibm = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [91 x i8] c"IBM system detected; this module may corrupt your serial eeprom! Refusing to load module!\0A\00", align 1
@force_addr = common dso_local global i32 0, align 4
@force = common dso_local global i64 0, align 8
@SMBBA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"SMBus base address uninitialized - upgrade BIOS or use force_addr=0xaddr\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SMBIOSIZE = common dso_local global i32 0, align 4
@piix4_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"SMBus region 0x%x already in use!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SMBHSTCFG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"WARNING: SMBus interface set to new address %04x!\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"WARNING: SMBus interface has been FORCEFULLY ENABLED!\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"SMBus Host Controller not enabled!\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Using IRQ for SMBus\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Using SMI# for SMBus\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Illegal Interrupt configuration (or code out of date)!\0A\00", align 1
@SMBREV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"SMBus Host Controller at 0x%x, revision %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @piix4_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix4_setup(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCI_VENDOR_ID_SERVERWORKS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCI_DEVICE_ID_SERVERWORKS_CSB5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* @srvrworks_csb5_delay, align 4
  br label %20

20:                                               ; preds = %19, %13, %2
  %21 = load i32, i32* @piix4_dmi_blacklist, align 4
  %22 = call i64 @dmi_check_system(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 2
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %193

30:                                               ; preds = %20
  %31 = load i32, i32* @piix4_dmi_ibm, align 4
  %32 = call i64 @dmi_check_system(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 2
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %193

46:                                               ; preds = %34, %30
  %47 = load i32, i32* @force_addr, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @force_addr, align 4
  %51 = and i32 %50, 65520
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %7, align 2
  store i64 0, i64* @force, align 8
  br label %71

53:                                               ; preds = %46
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = load i32, i32* @SMBBA, align 4
  %56 = call i32 @pci_read_config_word(%struct.pci_dev* %54, i32 %55, i16* %7)
  %57 = load i16, i16* %7, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 65520
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %7, align 2
  %61 = load i16, i16* %7, align 2
  %62 = zext i16 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 2
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %193

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70, %49
  %72 = load i16, i16* %7, align 2
  %73 = load i32, i32* @SMBIOSIZE, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @piix4_driver, i32 0, i32 0), align 4
  %75 = call i64 @acpi_check_region(i16 zeroext %72, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %193

80:                                               ; preds = %71
  %81 = load i16, i16* %7, align 2
  %82 = load i32, i32* @SMBIOSIZE, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @piix4_driver, i32 0, i32 0), align 4
  %84 = call i32 @request_region(i16 zeroext %81, i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %80
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 2
  %89 = load i16, i16* %7, align 2
  %90 = zext i16 %89 to i32
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %193

94:                                               ; preds = %80
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = load i32, i32* @SMBHSTCFG, align 4
  %97 = call i32 @pci_read_config_byte(%struct.pci_dev* %95, i32 %96, i8* %6)
  %98 = load i32, i32* @force_addr, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %94
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = load i32, i32* @SMBHSTCFG, align 4
  %103 = load i8, i8* %6, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 254
  %106 = trunc i32 %105 to i8
  %107 = call i32 @pci_write_config_byte(%struct.pci_dev* %101, i32 %102, i8 zeroext %106)
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = load i32, i32* @SMBBA, align 4
  %110 = load i16, i16* %7, align 2
  %111 = call i32 @pci_write_config_word(%struct.pci_dev* %108, i32 %109, i16 zeroext %110)
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = load i32, i32* @SMBHSTCFG, align 4
  %114 = load i8, i8* %6, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %115, 1
  %117 = trunc i32 %116 to i8
  %118 = call i32 @pci_write_config_byte(%struct.pci_dev* %112, i32 %113, i8 zeroext %117)
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 2
  %121 = load i16, i16* %7, align 2
  %122 = call i32 (i32*, i8*, i16, ...) @dev_info(i32* %120, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i16 zeroext %121)
  br label %153

123:                                              ; preds = %94
  %124 = load i8, i8* %6, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %152

128:                                              ; preds = %123
  %129 = load i64, i64* @force, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %133 = load i32, i32* @SMBHSTCFG, align 4
  %134 = load i8, i8* %6, align 1
  %135 = zext i8 %134 to i32
  %136 = or i32 %135, 1
  %137 = trunc i32 %136 to i8
  %138 = call i32 @pci_write_config_byte(%struct.pci_dev* %132, i32 %133, i8 zeroext %137)
  %139 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 2
  %141 = call i32 @dev_notice(i32* %140, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  br label %151

142:                                              ; preds = %128
  %143 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %144 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %143, i32 0, i32 2
  %145 = call i32 (i32*, i8*, ...) @dev_err(i32* %144, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %146 = load i16, i16* %7, align 2
  %147 = load i32, i32* @SMBIOSIZE, align 4
  %148 = call i32 @release_region(i16 zeroext %146, i32 %147)
  %149 = load i32, i32* @ENODEV, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %193

151:                                              ; preds = %131
  br label %152

152:                                              ; preds = %151, %123
  br label %153

153:                                              ; preds = %152, %100
  %154 = load i8, i8* %6, align 1
  %155 = zext i8 %154 to i32
  %156 = and i32 %155, 14
  %157 = icmp eq i32 %156, 8
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load i8, i8* %6, align 1
  %160 = zext i8 %159 to i32
  %161 = and i32 %160, 14
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %167

163:                                              ; preds = %158, %153
  %164 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %165 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %164, i32 0, i32 2
  %166 = call i32 @dev_dbg(i32* %165, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %181

167:                                              ; preds = %158
  %168 = load i8, i8* %6, align 1
  %169 = zext i8 %168 to i32
  %170 = and i32 %169, 14
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %174 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %173, i32 0, i32 2
  %175 = call i32 @dev_dbg(i32* %174, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %180

176:                                              ; preds = %167
  %177 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %178 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %177, i32 0, i32 2
  %179 = call i32 (i32*, i8*, ...) @dev_err(i32* %178, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  br label %180

180:                                              ; preds = %176, %172
  br label %181

181:                                              ; preds = %180, %163
  %182 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %183 = load i32, i32* @SMBREV, align 4
  %184 = call i32 @pci_read_config_byte(%struct.pci_dev* %182, i32 %183, i8* %6)
  %185 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %186 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %185, i32 0, i32 2
  %187 = load i16, i16* %7, align 2
  %188 = load i8, i8* %6, align 1
  %189 = zext i8 %188 to i32
  %190 = call i32 (i32*, i8*, i16, ...) @dev_info(i32* %186, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i16 zeroext %187, i32 %189)
  %191 = load i16, i16* %7, align 2
  %192 = zext i16 %191 to i32
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %181, %142, %86, %77, %64, %40, %24
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #1

declare dso_local i64 @acpi_check_region(i16 zeroext, i32, i32) #1

declare dso_local i32 @request_region(i16 zeroext, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #1

declare dso_local i32 @dev_info(i32*, i8*, i16 zeroext, ...) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @release_region(i16 zeroext, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
