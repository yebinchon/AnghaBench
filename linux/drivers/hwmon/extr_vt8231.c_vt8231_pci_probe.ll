; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_vt8231_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_vt8231_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@force_addr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Forcing ISA address 0x%x\0A\00", align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8
@VT8231_BASE_REG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@VT8231_EXTENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"base address not set - upgrade BIOS or use force_addr=0xaddr\0A\00", align 1
@VT8231_ENABLE_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"enabling sensors\0A\00", align 1
@vt8231_driver = common dso_local global i32 0, align 4
@s_bridge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @vt8231_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8231_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @force_addr, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load i32, i32* @force_addr, align 4
  %12 = and i32 %11, 65280
  store i32 %12, i32* %6, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i32*, i8*, ...) @dev_warn(i32* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load i32, i32* @VT8231_BASE_REG, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, 1
  %22 = call i64 @pci_write_config_word(%struct.pci_dev* %18, i32 %19, i32 %21)
  %23 = icmp ne i64 %17, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %10
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %98

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load i32, i32* @VT8231_BASE_REG, align 4
  %32 = call i64 @pci_read_config_word(%struct.pci_dev* %30, i32 %31, i32* %7)
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %98

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @VT8231_EXTENT, align 4
  %40 = sub nsw i32 %39, 1
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %98

51:                                               ; preds = %37
  %52 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = load i32, i32* @VT8231_ENABLE_REG, align 4
  %55 = call i64 @pci_read_config_word(%struct.pci_dev* %53, i32 %54, i32* %7)
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %98

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %60
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_warn(i32* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = load i32, i32* @VT8231_ENABLE_REG, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, 1
  %73 = call i64 @pci_write_config_word(%struct.pci_dev* %69, i32 %70, i32 %72)
  %74 = icmp ne i64 %68, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %98

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %60
  %80 = call i64 @platform_driver_register(i32* @vt8231_driver)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %95

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @vt8231_device_add(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %93

88:                                               ; preds = %83
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = call i32 @pci_dev_get(%struct.pci_dev* %89)
  store i32 %90, i32* @s_bridge, align 4
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %98

93:                                               ; preds = %87
  %94 = call i32 @platform_driver_unregister(i32* @vt8231_driver)
  br label %95

95:                                               ; preds = %93, %82
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %88, %75, %57, %45, %34, %24
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i64 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @platform_driver_register(i32*) #1

declare dso_local i64 @vt8231_device_add(i32) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @platform_driver_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
