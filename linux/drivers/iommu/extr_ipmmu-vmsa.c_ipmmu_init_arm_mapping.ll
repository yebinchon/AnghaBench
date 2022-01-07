; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_init_arm_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_init_arm_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ipmmu_vmsa_device = type { %struct.iommu_group*, %struct.device* }
%struct.iommu_group = type { i32 }
%struct.dma_iommu_mapping = type opaque

@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate IOMMU group\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to add device to IPMMU group\0A\00", align 1
@platform_bus_type = common dso_local global i32 0, align 4
@SZ_1G = common dso_local global i32 0, align 4
@SZ_2G = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to create ARM IOMMU mapping\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to attach device to VA mapping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ipmmu_init_arm_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmmu_init_arm_mapping(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ipmmu_vmsa_device*, align 8
  %5 = alloca %struct.iommu_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_iommu_mapping*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ipmmu_vmsa_device* @to_ipmmu(%struct.device* %8)
  store %struct.ipmmu_vmsa_device* %9, %struct.ipmmu_vmsa_device** %4, align 8
  %10 = call %struct.iommu_group* (...) @iommu_group_alloc()
  store %struct.iommu_group* %10, %struct.iommu_group** %5, align 8
  %11 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %12 = call i64 @IS_ERR(%struct.iommu_group* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %18 = call i32 @PTR_ERR(%struct.iommu_group* %17)
  store i32 %18, i32* %2, align 4
  br label %84

19:                                               ; preds = %1
  %20 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i32 @iommu_group_add_device(%struct.iommu_group* %20, %struct.device* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %24 = call i32 @iommu_group_put(%struct.iommu_group* %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %84

31:                                               ; preds = %19
  %32 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %33 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %32, i32 0, i32 0
  %34 = load %struct.iommu_group*, %struct.iommu_group** %33, align 8
  %35 = icmp ne %struct.iommu_group* %34, null
  br i1 %35, label %58, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @SZ_1G, align 4
  %38 = load i32, i32* @SZ_2G, align 4
  %39 = call %struct.iommu_group* @arm_iommu_create_mapping(i32* @platform_bus_type, i32 %37, i32 %38)
  %40 = bitcast %struct.iommu_group* %39 to %struct.dma_iommu_mapping*
  store %struct.dma_iommu_mapping* %40, %struct.dma_iommu_mapping** %7, align 8
  %41 = load %struct.dma_iommu_mapping*, %struct.dma_iommu_mapping** %7, align 8
  %42 = bitcast %struct.dma_iommu_mapping* %41 to %struct.iommu_group*
  %43 = call i64 @IS_ERR(%struct.iommu_group* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %47 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %46, i32 0, i32 1
  %48 = load %struct.device*, %struct.device** %47, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.dma_iommu_mapping*, %struct.dma_iommu_mapping** %7, align 8
  %51 = bitcast %struct.dma_iommu_mapping* %50 to %struct.iommu_group*
  %52 = call i32 @PTR_ERR(%struct.iommu_group* %51)
  store i32 %52, i32* %6, align 4
  br label %70

53:                                               ; preds = %36
  %54 = load %struct.dma_iommu_mapping*, %struct.dma_iommu_mapping** %7, align 8
  %55 = bitcast %struct.dma_iommu_mapping* %54 to %struct.iommu_group*
  %56 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %57 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %56, i32 0, i32 0
  store %struct.iommu_group* %55, %struct.iommu_group** %57, align 8
  br label %58

58:                                               ; preds = %53, %31
  %59 = load %struct.device*, %struct.device** %3, align 8
  %60 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %61 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %60, i32 0, i32 0
  %62 = load %struct.iommu_group*, %struct.iommu_group** %61, align 8
  %63 = call i32 @arm_iommu_attach_device(%struct.device* %59, %struct.iommu_group* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %70

69:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %84

70:                                               ; preds = %66, %45
  %71 = load %struct.device*, %struct.device** %3, align 8
  %72 = call i32 @iommu_group_remove_device(%struct.device* %71)
  %73 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %74 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %73, i32 0, i32 0
  %75 = load %struct.iommu_group*, %struct.iommu_group** %74, align 8
  %76 = icmp ne %struct.iommu_group* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.ipmmu_vmsa_device*, %struct.ipmmu_vmsa_device** %4, align 8
  %79 = getelementptr inbounds %struct.ipmmu_vmsa_device, %struct.ipmmu_vmsa_device* %78, i32 0, i32 0
  %80 = load %struct.iommu_group*, %struct.iommu_group** %79, align 8
  %81 = call i32 @arm_iommu_release_mapping(%struct.iommu_group* %80)
  br label %82

82:                                               ; preds = %77, %70
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %69, %27, %14
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.ipmmu_vmsa_device* @to_ipmmu(%struct.device*) #1

declare dso_local %struct.iommu_group* @iommu_group_alloc(...) #1

declare dso_local i64 @IS_ERR(%struct.iommu_group*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.iommu_group*) #1

declare dso_local i32 @iommu_group_add_device(%struct.iommu_group*, %struct.device*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

declare dso_local %struct.iommu_group* @arm_iommu_create_mapping(i32*, i32, i32) #1

declare dso_local i32 @arm_iommu_attach_device(%struct.device*, %struct.iommu_group*) #1

declare dso_local i32 @iommu_group_remove_device(%struct.device*) #1

declare dso_local i32 @arm_iommu_release_mapping(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
