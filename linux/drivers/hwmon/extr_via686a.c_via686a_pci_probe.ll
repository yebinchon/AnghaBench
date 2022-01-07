; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_via686a.c_via686a_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_via686a.c_via686a_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@force_addr = common dso_local global i32 0, align 4
@VIA686A_EXTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Forcing ISA address 0x%x\0A\00", align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8
@VIA686A_BASE_REG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"base address not set - upgrade BIOS or use force_addr=0xaddr\0A\00", align 1
@VIA686A_ENABLE_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Sensors disabled, enable with force_addr=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Enabling sensors\0A\00", align 1
@via686a_driver = common dso_local global i32 0, align 4
@s_bridge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @via686a_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via686a_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @force_addr, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load i32, i32* @force_addr, align 4
  %12 = load i32, i32* @VIA686A_EXTENT, align 4
  %13 = sub nsw i32 %12, 1
  %14 = xor i32 %13, -1
  %15 = and i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i32*, i8*, ...) @dev_warn(i32* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = load i32, i32* @VIA686A_BASE_REG, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, 1
  %25 = call i64 @pci_write_config_word(%struct.pci_dev* %21, i32 %22, i32 %24)
  %26 = icmp ne i64 %20, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %10
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %111

30:                                               ; preds = %10
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load i32, i32* @VIA686A_BASE_REG, align 4
  %35 = call i64 @pci_read_config_word(%struct.pci_dev* %33, i32 %34, i32* %7)
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %111

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @VIA686A_EXTENT, align 4
  %43 = sub nsw i32 %42, 1
  %44 = xor i32 %43, -1
  %45 = and i32 %41, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %111

54:                                               ; preds = %40
  %55 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = load i32, i32* @VIA686A_ENABLE_REG, align 4
  %58 = call i64 @pci_read_config_word(%struct.pci_dev* %56, i32 %57, i32* %7)
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %111

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %92, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @force_addr, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i32*, i8*, ...) @dev_warn(i32* %72, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %111

77:                                               ; preds = %67
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = call i32 (i32*, i8*, ...) @dev_warn(i32* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load i32, i32* @VIA686A_ENABLE_REG, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, 1
  %86 = call i64 @pci_write_config_word(%struct.pci_dev* %82, i32 %83, i32 %85)
  %87 = icmp ne i64 %81, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %111

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %63
  %93 = call i64 @platform_driver_register(i32* @via686a_driver)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %108

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  %98 = call i64 @via686a_device_add(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %106

101:                                              ; preds = %96
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = call i32 @pci_dev_get(%struct.pci_dev* %102)
  store i32 %103, i32* @s_bridge, align 4
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %111

106:                                              ; preds = %100
  %107 = call i32 @platform_driver_unregister(i32* @via686a_driver)
  br label %108

108:                                              ; preds = %106, %95
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %108, %101, %88, %70, %60, %48, %37, %27
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i64 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @platform_driver_register(i32*) #1

declare dso_local i64 @via686a_device_add(i32) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @platform_driver_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
