; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_save_pci_variables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_save_pci_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_1 = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2 = common dso_local global i32 0, align 4
@PCI_CFG_MSIX0 = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_TPH = common dso_local global i32 0, align 4
@PCIE_CFG_TPH2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to read from PCI config\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @save_pci_variables(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %6 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %9, i32 0, i32 9
  %11 = call i32 @pci_read_config_dword(i32 %7, i32 %8, i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %112

15:                                               ; preds = %1
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %17 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCI_BASE_ADDRESS_1, align 4
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %21 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %20, i32 0, i32 8
  %22 = call i32 @pci_read_config_dword(i32 %18, i32 %19, i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %112

26:                                               ; preds = %15
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %28 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PCI_ROM_ADDRESS, align 4
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %32 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %31, i32 0, i32 7
  %33 = call i32 @pci_read_config_dword(i32 %29, i32 %30, i32* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %112

37:                                               ; preds = %26
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %39 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PCI_COMMAND, align 4
  %42 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %43 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %42, i32 0, i32 6
  %44 = call i32 @pci_read_config_word(i32 %40, i32 %41, i32* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %112

48:                                               ; preds = %37
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %50 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %54 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %53, i32 0, i32 5
  %55 = call i32 @pcie_capability_read_word(i32 %51, i32 %52, i32* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %112

59:                                               ; preds = %48
  %60 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %61 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %64 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %65 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %64, i32 0, i32 4
  %66 = call i32 @pcie_capability_read_word(i32 %62, i32 %63, i32* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %112

70:                                               ; preds = %59
  %71 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %72 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %75 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %76 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %75, i32 0, i32 3
  %77 = call i32 @pcie_capability_read_word(i32 %73, i32 %74, i32* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %112

81:                                               ; preds = %70
  %82 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %83 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PCI_CFG_MSIX0, align 4
  %86 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %87 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %86, i32 0, i32 2
  %88 = call i32 @pci_read_config_dword(i32 %84, i32 %85, i32* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %112

92:                                               ; preds = %81
  %93 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %94 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PCI_EXT_CAP_ID_TPH, align 4
  %97 = call i64 @pci_find_ext_capability(i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %92
  %100 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %101 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PCIE_CFG_TPH2, align 4
  %104 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %105 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %104, i32 0, i32 0
  %106 = call i32 @pci_read_config_dword(i32 %102, i32 %103, i32* %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %112

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %92
  store i32 0, i32* %2, align 4
  br label %116

112:                                              ; preds = %109, %91, %80, %69, %58, %47, %36, %25, %14
  %113 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %114 = call i32 @dd_dev_err(%struct.hfi1_devdata* %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %111
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i64 @pci_find_ext_capability(i32, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
