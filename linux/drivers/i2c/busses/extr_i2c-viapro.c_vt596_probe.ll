; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viapro.c_vt596_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viapro.c_vt596_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i64, i32 }

@force_addr = common dso_local global i32 0, align 4
@vt596_smba = common dso_local global i32 0, align 4
@force = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_VIA_82C596_3 = common dso_local global i64 0, align 8
@SMBBA2 = common dso_local global i32 0, align 4
@SMBHSTCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cannot configure SMBus I/O Base address\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"SMBus base address uninitialized - upgrade BIOS or use force_addr=0xaddr\0A\00", align 1
@vt596_driver = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"SMBus region 0x%x already in use!\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"WARNING: SMBus interface set to new address 0x%04x!\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Enabling SMBus device\0A\00", align 1
@.str.5 = private unnamed_addr constant [80 x i8] c"SMBUS: Error: Host SMBus controller not enabled! - upgrade BIOS or use force=1\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"VT596_smba = 0x%X\0A\00", align 1
@FEATURE_I2CBLOCK = common dso_local global i32 0, align 4
@vt596_features = common dso_local global i32 0, align 4
@vt596_adapter = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"SMBus Via Pro adapter at %04x\00", align 1
@vt596_pdev = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @vt596_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt596_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @force_addr, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @force_addr, align 4
  %12 = and i32 %11, 65520
  store i32 %12, i32* @vt596_smba, align 4
  store i64 0, i64* @force, align 8
  br label %59

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %16 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @pci_read_config_word(%struct.pci_dev* %14, i32 %17, i32* @vt596_smba)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @vt596_smba, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCI_DEVICE_ID_VIA_82C596_3, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i32, i32* @SMBBA2, align 4
  %33 = call i64 @pci_read_config_word(%struct.pci_dev* %31, i32 %32, i32* @vt596_smba)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @vt596_smba, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 132, i32* @SMBHSTCFG, align 4
  br label %46

40:                                               ; preds = %35, %30, %24
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 2
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %181

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i32, i32* @vt596_smba, align 4
  %49 = and i32 %48, 65520
  store i32 %49, i32* @vt596_smba, align 4
  %50 = load i32, i32* @vt596_smba, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 2
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %181

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %10
  %60 = load i32, i32* @vt596_smba, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vt596_driver, i32 0, i32 0), align 4
  %62 = call i32 @acpi_check_region(i32 %60, i32 8, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %181

68:                                               ; preds = %59
  %69 = load i32, i32* @vt596_smba, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vt596_driver, i32 0, i32 0), align 4
  %71 = call i32 @request_region(i32 %69, i32 8, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 2
  %76 = load i32, i32* @vt596_smba, align 4
  %77 = call i32 (i32*, i8*, ...) @dev_err(i32* %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %181

80:                                               ; preds = %68
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = load i32, i32* @SMBHSTCFG, align 4
  %83 = call i32 @pci_read_config_byte(%struct.pci_dev* %81, i32 %82, i8* %6)
  %84 = load i32, i32* @force_addr, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %80
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = load i32, i32* @SMBHSTCFG, align 4
  %89 = load i8, i8* %6, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 254
  %92 = trunc i32 %91 to i8
  %93 = call i32 @pci_write_config_byte(%struct.pci_dev* %87, i32 %88, i8 zeroext %92)
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %96 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @vt596_smba, align 4
  %99 = call i32 @pci_write_config_word(%struct.pci_dev* %94, i32 %97, i32 %98)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = load i32, i32* @SMBHSTCFG, align 4
  %102 = load i8, i8* %6, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, 1
  %105 = trunc i32 %104 to i8
  %106 = call i32 @pci_write_config_byte(%struct.pci_dev* %100, i32 %101, i8 zeroext %105)
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 2
  %109 = load i32, i32* @vt596_smba, align 4
  %110 = call i32 @dev_warn(i32* %108, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %138

111:                                              ; preds = %80
  %112 = load i8, i8* %6, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 %113, 1
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %111
  %117 = load i64, i64* @force, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = load i32, i32* @SMBHSTCFG, align 4
  %122 = load i8, i8* %6, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %123, 1
  %125 = trunc i32 %124 to i8
  %126 = call i32 @pci_write_config_byte(%struct.pci_dev* %120, i32 %121, i8 zeroext %125)
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 2
  %129 = call i32 @dev_info(i32* %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %136

130:                                              ; preds = %116
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 2
  %133 = call i32 (i32*, i8*, ...) @dev_err(i32* %132, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* @ENODEV, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %7, align 4
  br label %177

136:                                              ; preds = %119
  br label %137

137:                                              ; preds = %136, %111
  br label %138

138:                                              ; preds = %137, %86
  %139 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 2
  %141 = load i32, i32* @vt596_smba, align 4
  %142 = call i32 @dev_dbg(i32* %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  %143 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %144 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %160 [
    i32 131, label %146
    i32 130, label %146
    i32 129, label %146
    i32 128, label %146
    i32 133, label %146
    i32 136, label %146
    i32 135, label %146
    i32 134, label %146
    i32 137, label %146
    i32 139, label %146
    i32 138, label %146
    i32 132, label %150
  ]

146:                                              ; preds = %138, %138, %138, %138, %138, %138, %138, %138, %138, %138, %138
  %147 = load i32, i32* @FEATURE_I2CBLOCK, align 4
  %148 = load i32, i32* @vt596_features, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* @vt596_features, align 4
  br label %160

150:                                              ; preds = %138
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp sge i32 %153, 64
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* @FEATURE_I2CBLOCK, align 4
  %157 = load i32, i32* @vt596_features, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* @vt596_features, align 4
  br label %159

159:                                              ; preds = %155, %150
  br label %160

160:                                              ; preds = %138, %159, %146
  %161 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %162 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %161, i32 0, i32 2
  store i32* %162, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vt596_adapter, i32 0, i32 1, i32 0), align 8
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vt596_adapter, i32 0, i32 0), align 8
  %164 = load i32, i32* @vt596_smba, align 4
  %165 = call i32 @snprintf(i32 %163, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %164)
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = call i32* @pci_dev_get(%struct.pci_dev* %166)
  store i32* %167, i32** @vt596_pdev, align 8
  %168 = call i32 @i2c_add_adapter(%struct.TYPE_7__* @vt596_adapter)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %160
  %172 = load i32*, i32** @vt596_pdev, align 8
  %173 = call i32 @pci_dev_put(i32* %172)
  store i32* null, i32** @vt596_pdev, align 8
  br label %177

174:                                              ; preds = %160
  %175 = load i32, i32* @ENODEV, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %3, align 4
  br label %181

177:                                              ; preds = %171, %130
  %178 = load i32, i32* @vt596_smba, align 4
  %179 = call i32 @release_region(i32 %178, i32 8)
  %180 = load i32, i32* %7, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %177, %174, %73, %65, %52, %40
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i64 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @acpi_check_region(i32, i32, i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32* @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_7__*) #1

declare dso_local i32 @pci_dev_put(i32*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
