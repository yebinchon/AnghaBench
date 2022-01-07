; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_pci_device_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_pci_device_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_group = type { i32 }
%struct.device = type { i32 }
%struct.pci_dev = type { i32, %struct.pci_bus* }
%struct.pci_bus = type { %struct.pci_dev*, %struct.pci_bus* }
%struct.group_for_pci_data = type { %struct.pci_dev*, %struct.iommu_group* }

@EINVAL = common dso_local global i32 0, align 4
@get_pci_alias_or_group = common dso_local global i32 0, align 4
@REQ_ACS_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iommu_group* @pci_device_group(%struct.device* %0) #0 {
  %2 = alloca %struct.iommu_group*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.group_for_pci_data, align 8
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca %struct.iommu_group*, align 8
  %8 = alloca [4 x i32], align 16
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.pci_dev* @to_pci_dev(%struct.device* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  store %struct.iommu_group* null, %struct.iommu_group** %7, align 8
  %11 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 @dev_is_pci(%struct.device* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.iommu_group* @ERR_PTR(i32 %21)
  store %struct.iommu_group* %22, %struct.iommu_group** %2, align 8
  br label %92

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = load i32, i32* @get_pci_alias_or_group, align 4
  %26 = call i64 @pci_for_each_dma_alias(%struct.pci_dev* %24, i32 %25, %struct.group_for_pci_data* %5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.group_for_pci_data, %struct.group_for_pci_data* %5, i32 0, i32 1
  %30 = load %struct.iommu_group*, %struct.iommu_group** %29, align 8
  store %struct.iommu_group* %30, %struct.iommu_group** %2, align 8
  br label %92

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.group_for_pci_data, %struct.group_for_pci_data* %5, i32 0, i32 0
  %33 = load %struct.pci_dev*, %struct.pci_dev** %32, align 8
  store %struct.pci_dev* %33, %struct.pci_dev** %4, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 1
  %36 = load %struct.pci_bus*, %struct.pci_bus** %35, align 8
  store %struct.pci_bus* %36, %struct.pci_bus** %6, align 8
  br label %37

37:                                               ; preds = %68, %31
  %38 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %39 = call i32 @pci_is_root_bus(%struct.pci_bus* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %44 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %43, i32 0, i32 0
  %45 = load %struct.pci_dev*, %struct.pci_dev** %44, align 8
  %46 = icmp ne %struct.pci_dev* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %68

48:                                               ; preds = %42
  %49 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %50 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %49, i32 0, i32 0
  %51 = load %struct.pci_dev*, %struct.pci_dev** %50, align 8
  %52 = load i32, i32* @REQ_ACS_FLAGS, align 4
  %53 = call i64 @pci_acs_path_enabled(%struct.pci_dev* %51, i32* null, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %72

56:                                               ; preds = %48
  %57 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %58 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %57, i32 0, i32 0
  %59 = load %struct.pci_dev*, %struct.pci_dev** %58, align 8
  store %struct.pci_dev* %59, %struct.pci_dev** %4, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = call %struct.iommu_group* @iommu_group_get(i32* %61)
  store %struct.iommu_group* %62, %struct.iommu_group** %7, align 8
  %63 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %64 = icmp ne %struct.iommu_group* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  store %struct.iommu_group* %66, %struct.iommu_group** %2, align 8
  br label %92

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %47
  %69 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %70 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %69, i32 0, i32 1
  %71 = load %struct.pci_bus*, %struct.pci_bus** %70, align 8
  store %struct.pci_bus* %71, %struct.pci_bus** %6, align 8
  br label %37

72:                                               ; preds = %55, %37
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %75 = bitcast i32* %74 to i64*
  %76 = call %struct.iommu_group* @get_pci_alias_group(%struct.pci_dev* %73, i64* %75)
  store %struct.iommu_group* %76, %struct.iommu_group** %7, align 8
  %77 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %78 = icmp ne %struct.iommu_group* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  store %struct.iommu_group* %80, %struct.iommu_group** %2, align 8
  br label %92

81:                                               ; preds = %72
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %84 = bitcast i32* %83 to i64*
  %85 = call %struct.iommu_group* @get_pci_function_alias_group(%struct.pci_dev* %82, i64* %84)
  store %struct.iommu_group* %85, %struct.iommu_group** %7, align 8
  %86 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %87 = icmp ne %struct.iommu_group* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  store %struct.iommu_group* %89, %struct.iommu_group** %2, align 8
  br label %92

90:                                               ; preds = %81
  %91 = call %struct.iommu_group* (...) @iommu_group_alloc()
  store %struct.iommu_group* %91, %struct.iommu_group** %2, align 8
  br label %92

92:                                               ; preds = %90, %88, %79, %65, %28, %19
  %93 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  ret %struct.iommu_group* %93
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local %struct.iommu_group* @ERR_PTR(i32) #1

declare dso_local i64 @pci_for_each_dma_alias(%struct.pci_dev*, i32, %struct.group_for_pci_data*) #1

declare dso_local i32 @pci_is_root_bus(%struct.pci_bus*) #1

declare dso_local i64 @pci_acs_path_enabled(%struct.pci_dev*, i32*, i32) #1

declare dso_local %struct.iommu_group* @iommu_group_get(i32*) #1

declare dso_local %struct.iommu_group* @get_pci_alias_group(%struct.pci_dev*, i64*) #1

declare dso_local %struct.iommu_group* @get_pci_function_alias_group(%struct.pci_dev*, i64*) #1

declare dso_local %struct.iommu_group* @iommu_group_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
