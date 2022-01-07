; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_device_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.amd_iommu_device_info = type { i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_ATS = common dso_local global i32 0, align 4
@AMD_IOMMU_DEVICE_FLAG_ATS_SUP = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_PRI = common dso_local global i32 0, align 4
@AMD_IOMMU_DEVICE_FLAG_PRI_SUP = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_PASID = common dso_local global i32 0, align 4
@amd_iommu_max_glx_val = common dso_local global i32 0, align 4
@AMD_IOMMU_DEVICE_FLAG_PASID_SUP = common dso_local global i32 0, align 4
@PCI_PASID_CAP_EXEC = common dso_local global i32 0, align 4
@AMD_IOMMU_DEVICE_FLAG_EXEC_SUP = common dso_local global i32 0, align 4
@PCI_PASID_CAP_PRIV = common dso_local global i32 0, align 4
@AMD_IOMMU_DEVICE_FLAG_PRIV_SUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_iommu_device_info(%struct.pci_dev* %0, %struct.amd_iommu_device_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.amd_iommu_device_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.amd_iommu_device_info* %1, %struct.amd_iommu_device_info** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = icmp eq %struct.pci_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.amd_iommu_device_info*, %struct.amd_iommu_device_info** %5, align 8
  %13 = icmp eq %struct.amd_iommu_device_info* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %103

17:                                               ; preds = %11
  %18 = call i32 (...) @amd_iommu_v2_supported()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %103

23:                                               ; preds = %17
  %24 = load %struct.amd_iommu_device_info*, %struct.amd_iommu_device_info** %5, align 8
  %25 = call i32 @memset(%struct.amd_iommu_device_info* %24, i32 0, i32 16)
  %26 = call i32 (...) @pci_ats_disabled()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i32, i32* @PCI_EXT_CAP_ID_ATS, align 4
  %31 = call i32 @pci_find_ext_capability(%struct.pci_dev* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* @AMD_IOMMU_DEVICE_FLAG_ATS_SUP, align 4
  %36 = load %struct.amd_iommu_device_info*, %struct.amd_iommu_device_info** %5, align 8
  %37 = getelementptr inbounds %struct.amd_iommu_device_info, %struct.amd_iommu_device_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* @PCI_EXT_CAP_ID_PRI, align 4
  %44 = call i32 @pci_find_ext_capability(%struct.pci_dev* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* @AMD_IOMMU_DEVICE_FLAG_PRI_SUP, align 4
  %49 = load %struct.amd_iommu_device_info*, %struct.amd_iommu_device_info** %5, align 8
  %50 = getelementptr inbounds %struct.amd_iommu_device_info, %struct.amd_iommu_device_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = load i32, i32* @PCI_EXT_CAP_ID_PASID, align 4
  %56 = call i32 @pci_find_ext_capability(%struct.pci_dev* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %102

59:                                               ; preds = %53
  %60 = load i32, i32* @amd_iommu_max_glx_val, align 4
  %61 = add nsw i32 %60, 1
  %62 = mul nsw i32 9, %61
  %63 = shl i32 1, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i8* @min(i32 %64, i32 1048576)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @AMD_IOMMU_DEVICE_FLAG_PASID_SUP, align 4
  %68 = load %struct.amd_iommu_device_info*, %struct.amd_iommu_device_info** %5, align 8
  %69 = getelementptr inbounds %struct.amd_iommu_device_info, %struct.amd_iommu_device_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = call i32 @pci_max_pasids(%struct.pci_dev* %72)
  %74 = load i32, i32* %6, align 4
  %75 = call i8* @min(i32 %73, i32 %74)
  %76 = load %struct.amd_iommu_device_info*, %struct.amd_iommu_device_info** %5, align 8
  %77 = getelementptr inbounds %struct.amd_iommu_device_info, %struct.amd_iommu_device_info* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = call i32 @pci_pasid_features(%struct.pci_dev* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @PCI_PASID_CAP_EXEC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %59
  %85 = load i32, i32* @AMD_IOMMU_DEVICE_FLAG_EXEC_SUP, align 4
  %86 = load %struct.amd_iommu_device_info*, %struct.amd_iommu_device_info** %5, align 8
  %87 = getelementptr inbounds %struct.amd_iommu_device_info, %struct.amd_iommu_device_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %59
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @PCI_PASID_CAP_PRIV, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @AMD_IOMMU_DEVICE_FLAG_PRIV_SUP, align 4
  %97 = load %struct.amd_iommu_device_info*, %struct.amd_iommu_device_info** %5, align 8
  %98 = getelementptr inbounds %struct.amd_iommu_device_info, %struct.amd_iommu_device_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %90
  br label %102

102:                                              ; preds = %101, %53
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %20, %14
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @amd_iommu_v2_supported(...) #1

declare dso_local i32 @memset(%struct.amd_iommu_device_info*, i32, i32) #1

declare dso_local i32 @pci_ats_disabled(...) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @pci_max_pasids(%struct.pci_dev*) #1

declare dso_local i32 @pci_pasid_features(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
