; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-acpi.c_ide_get_dev_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-acpi.c_ide_get_dev_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device_info = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ENTER: pci %02x:%02x.%01x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no acpi handle for device\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"get_object_info for device failed\0A\00", align 1
@ACPI_VALID_ADR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"get_object_info for device has wrong  address: %llu, should be %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"for dev=0x%x.%x, addr=0x%llx, *handle=0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64*, i64*)* @ide_get_dev_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_get_dev_handle(%struct.device* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.acpi_device_info*, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.pci_dev* @to_pci_dev(%struct.device* %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %7, align 8
  store %struct.acpi_device_info* null, %struct.acpi_device_info** %14, align 8
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %15, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PCI_SLOT(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PCI_FUNC(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %33, 16
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %34, %35
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %11, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i8*, ...) @DEBPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i64 @ACPI_HANDLE(%struct.device* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %3
  %47 = call i32 (i8*, ...) @DEBPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %97

48:                                               ; preds = %3
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @acpi_get_object_info(i64 %49, %struct.acpi_device_info** %14)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i64 @ACPI_FAILURE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 (i8*, ...) @DEBPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %97

56:                                               ; preds = %48
  %57 = load %struct.acpi_device_info*, %struct.acpi_device_info** %14, align 8
  %58 = icmp ne %struct.acpi_device_info* %57, null
  br i1 %58, label %59, label %77

59:                                               ; preds = %56
  %60 = load %struct.acpi_device_info*, %struct.acpi_device_info** %14, align 8
  %61 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ACPI_VALID_ADR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load %struct.acpi_device_info*, %struct.acpi_device_info** %14, align 8
  %68 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i64, i64* %11, align 8
  %74 = load i64*, i64** %6, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64*, i64** %5, align 8
  store i64 %75, i64* %76, align 8
  br label %90

77:                                               ; preds = %66, %59, %56
  %78 = load %struct.acpi_device_info*, %struct.acpi_device_info** %14, align 8
  %79 = icmp ne %struct.acpi_device_info* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.acpi_device_info*, %struct.acpi_device_info** %14, align 8
  %82 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  br label %85

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i64 [ %83, %80 ], [ -1, %84 ]
  %87 = load i64, i64* %11, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 (i8*, ...) @DEBPRINT(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %86, i32 %88)
  br label %97

90:                                               ; preds = %72
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i64, i64* %11, align 8
  %94 = load i64*, i64** %5, align 8
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i8*, ...) @DEBPRINT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %92, i64 %93, i64 %95)
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %90, %85, %54, %46
  %98 = load %struct.acpi_device_info*, %struct.acpi_device_info** %14, align 8
  %99 = call i32 @kfree(%struct.acpi_device_info* %98)
  %100 = load i32, i32* %15, align 4
  ret i32 %100
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @DEBPRINT(i8*, ...) #1

declare dso_local i64 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @acpi_get_object_info(i64, %struct.acpi_device_info**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @kfree(%struct.acpi_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
