; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fam15h_power.c_fam15h_power_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fam15h_power.c_fam15h_power_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.fam15h_power_data = type { i32, i32, i32, i32, i32, i32 }

@REG_PROCESSOR_TDP = common dso_local global i32 0, align 4
@REG_TDP_LIMIT3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Bogus value for ProcessorPwrWatts (processor_pwr_watts>=%u)\0A\00", align 1
@X86_FEATURE_ACC_POWER = common dso_local global i32 0, align 4
@MSR_F15H_CU_MAX_PWR_ACCUMULATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Failed to read max compute unit power accumulator MSR\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.fam15h_power_data*)* @fam15h_power_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fam15h_power_init_data(%struct.pci_dev* %0, %struct.fam15h_power_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.fam15h_power_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.fam15h_power_data* %1, %struct.fam15h_power_data** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @REG_PROCESSOR_TDP, align 4
  %11 = call i32 @pci_read_config_dword(%struct.pci_dev* %9, i32 %10, i32* %6)
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 16
  %14 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %5, align 8
  %15 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 65535
  store i32 %17, i32* %7, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PCI_SLOT(i32 %23)
  %25 = call i32 @PCI_DEVFN(i32 %24, i32 5)
  %26 = load i32, i32* @REG_TDP_LIMIT3, align 4
  %27 = call i32 @pci_bus_read_config_dword(i32 %20, i32 %25, i32 %26, i32* %6)
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 1023
  %30 = shl i32 %29, 6
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 10
  %33 = and i32 %32, 63
  %34 = or i32 %30, %33
  %35 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %5, align 8
  %36 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %5, align 8
  %38 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 16
  %44 = icmp sge i32 %43, 256
  br i1 %44, label %45, label %51

45:                                               ; preds = %2
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, 16
  %50 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %2
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %52, 15625
  %54 = ashr i32 %53, 10
  %55 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %5, align 8
  %56 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %5, align 8
  %59 = call i32 @fam15h_power_init_attrs(%struct.pci_dev* %57, %struct.fam15h_power_data* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %88

64:                                               ; preds = %51
  %65 = load i32, i32* @X86_FEATURE_ACC_POWER, align 4
  %66 = call i32 @boot_cpu_has(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %88

69:                                               ; preds = %64
  %70 = call i32 @cpuid_ecx(i32 -2147483641)
  %71 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %5, align 8
  %72 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @MSR_F15H_CU_MAX_PWR_ACCUMULATOR, align 4
  %74 = call i64 @rdmsrl_safe(i32 %73, i32* %7)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %88

80:                                               ; preds = %69
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %5, align 8
  %83 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %5, align 8
  %85 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %84, i32 0, i32 4
  store i32 10, i32* %85, align 4
  %86 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %5, align 8
  %87 = call i32 @read_registers(%struct.fam15h_power_data* %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %80, %76, %68, %62
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_bus_read_config_dword(i32, i32, i32, i32*) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @fam15h_power_init_attrs(%struct.pci_dev*, %struct.fam15h_power_data*) #1

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @cpuid_ecx(i32) #1

declare dso_local i64 @rdmsrl_safe(i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @read_registers(%struct.fam15h_power_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
