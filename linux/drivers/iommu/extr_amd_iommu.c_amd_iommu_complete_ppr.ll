; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_complete_ppr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_complete_ppr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.pci_dev = type { i32 }
%struct.iommu_dev_data = type { i64, i32 }
%struct.iommu_cmd = type { i32 }

@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_iommu_complete_ppr(%struct.pci_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iommu_dev_data*, align 8
  %10 = alloca %struct.amd_iommu*, align 8
  %11 = alloca %struct.iommu_cmd, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = call %struct.iommu_dev_data* @get_dev_data(i32* %13)
  store %struct.iommu_dev_data* %14, %struct.iommu_dev_data** %9, align 8
  %15 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %16 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %9, align 8
  %17 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %15, i64 %18
  %20 = load %struct.amd_iommu*, %struct.amd_iommu** %19, align 8
  store %struct.amd_iommu* %20, %struct.amd_iommu** %10, align 8
  %21 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %9, align 8
  %22 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %9, align 8
  %28 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @build_complete_ppr(%struct.iommu_cmd* %11, i64 %23, i32 %24, i32 %25, i32 %26, i32 %29)
  %31 = load %struct.amd_iommu*, %struct.amd_iommu** %10, align 8
  %32 = call i32 @iommu_queue_command(%struct.amd_iommu* %31, %struct.iommu_cmd* %11)
  ret i32 %32
}

declare dso_local %struct.iommu_dev_data* @get_dev_data(i32*) #1

declare dso_local i32 @build_complete_ppr(%struct.iommu_cmd*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @iommu_queue_command(%struct.amd_iommu*, %struct.iommu_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
