; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_pcie_speeds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_pcie_speeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Can't find PCI Express capability!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to read from PCI config\0A\00", align 1
@PCI_EXP_LNKCAP_SLS = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_SLS_8_0GB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"This HFI is not Gen3 capable, max speed 0x%x, need 0x3\0A\00", align 1
@PCIE_SPEED_8_0GT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Parent PCIe bridge does not support Gen3\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_speeds(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %8 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %15 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = call i32 @pci_is_pcie(%struct.TYPE_5__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %21 = call i32 @dd_dev_err(%struct.hfi1_devdata* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %78

24:                                               ; preds = %1
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %26 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %28 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %31 = call i32 @pcie_capability_read_dword(%struct.TYPE_5__* %29, i32 %30, i32* %4)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %36 = call i32 @dd_dev_err(%struct.hfi1_devdata* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %78

38:                                               ; preds = %24
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @PCI_EXP_LNKCAP_SLS_8_0GB, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %48 = and i32 %46, %47
  %49 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_info(%struct.hfi1_devdata* %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %51 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %44, %38
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = icmp ne %struct.pci_dev* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %57 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCIE_SPEED_8_0GT, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %67 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_info(%struct.hfi1_devdata* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %69 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %65, %55, %52
  %71 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %72 = call i32 @update_lbus_info(%struct.hfi1_devdata* %71)
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %74 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %75 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_info(%struct.hfi1_devdata* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %70, %34, %19
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @pci_is_pcie(%struct.TYPE_5__*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @pcie_capability_read_dword(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, ...) #1

declare dso_local i32 @update_lbus_info(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
