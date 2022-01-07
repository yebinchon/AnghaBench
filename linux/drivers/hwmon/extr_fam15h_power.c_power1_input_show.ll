; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fam15h_power.c_power1_input_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fam15h_power.c_power1_input_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fam15h_power_data = type { i32, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }

@REG_TDP_RUNNING_AVERAGE = common dso_local global i32 0, align 4
@REG_TDP_LIMIT3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @power1_input_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power1_input_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fam15h_power_data*, align 8
  %13 = alloca %struct.pci_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.fam15h_power_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.fam15h_power_data* %15, %struct.fam15h_power_data** %12, align 8
  %16 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %12, align 8
  %17 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %16, i32 0, i32 2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %13, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PCI_SLOT(i32 %24)
  %26 = call i32 @PCI_DEVFN(i32 %25, i32 5)
  %27 = load i32, i32* @REG_TDP_RUNNING_AVERAGE, align 4
  %28 = call i32 @pci_bus_read_config_dword(i32 %21, i32 %26, i32 %27, i32* %7)
  %29 = call i64 (...) @is_carrizo_or_later()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @sign_extend32(i32 %34, i32 27)
  store i32 %35, i32* %10, align 4
  br label %42

36:                                               ; preds = %3
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 4
  %39 = and i32 %38, 4194303
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @sign_extend32(i32 %40, i32 21)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 15
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PCI_SLOT(i32 %51)
  %53 = call i32 @PCI_DEVFN(i32 %52, i32 5)
  %54 = load i32, i32* @REG_TDP_LIMIT3, align 4
  %55 = call i32 @pci_bus_read_config_dword(i32 %48, i32 %53, i32 %54, i32* %7)
  %56 = call i64 (...) @is_carrizo_or_later()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, 16
  store i32 %60, i32* %8, align 4
  br label %65

61:                                               ; preds = %42
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 16
  %64 = and i32 %63, 8191
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %12, align 8
  %69 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* %9, align 4
  %74 = shl i32 %72, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %12, align 8
  %79 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = mul nsw i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = mul nsw i32 %83, 15625
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 10, %85
  %87 = ashr i32 %84, %86
  store i32 %87, i32* %11, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @sprintf(i8* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %89)
  ret i32 %90
}

declare dso_local %struct.fam15h_power_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pci_bus_read_config_dword(i32, i32, i32, i32*) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i64 @is_carrizo_or_later(...) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
