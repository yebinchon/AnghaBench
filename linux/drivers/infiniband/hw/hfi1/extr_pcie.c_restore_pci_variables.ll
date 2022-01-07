; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_restore_pci_variables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_restore_pci_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_1 = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2 = common dso_local global i32 0, align 4
@PCI_CFG_MSIX0 = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_TPH = common dso_local global i32 0, align 4
@PCIE_CFG_TPH2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to write to PCI config\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restore_pci_variables(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %6 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCI_COMMAND, align 4
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pci_write_config_word(i32 %7, i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %121

16:                                               ; preds = %1
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %22 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pci_write_config_dword(i32 %19, i32 %20, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %121

28:                                               ; preds = %16
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %30 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PCI_BASE_ADDRESS_1, align 4
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %34 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pci_write_config_dword(i32 %31, i32 %32, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %121

40:                                               ; preds = %28
  %41 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %42 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PCI_ROM_ADDRESS, align 4
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %46 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pci_write_config_dword(i32 %43, i32 %44, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %121

52:                                               ; preds = %40
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %54 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %58 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pcie_capability_write_word(i32 %55, i32 %56, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %121

64:                                               ; preds = %52
  %65 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %66 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %69 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %70 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pcie_capability_write_word(i32 %67, i32 %68, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %121

76:                                               ; preds = %64
  %77 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %78 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %81 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %82 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pcie_capability_write_word(i32 %79, i32 %80, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %121

88:                                               ; preds = %76
  %89 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %90 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PCI_CFG_MSIX0, align 4
  %93 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %94 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pci_write_config_dword(i32 %91, i32 %92, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %121

100:                                              ; preds = %88
  %101 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %102 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @PCI_EXT_CAP_ID_TPH, align 4
  %105 = call i64 @pci_find_ext_capability(i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %100
  %108 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %109 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PCIE_CFG_TPH2, align 4
  %112 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %113 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @pci_write_config_dword(i32 %110, i32 %111, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %121

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %100
  store i32 0, i32* %2, align 4
  br label %125

121:                                              ; preds = %118, %99, %87, %75, %63, %51, %39, %27, %15
  %122 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %123 = call i32 @dd_dev_err(%struct.hfi1_devdata* %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %120
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @pcie_capability_write_word(i32, i32, i32) #1

declare dso_local i64 @pci_find_ext_capability(i32, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
