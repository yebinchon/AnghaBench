; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_add_tco.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_add_tco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32, i32 }
%struct.resource = type { i32, i32, i8* }

@FEATURE_TCO_SPT = common dso_local global i32 0, align 4
@FEATURE_TCO_CNL = common dso_local global i32 0, align 4
@TCOBASE = common dso_local global i32 0, align 4
@TCOCTL = common dso_local global i32 0, align 4
@TCOCTL_EN = common dso_local global i32 0, align 4
@ICH_RES_IO_TCO = common dso_local global i64 0, align 8
@IORESOURCE_IO = common dso_local global i8* null, align 8
@ACPIBASE = common dso_local global i32 0, align 4
@ICH_RES_IO_SMI = common dso_local global i64 0, align 8
@ACPIBASE_SMI_OFF = common dso_local global i32 0, align 4
@ACPICTRL = common dso_local global i32 0, align 4
@ACPICTRL_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to create iTCO device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i801_priv*)* @i801_add_tco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i801_add_tco(%struct.i801_priv* %0) #0 {
  %2 = alloca %struct.i801_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca [3 x %struct.resource], align 16
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  store %struct.i801_priv* %0, %struct.i801_priv** %2, align 8
  %11 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %12 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %11, i32 0, i32 2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  %14 = call i64 (...) @acpi_has_watchdog()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %132

17:                                               ; preds = %1
  %18 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %19 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FEATURE_TCO_SPT, align 4
  %22 = load i32, i32* @FEATURE_TCO_CNL, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %132

27:                                               ; preds = %17
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = load i32, i32* @TCOBASE, align 4
  %30 = call i32 @pci_read_config_dword(%struct.pci_dev* %28, i32 %29, i32* %4)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %32 = load i32, i32* @TCOCTL, align 4
  %33 = call i32 @pci_read_config_dword(%struct.pci_dev* %31, i32 %32, i32* %5)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @TCOCTL_EN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %132

39:                                               ; preds = %27
  %40 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %8, i64 0, i64 0
  %41 = call i32 @memset(%struct.resource* %40, i32 0, i32 48)
  %42 = load i64, i64* @ICH_RES_IO_TCO, align 8
  %43 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %8, i64 0, i64 %42
  store %struct.resource* %43, %struct.resource** %9, align 8
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, -2
  %46 = load %struct.resource*, %struct.resource** %9, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.resource*, %struct.resource** %9, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 32
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.resource*, %struct.resource** %9, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i8*, i8** @IORESOURCE_IO, align 8
  %56 = load %struct.resource*, %struct.resource** %9, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PCI_SLOT(i32 %60)
  %62 = call i32 @PCI_DEVFN(i32 %61, i32 2)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @ACPIBASE, align 4
  %68 = call i32 @pci_bus_read_config_dword(i32 %65, i32 %66, i32 %67, i32* %3)
  %69 = load i64, i64* @ICH_RES_IO_SMI, align 8
  %70 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %8, i64 0, i64 %69
  store %struct.resource* %70, %struct.resource** %9, align 8
  %71 = load i32, i32* %3, align 4
  %72 = and i32 %71, -2
  %73 = load i32, i32* @ACPIBASE_SMI_OFF, align 4
  %74 = add nsw i32 %72, %73
  %75 = load %struct.resource*, %struct.resource** %9, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.resource*, %struct.resource** %9, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 3
  %81 = load %struct.resource*, %struct.resource** %9, align 8
  %82 = getelementptr inbounds %struct.resource, %struct.resource* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i8*, i8** @IORESOURCE_IO, align 8
  %84 = load %struct.resource*, %struct.resource** %9, align 8
  %85 = getelementptr inbounds %struct.resource, %struct.resource* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ACPICTRL, align 4
  %91 = call i32 @pci_bus_read_config_dword(i32 %88, i32 %89, i32 %90, i32* %6)
  %92 = load i32, i32* @ACPICTRL_EN, align 4
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @ACPICTRL, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @pci_bus_write_config_dword(i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %103 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @FEATURE_TCO_CNL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %39
  %109 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %110 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %111 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %8, i64 0, i64 0
  %112 = call i32 @i801_add_tco_cnl(%struct.i801_priv* %109, %struct.pci_dev* %110, %struct.resource* %111)
  %113 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %114 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %122

115:                                              ; preds = %39
  %116 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %117 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %118 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %8, i64 0, i64 0
  %119 = call i32 @i801_add_tco_spt(%struct.i801_priv* %116, %struct.pci_dev* %117, %struct.resource* %118)
  %120 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %121 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %115, %108
  %123 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %124 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @IS_ERR(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %130 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %129, i32 0, i32 0
  %131 = call i32 @dev_warn(i32* %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %132

132:                                              ; preds = %16, %26, %38, %128, %122
  ret void
}

declare dso_local i64 @acpi_has_watchdog(...) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @pci_bus_read_config_dword(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_bus_write_config_dword(i32, i32, i32, i32) #1

declare dso_local i32 @i801_add_tco_cnl(%struct.i801_priv*, %struct.pci_dev*, %struct.resource*) #1

declare dso_local i32 @i801_add_tco_spt(%struct.i801_priv*, %struct.pci_dev*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
