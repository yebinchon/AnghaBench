; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_pcie_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_pcie_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32 }

@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Can't find PCI Express capability!\0A\00", align 1
@QIB_HAS_INTX = common dso_local global i32 0, align 4
@PCI_IRQ_LEGACY = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"PCIe width %u (x%u HCA), performance reduced\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"PCIe,%uMHz,x%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_pcie_params(%struct.qib_devdata* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %13 = load i32, i32* @PCI_IRQ_MSI, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @pci_is_pcie(%struct.TYPE_4__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %22 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 1
  store i32 2500, i32* %26, align 4
  store i32 -1, i32* %9, align 4
  br label %133

27:                                               ; preds = %3
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @QIB_HAS_INTX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @PCI_IRQ_LEGACY, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  br label %49

48:                                               ; preds = %41, %38
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32 [ %47, %45 ], [ 1, %48 ]
  store i32 %50, i32* %10, align 4
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %52 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @pci_alloc_irq_vectors(%struct.TYPE_4__* %53, i32 1, i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %133

60:                                               ; preds = %49
  %61 = load i32*, i32** %6, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %65 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %64, i32 0, i32 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  br label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i32 [ 0, %70 ], [ %72, %71 ]
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %60
  %77 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %78 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %77, i32 0, i32 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %85 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %86 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %85, i32 0, i32 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @qib_cache_msi_info(%struct.qib_devdata* %84, i32 %89)
  br label %91

91:                                               ; preds = %83, %76
  %92 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %93 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %92, i32 0, i32 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %96 = call i32 @pcie_capability_read_word(%struct.TYPE_4__* %94, i32 %95, i32* %7)
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 15
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = ashr i32 %99, 4
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, 31
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %105 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %8, align 4
  switch i32 %106, label %113 [
    i32 1, label %107
    i32 2, label %110
  ]

107:                                              ; preds = %91
  %108 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %109 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %108, i32 0, i32 1
  store i32 2500, i32* %109, align 4
  br label %116

110:                                              ; preds = %91
  %111 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %112 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %111, i32 0, i32 1
  store i32 5000, i32* %112, align 4
  br label %116

113:                                              ; preds = %91
  %114 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %115 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %114, i32 0, i32 1
  store i32 2500, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %110, %107
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %124, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %123, %119, %116
  %129 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %130 = call i32 @qib_tune_pcie_caps(%struct.qib_devdata* %129)
  %131 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %132 = call i32 @qib_tune_pcie_coalesce(%struct.qib_devdata* %131)
  br label %133

133:                                              ; preds = %128, %59, %20
  %134 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %135 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %138 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %141 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @snprintf(i32 %136, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 %142)
  %144 = load i32, i32* %9, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %133
  %147 = load i32, i32* %9, align 4
  br label %149

148:                                              ; preds = %133
  br label %149

149:                                              ; preds = %148, %146
  %150 = phi i32 [ %147, %146 ], [ 0, %148 ]
  ret i32 %150
}

declare dso_local i32 @pci_is_pcie(%struct.TYPE_4__*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @qib_cache_msi_info(%struct.qib_devdata*, i32) #1

declare dso_local i32 @pcie_capability_read_word(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @qib_tune_pcie_caps(%struct.qib_devdata*) #1

declare dso_local i32 @qib_tune_pcie_coalesce(%struct.qib_devdata*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
