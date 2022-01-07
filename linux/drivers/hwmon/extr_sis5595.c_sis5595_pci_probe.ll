; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sis5595.c_sis5595_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sis5595.c_sis5595_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@blacklist = common dso_local global i32* null, align 8
@PCI_VENDOR_ID_SI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Looked for SIS5595 but found unsupported device %.4x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SIS5595_EXTENT = common dso_local global i32 0, align 4
@force_addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Forcing ISA address 0x%x\0A\00", align 1
@SIS5595_BASE_REG = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to read ISA address\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"Base address not set - upgrade BIOS or use force_addr=0xaddr\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to force ISA address\0A\00", align 1
@SIS5595_ENABLE_REG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to read enable register\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to enable HWM device\0A\00", align 1
@sis5595_driver = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to register sis5595 driver\0A\00", align 1
@s_bridge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @sis5595_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis5595_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load i32*, i32** @blacklist, align 8
  store i32* %10, i32** %8, align 8
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load i32, i32* @PCI_VENDOR_ID_SI, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_dev* @pci_get_device(i32 %16, i32 %18, i32* null)
  store %struct.pci_dev* %19, %struct.pci_dev** %9, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %21 = icmp ne %struct.pci_dev* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %29 = call i32 @pci_dev_put(%struct.pci_dev* %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %157

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %8, align 8
  br label %11

36:                                               ; preds = %11
  %37 = load i32, i32* @SIS5595_EXTENT, align 4
  %38 = sub nsw i32 %37, 1
  %39 = xor i32 %38, -1
  %40 = load i32, i32* @force_addr, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* @force_addr, align 4
  %42 = load i32, i32* @force_addr, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* @force_addr, align 4
  %48 = call i32 @dev_warn(i32* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = load i32, i32* @SIS5595_BASE_REG, align 4
  %51 = load i32, i32* @force_addr, align 4
  %52 = call i32 @pci_write_config_word(%struct.pci_dev* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %36
  %54 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = load i32, i32* @SIS5595_BASE_REG, align 4
  %57 = call i64 @pci_read_config_word(%struct.pci_dev* %55, i32 %56, i32* %6)
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %157

65:                                               ; preds = %53
  %66 = load i32, i32* @SIS5595_EXTENT, align 4
  %67 = sub nsw i32 %66, 1
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = call i32 (i32*, i8*, ...) @dev_err(i32* %75, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %157

79:                                               ; preds = %65
  %80 = load i32, i32* @force_addr, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @force_addr, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %157

92:                                               ; preds = %82, %79
  %93 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = load i32, i32* @SIS5595_ENABLE_REG, align 4
  %96 = call i64 @pci_read_config_byte(%struct.pci_dev* %94, i32 %95, i32* %7)
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %157

104:                                              ; preds = %92
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %105, 128
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %133, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = load i32, i32* @SIS5595_ENABLE_REG, align 4
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, 128
  %114 = call i64 @pci_write_config_byte(%struct.pci_dev* %110, i32 %111, i32 %113)
  %115 = icmp ne i64 %109, %114
  br i1 %115, label %126, label %116

116:                                              ; preds = %108
  %117 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = load i32, i32* @SIS5595_ENABLE_REG, align 4
  %120 = call i64 @pci_read_config_byte(%struct.pci_dev* %118, i32 %119, i32* %7)
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %7, align 4
  %124 = and i32 %123, 128
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %122, %116, %108
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 0
  %129 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i32, i32* @ENODEV, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %157

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %104
  %134 = call i64 @platform_driver_register(i32* @sis5595_driver)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %138 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %137, i32 0, i32 0
  %139 = call i32 @dev_dbg(i32* %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %154

140:                                              ; preds = %133
  %141 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %142 = call i32 @pci_dev_get(%struct.pci_dev* %141)
  store i32 %142, i32* @s_bridge, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i64 @sis5595_device_add(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %150

147:                                              ; preds = %140
  %148 = load i32, i32* @ENODEV, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %157

150:                                              ; preds = %146
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = call i32 @pci_dev_put(%struct.pci_dev* %151)
  %153 = call i32 @platform_driver_unregister(i32* @sis5595_driver)
  br label %154

154:                                              ; preds = %150, %136
  %155 = load i32, i32* @ENODEV, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %154, %147, %126, %98, %86, %73, %59, %22
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @platform_driver_register(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i64 @sis5595_device_add(i32) #1

declare dso_local i32 @platform_driver_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
