; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_tune_pcie_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_tune_pcie_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@qib_pcie_coalesce = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Parent not root\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_tune_pcie_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_tune_pcie_coalesce(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %8 = load i32, i32* @qib_pcie_coalesce, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %96

11:                                               ; preds = %1
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %3, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %11
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @qib_devinfo(%struct.TYPE_6__* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %96

30:                                               ; preds = %11
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = call i32 @pci_is_pcie(%struct.pci_dev* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %96

35:                                               ; preds = %30
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 32902
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %96

41:                                               ; preds = %35
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp sge i32 %45, 9698
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = icmp sle i32 %48, 9722
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp sle i32 %53, 178
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1024, i32* %6, align 4
  br label %57

56:                                               ; preds = %50
  store i32 7168, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %55
  store i32 50338816, i32* %5, align 4
  br label %83

58:                                               ; preds = %47, %41
  %59 = load i32, i32* %4, align 4
  %60 = icmp sge i32 %59, 26082
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = icmp sle i32 %62, 26106
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 1024, i32* %6, align 4
  store i32 50338816, i32* %5, align 4
  br label %82

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %4, align 4
  %67 = icmp sge i32 %66, 16417
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = icmp sle i32 %69, 16430
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 7168, i32* %6, align 4
  store i32 7168, i32* %5, align 4
  br label %81

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %4, align 4
  %74 = icmp sge i32 %73, 13828
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = icmp sle i32 %76, 13834
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 7168, i32* %6, align 4
  store i32 50338816, i32* %5, align 4
  br label %80

79:                                               ; preds = %75, %72
  br label %96

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80, %71
  br label %82

82:                                               ; preds = %81, %64
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %85 = call i32 @pci_read_config_dword(%struct.pci_dev* %84, i32 72, i32* %7)
  %86 = load i32, i32* %5, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @pci_write_config_dword(%struct.pci_dev* %93, i32 72, i32 %94)
  br label %96

96:                                               ; preds = %83, %79, %40, %34, %25, %10
  ret void
}

declare dso_local i32 @qib_devinfo(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
