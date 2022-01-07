; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_main.c_mthca_tune_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_main.c_mthca_tune_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, i32 }

@tune_pci = common dso_local global i32 0, align 4
@PCI_CAP_ID_PCIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Couldn't set PCI-X max read count, aborting.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MTHCA_FLAG_PCIE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"No PCI-X capability, not setting RBC.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Couldn't write PCI Express read request, aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"No PCI Express capability, not setting Max Read Request Size.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*)* @mthca_tune_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_tune_pci(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %4 = load i32, i32* @tune_pci, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

7:                                                ; preds = %1
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PCI_CAP_ID_PCIX, align 4
  %12 = call i64 @pci_find_capability(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %7
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pcix_get_max_mmrbc(i32 %20)
  %22 = call i64 @pcix_set_mmrbc(i32 %17, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %26 = call i32 @mthca_err(%struct.mthca_dev* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %71

29:                                               ; preds = %14
  br label %41

30:                                               ; preds = %7
  %31 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MTHCA_FLAG_PCIE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %39 = call i32 @mthca_info(%struct.mthca_dev* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %30
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %43 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @pci_is_pcie(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %49 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @pcie_set_readrq(i32 %50, i32 4096)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %55 = call i32 @mthca_err(%struct.mthca_dev* %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %71

58:                                               ; preds = %47
  br label %70

59:                                               ; preds = %41
  %60 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %61 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MTHCA_FLAG_PCIE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %68 = call i32 @mthca_info(%struct.mthca_dev* %67, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %59
  br label %70

70:                                               ; preds = %69, %58
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %53, %24, %6
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @pci_find_capability(i32, i32) #1

declare dso_local i64 @pcix_set_mmrbc(i32, i32) #1

declare dso_local i32 @pcix_get_max_mmrbc(i32) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*) #1

declare dso_local i32 @mthca_info(%struct.mthca_dev*, i8*) #1

declare dso_local i64 @pci_is_pcie(i32) #1

declare dso_local i64 @pcie_set_readrq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
