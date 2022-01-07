; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5k_amb.c_i5k_find_amb_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5k_amb.c_i5k_find_amb_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i5k_amb_data = type { i32, i8* }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@I5K_REG_AMB_BASE_ADDR = common dso_local global i32 0, align 4
@I5K_REG_AMB_LEN_ADDR = common dso_local global i32 0, align 4
@AMB_CONFIG_SIZE = common dso_local global i32 0, align 4
@MAX_AMBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"AMB region too small!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i5k_amb_data*, i64)* @i5k_find_amb_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5k_find_amb_registers(%struct.i5k_amb_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i5k_amb_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.i5k_amb_data* %0, %struct.i5k_amb_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.pci_dev* @pci_get_device(i32 %11, i64 %12, i32* null)
  store %struct.pci_dev* %13, %struct.pci_dev** %6, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %15 = icmp ne %struct.pci_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %55

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = load i32, i32* @I5K_REG_AMB_BASE_ADDR, align 4
  %22 = call i64 @pci_read_config_dword(%struct.pci_dev* %20, i32 %21, i8** %7)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %51

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %28 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %30 = load i32, i32* @I5K_REG_AMB_LEN_ADDR, align 4
  %31 = call i64 @pci_read_config_dword(%struct.pci_dev* %29, i32 %30, i8** %7)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %51

34:                                               ; preds = %25
  %35 = load i8*, i8** %7, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %38 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %4, align 8
  %40 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @AMB_CONFIG_SIZE, align 4
  %43 = load i32, i32* @MAX_AMBS, align 4
  %44 = mul nsw i32 %42, %43
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %51

50:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %46, %33, %24
  %52 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %53 = call i32 @pci_dev_put(%struct.pci_dev* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i64, i32*) #1

declare dso_local i64 @pci_read_config_dword(%struct.pci_dev*, i32, i8**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
