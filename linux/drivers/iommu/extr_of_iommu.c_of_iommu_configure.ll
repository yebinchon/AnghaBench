; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_of_iommu.c_of_iommu_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_of_iommu.c_of_iommu_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_ops = type opaque
%struct.device = type { i64 }
%struct.device_node = type { i32 }
%struct.iommu_fwspec = type { %struct.iommu_ops* }
%struct.of_pci_iommu_alias_info = type { %struct.device_node*, %struct.device* }
%struct.of_phandle_args = type { i32 }

@NO_IOMMU = common dso_local global i32 0, align 4
@of_pci_iommu_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"#iommu-cells\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Adding to IOMMU failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iommu_ops* @of_iommu_configure(%struct.device* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.iommu_ops*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.iommu_ops*, align 8
  %7 = alloca %struct.iommu_fwspec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.of_pci_iommu_alias_info, align 8
  %10 = alloca %struct.of_phandle_args, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.iommu_ops* null, %struct.iommu_ops** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %12)
  store %struct.iommu_fwspec* %13, %struct.iommu_fwspec** %7, align 8
  %14 = load i32, i32* @NO_IOMMU, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.iommu_ops* null, %struct.iommu_ops** %3, align 8
  br label %118

18:                                               ; preds = %2
  %19 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %7, align 8
  %20 = icmp ne %struct.iommu_fwspec* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %7, align 8
  %23 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %22, i32 0, i32 0
  %24 = load %struct.iommu_ops*, %struct.iommu_ops** %23, align 8
  %25 = icmp ne %struct.iommu_ops* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %7, align 8
  %28 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %27, i32 0, i32 0
  %29 = load %struct.iommu_ops*, %struct.iommu_ops** %28, align 8
  store %struct.iommu_ops* %29, %struct.iommu_ops** %3, align 8
  br label %118

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @iommu_fwspec_free(%struct.device* %31)
  br label %33

33:                                               ; preds = %30, %18
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i64 @dev_is_pci(%struct.device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.of_pci_iommu_alias_info, %struct.of_pci_iommu_alias_info* %9, i32 0, i32 0
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  store %struct.device_node* %39, %struct.device_node** %38, align 8
  %40 = getelementptr inbounds %struct.of_pci_iommu_alias_info, %struct.of_pci_iommu_alias_info* %9, i32 0, i32 1
  %41 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %41, %struct.device** %40, align 8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @to_pci_dev(%struct.device* %42)
  %44 = load i32, i32* @of_pci_iommu_init, align 4
  %45 = call i32 @pci_for_each_dma_alias(i32 %43, i32 %44, %struct.of_pci_iommu_alias_info* %9)
  store i32 %45, i32* %8, align 4
  br label %76

46:                                               ; preds = %33
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i64 @dev_is_fsl_mc(%struct.device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 @to_fsl_mc_device(%struct.device* %51)
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = call i32 @of_fsl_mc_iommu_init(i32 %52, %struct.device_node* %53)
  store i32 %54, i32* %8, align 4
  br label %75

55:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %73, %55
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @of_parse_phandle_with_args(%struct.device_node* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %58, %struct.of_phandle_args* %10)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @of_iommu_xlate(%struct.device* %63, %struct.of_phandle_args* %10)
  store i32 %64, i32* %8, align 4
  %65 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @of_node_put(i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %74

73:                                               ; preds = %62
  br label %56

74:                                               ; preds = %72, %56
  br label %75

75:                                               ; preds = %74, %50
  br label %76

76:                                               ; preds = %75, %37
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %80)
  store %struct.iommu_fwspec* %81, %struct.iommu_fwspec** %7, align 8
  %82 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %7, align 8
  %83 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %82, i32 0, i32 0
  %84 = load %struct.iommu_ops*, %struct.iommu_ops** %83, align 8
  store %struct.iommu_ops* %84, %struct.iommu_ops** %6, align 8
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %85
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call i32 @device_iommu_mapped(%struct.device* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = call i32 @iommu_probe_device(%struct.device* %98)
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %97, %93, %88, %85
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @EPROBE_DEFER, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %8, align 4
  %107 = call %struct.iommu_ops* @ERR_PTR(i32 %106)
  store %struct.iommu_ops* %107, %struct.iommu_ops** %6, align 8
  br label %116

108:                                              ; preds = %100
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @dev_dbg(%struct.device* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  store %struct.iommu_ops* null, %struct.iommu_ops** %6, align 8
  br label %115

115:                                              ; preds = %111, %108
  br label %116

116:                                              ; preds = %115, %105
  %117 = load %struct.iommu_ops*, %struct.iommu_ops** %6, align 8
  store %struct.iommu_ops* %117, %struct.iommu_ops** %3, align 8
  br label %118

118:                                              ; preds = %116, %26, %17
  %119 = load %struct.iommu_ops*, %struct.iommu_ops** %3, align 8
  ret %struct.iommu_ops* %119
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local i32 @iommu_fwspec_free(%struct.device*) #1

declare dso_local i64 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @pci_for_each_dma_alias(i32, i32, %struct.of_pci_iommu_alias_info*) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i64 @dev_is_fsl_mc(%struct.device*) #1

declare dso_local i32 @of_fsl_mc_iommu_init(i32, %struct.device_node*) #1

declare dso_local i32 @to_fsl_mc_device(%struct.device*) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @of_iommu_xlate(%struct.device*, %struct.of_phandle_args*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @device_iommu_mapped(%struct.device*) #1

declare dso_local i32 @iommu_probe_device(%struct.device*) #1

declare dso_local %struct.iommu_ops* @ERR_PTR(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
