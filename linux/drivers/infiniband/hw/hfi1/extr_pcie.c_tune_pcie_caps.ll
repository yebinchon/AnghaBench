; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_tune_pcie_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_tune_pcie_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_EXT_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Enabling PCIe extended tags\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to write to PCI config\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Parent not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Parent not root\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Parent is not PCI Express capable\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"PCI device is not PCI Express capable\0A\00", align 1
@hfi1_pcie_caps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tune_pcie_caps(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %16 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %17 = call i32 @pcie_capability_read_word(%struct.pci_dev* %15, i32 %16, i32* %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @PCI_EXP_DEVCTL_EXT_TAG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %20
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %27 = call i32 @dd_dev_info(%struct.hfi1_devdata* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @PCI_EXP_DEVCTL_EXT_TAG, align 4
  %29 = load i32, i32* %11, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %31, i32 0, i32 0
  %33 = load %struct.pci_dev*, %struct.pci_dev** %32, align 8
  %34 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @pcie_capability_write_word(%struct.pci_dev* %33, i32 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %41 = call i32 @dd_dev_info(%struct.hfi1_devdata* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %25
  br label %43

43:                                               ; preds = %42, %20, %1
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %45 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %44, i32 0, i32 0
  %46 = load %struct.pci_dev*, %struct.pci_dev** %45, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.pci_dev*, %struct.pci_dev** %49, align 8
  store %struct.pci_dev* %50, %struct.pci_dev** %3, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %52 = icmp ne %struct.pci_dev* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %55 = call i32 @dd_dev_info(%struct.hfi1_devdata* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %173

56:                                               ; preds = %43
  %57 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = call i32 @pci_is_root_bus(%struct.TYPE_2__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %64 = call i32 @dd_dev_info(%struct.hfi1_devdata* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %173

65:                                               ; preds = %56
  %66 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %67 = call i32 @pci_is_pcie(%struct.pci_dev* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %71 = call i32 @dd_dev_info(%struct.hfi1_devdata* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %173

72:                                               ; preds = %65
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %74 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %73, i32 0, i32 0
  %75 = load %struct.pci_dev*, %struct.pci_dev** %74, align 8
  %76 = call i32 @pci_is_pcie(%struct.pci_dev* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %80 = call i32 @dd_dev_info(%struct.hfi1_devdata* %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %173

81:                                               ; preds = %72
  %82 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %4, align 4
  %85 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %86 = call i32 @pcie_get_mps(%struct.pci_dev* %85)
  %87 = call i32 @ffs(i32 %86)
  %88 = sub nsw i32 %87, 8
  store i32 %88, i32* %5, align 4
  %89 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %90 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %89, i32 0, i32 0
  %91 = load %struct.pci_dev*, %struct.pci_dev** %90, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %6, align 4
  %94 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %95 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %94, i32 0, i32 0
  %96 = load %struct.pci_dev*, %struct.pci_dev** %95, align 8
  %97 = call i32 @pcie_get_mps(%struct.pci_dev* %96)
  %98 = call i32 @ffs(i32 %97)
  %99 = sub nsw i32 %98, 8
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %81
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %81
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @hfi1_pcie_caps, align 4
  %108 = and i32 %107, 7
  %109 = icmp sgt i32 %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* @hfi1_pcie_caps, align 4
  %112 = and i32 %111, 7
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %5, align 4
  %119 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = shl i32 128, %120
  %122 = call i32 @pcie_set_mps(%struct.pci_dev* %119, i32 %121)
  br label %123

123:                                              ; preds = %117, %113
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %7, align 4
  %129 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %130 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %129, i32 0, i32 0
  %131 = load %struct.pci_dev*, %struct.pci_dev** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = shl i32 128, %132
  %134 = call i32 @pcie_set_mps(%struct.pci_dev* %131, i32 %133)
  br label %135

135:                                              ; preds = %127, %123
  store i32 5, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @hfi1_pcie_caps, align 4
  %138 = ashr i32 %137, 4
  %139 = and i32 %138, 7
  %140 = icmp sgt i32 %136, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load i32, i32* @hfi1_pcie_caps, align 4
  %143 = ashr i32 %142, 4
  %144 = and i32 %143, 7
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %141, %135
  %146 = load i32, i32* %10, align 4
  %147 = shl i32 128, %146
  store i32 %147, i32* %10, align 4
  %148 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %149 = call i32 @pcie_get_readrq(%struct.pci_dev* %148)
  store i32 %149, i32* %8, align 4
  %150 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %151 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %150, i32 0, i32 0
  %152 = load %struct.pci_dev*, %struct.pci_dev** %151, align 8
  %153 = call i32 @pcie_get_readrq(%struct.pci_dev* %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %145
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %8, align 4
  %159 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @pcie_set_readrq(%struct.pci_dev* %159, i32 %160)
  br label %162

162:                                              ; preds = %157, %145
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %9, align 4
  %168 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %169 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %168, i32 0, i32 0
  %170 = load %struct.pci_dev*, %struct.pci_dev** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @pcie_set_readrq(%struct.pci_dev* %170, i32 %171)
  br label %173

173:                                              ; preds = %53, %62, %69, %78, %166, %162
  ret void
}

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @pcie_capability_write_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_is_root_bus(%struct.TYPE_2__*) #1

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
