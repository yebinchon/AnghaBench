; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_tune_pcie_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_tune_pcie_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@.str = private unnamed_addr constant [17 x i8] c"Parent not root\0A\00", align 1
@qib_pcie_caps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_tune_pcie_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_tune_pcie_caps(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %3, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i32 @pci_is_root_bus(%struct.TYPE_2__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %25 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %24, i32 0, i32 0
  %26 = load %struct.pci_dev*, %struct.pci_dev** %25, align 8
  %27 = call i32 @qib_devinfo(%struct.pci_dev* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %131

28:                                               ; preds = %1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = call i32 @pci_is_pcie(%struct.pci_dev* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 0
  %35 = load %struct.pci_dev*, %struct.pci_dev** %34, align 8
  %36 = call i32 @pci_is_pcie(%struct.pci_dev* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32, %28
  br label %131

39:                                               ; preds = %32
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %4, align 4
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = call i32 @pcie_get_mps(%struct.pci_dev* %43)
  %45 = call i32 @ffs(i32 %44)
  %46 = sub nsw i32 %45, 8
  store i32 %46, i32* %5, align 4
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %48 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %47, i32 0, i32 0
  %49 = load %struct.pci_dev*, %struct.pci_dev** %48, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %6, align 4
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %53 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %52, i32 0, i32 0
  %54 = load %struct.pci_dev*, %struct.pci_dev** %53, align 8
  %55 = call i32 @pcie_get_mps(%struct.pci_dev* %54)
  %56 = call i32 @ffs(i32 %55)
  %57 = sub nsw i32 %56, 8
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %39
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %39
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @qib_pcie_caps, align 4
  %66 = and i32 %65, 7
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @qib_pcie_caps, align 4
  %70 = and i32 %69, 7
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %5, align 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = shl i32 128, %78
  %80 = call i32 @pcie_set_mps(%struct.pci_dev* %77, i32 %79)
  br label %81

81:                                               ; preds = %75, %71
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %7, align 4
  %87 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %88 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %87, i32 0, i32 0
  %89 = load %struct.pci_dev*, %struct.pci_dev** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = shl i32 128, %90
  %92 = call i32 @pcie_set_mps(%struct.pci_dev* %89, i32 %91)
  br label %93

93:                                               ; preds = %85, %81
  store i32 5, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @qib_pcie_caps, align 4
  %96 = ashr i32 %95, 4
  %97 = and i32 %96, 7
  %98 = icmp sgt i32 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @qib_pcie_caps, align 4
  %101 = ashr i32 %100, 4
  %102 = and i32 %101, 7
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %99, %93
  %104 = load i32, i32* %10, align 4
  %105 = shl i32 128, %104
  store i32 %105, i32* %10, align 4
  %106 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %107 = call i32 @pcie_get_readrq(%struct.pci_dev* %106)
  store i32 %107, i32* %8, align 4
  %108 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %109 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %108, i32 0, i32 0
  %110 = load %struct.pci_dev*, %struct.pci_dev** %109, align 8
  %111 = call i32 @pcie_get_readrq(%struct.pci_dev* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %103
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %8, align 4
  %117 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @pcie_set_readrq(%struct.pci_dev* %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %103
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %9, align 4
  %126 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %127 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %126, i32 0, i32 0
  %128 = load %struct.pci_dev*, %struct.pci_dev** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @pcie_set_readrq(%struct.pci_dev* %128, i32 %129)
  br label %131

131:                                              ; preds = %23, %38, %124, %120
  ret void
}

declare dso_local i32 @pci_is_root_bus(%struct.TYPE_2__*) #1

declare dso_local i32 @qib_devinfo(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @pcie_get_mps(%struct.pci_dev*) #1

declare dso_local i32 @pcie_set_mps(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcie_get_readrq(%struct.pci_dev*) #1

declare dso_local i32 @pcie_set_readrq(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
