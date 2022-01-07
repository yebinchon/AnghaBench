; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali1563.c_ali1563_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ali1563.c_ali1563_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@ALI1563_SMBBA = common dso_local global i32 0, align 4
@ALI1563_SMB_IOSIZE = common dso_local global i32 0, align 4
@ali1563_smba = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ali1563_smba Uninitialized\0A\00", align 1
@ALI1563_SMB_HOSTEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Host Controller not enabled\0A\00", align 1
@ALI1563_SMB_IOEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"I/O space not enabled, trying manually\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"I/O space still not enabled, giving up\0A\00", align 1
@ali1563_pci_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Could not allocate I/O space at 0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Found ALi1563 SMBus at 0x%04x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @ali1563_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali1563_setup(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = load i32, i32* @ALI1563_SMBBA, align 4
  %7 = call i32 @pci_read_config_word(%struct.pci_dev* %5, i32 %6, i32* %4)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ALI1563_SMB_IOSIZE, align 4
  %10 = sub nsw i32 %9, 1
  %11 = xor i32 %10, -1
  %12 = and i32 %8, %11
  store i32 %12, i32* @ali1563_smba, align 4
  %13 = load i32, i32* @ali1563_smba, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = call i32 @dev_warn(i32* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %78

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ALI1563_SMB_HOSTEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %78

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ALI1563_SMB_IOEN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %28
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load i32, i32* @ALI1563_SMBBA, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ALI1563_SMB_IOEN, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @pci_write_config_word(%struct.pci_dev* %37, i32 %38, i32 %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = load i32, i32* @ALI1563_SMBBA, align 4
  %45 = call i32 @pci_read_config_word(%struct.pci_dev* %43, i32 %44, i32* %4)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @ALI1563_SMB_IOEN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %33
  %51 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %78

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i32, i32* @ali1563_smba, align 4
  %57 = load i32, i32* @ALI1563_SMB_IOSIZE, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ali1563_pci_driver, i32 0, i32 0), align 4
  %59 = call i64 @acpi_check_region(i32 %56, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %78

62:                                               ; preds = %55
  %63 = load i32, i32* @ali1563_smba, align 4
  %64 = load i32, i32* @ALI1563_SMB_IOSIZE, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ali1563_pci_driver, i32 0, i32 0), align 4
  %66 = call i32 @request_region(i32 %63, i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = load i32, i32* @ali1563_smba, align 4
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %78

73:                                               ; preds = %62
  %74 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load i32, i32* @ali1563_smba, align 4
  %77 = call i32 @dev_info(i32* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  store i32 0, i32* %2, align 4
  br label %81

78:                                               ; preds = %68, %61, %50, %24, %15
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @acpi_check_region(i32, i32, i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
