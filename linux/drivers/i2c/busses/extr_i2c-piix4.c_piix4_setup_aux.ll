; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_setup_aux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_setup_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Auxiliary SMBus controller not enabled\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Auxiliary SMBus base address uninitialized\0A\00", align 1
@SMBIOSIZE = common dso_local global i32 0, align 4
@piix4_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Auxiliary SMBus region 0x%x already in use!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Auxiliary SMBus Host Controller at 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*, i16)* @piix4_setup_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix4_setup_aux(%struct.pci_dev* %0, %struct.pci_device_id* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_device_id*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %6, align 8
  store i16 %2, i16* %7, align 2
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = load i16, i16* %7, align 2
  %11 = call i32 @pci_read_config_word(%struct.pci_dev* %9, i16 zeroext %10, i16* %8)
  %12 = load i16, i16* %8, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %65

22:                                               ; preds = %3
  %23 = load i16, i16* %8, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 65520
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %8, align 2
  %27 = load i16, i16* %8, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %65

36:                                               ; preds = %22
  %37 = load i16, i16* %8, align 2
  %38 = load i32, i32* @SMBIOSIZE, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @piix4_driver, i32 0, i32 0), align 4
  %40 = call i64 @acpi_check_region(i16 zeroext %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %65

45:                                               ; preds = %36
  %46 = load i16, i16* %8, align 2
  %47 = load i32, i32* @SMBIOSIZE, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @piix4_driver, i32 0, i32 0), align 4
  %49 = call i32 @request_region(i16 zeroext %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %45
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load i16, i16* %8, align 2
  %55 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %54)
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %65

58:                                               ; preds = %45
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load i16, i16* %8, align 2
  %62 = call i32 @dev_info(i32* %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %61)
  %63 = load i16, i16* %8, align 2
  %64 = zext i16 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %51, %42, %30, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i16 zeroext, i16*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @acpi_check_region(i16 zeroext, i32, i32) #1

declare dso_local i32 @request_region(i16 zeroext, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i16 zeroext) #1

declare dso_local i32 @dev_info(i32*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
