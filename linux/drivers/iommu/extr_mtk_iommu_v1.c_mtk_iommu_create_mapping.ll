; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_create_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_create_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dma_iommu_mapping* }
%struct.dma_iommu_mapping = type { i32 }
%struct.of_phandle_args = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iommu_fwspec = type { %struct.mtk_iommu_data*, i32* }
%struct.mtk_iommu_data = type { %struct.device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"invalid #iommu-cells(%d) property for IOMMU\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mtk_iommu_ops = common dso_local global i32 0, align 4
@platform_bus_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.of_phandle_args*)* @mtk_iommu_create_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_iommu_create_mapping(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.iommu_fwspec*, align 8
  %7 = alloca %struct.mtk_iommu_data*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.dma_iommu_mapping*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %12)
  store %struct.iommu_fwspec* %13, %struct.iommu_fwspec** %6, align 8
  %14 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %15 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %21 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %114

26:                                               ; preds = %2
  %27 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %6, align 8
  %28 = icmp ne %struct.iommu_fwspec* %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %32 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @iommu_fwspec_init(%struct.device* %30, i32* %34, i32* @mtk_iommu_ops)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %3, align 4
  br label %114

40:                                               ; preds = %29
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %41)
  store %struct.iommu_fwspec* %42, %struct.iommu_fwspec** %6, align 8
  br label %53

43:                                               ; preds = %26
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %44)
  %46 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, @mtk_iommu_ops
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %114

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %40
  %54 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %6, align 8
  %55 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %54, i32 0, i32 0
  %56 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %55, align 8
  %57 = icmp ne %struct.mtk_iommu_data* %56, null
  br i1 %57, label %77, label %58

58:                                               ; preds = %53
  %59 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %60 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call %struct.platform_device* @of_find_device_by_node(%struct.TYPE_4__* %61)
  store %struct.platform_device* %62, %struct.platform_device** %8, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %64 = icmp ne %struct.platform_device* %63, null
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @WARN_ON(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %114

72:                                               ; preds = %58
  %73 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %74 = call %struct.mtk_iommu_data* @platform_get_drvdata(%struct.platform_device* %73)
  %75 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %6, align 8
  %76 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %75, i32 0, i32 0
  store %struct.mtk_iommu_data* %74, %struct.mtk_iommu_data** %76, align 8
  br label %77

77:                                               ; preds = %72, %53
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %80 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @iommu_fwspec_add_ids(%struct.device* %78, i32 %81, i32 1)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %3, align 4
  br label %114

87:                                               ; preds = %77
  %88 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %6, align 8
  %89 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %88, i32 0, i32 0
  %90 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %89, align 8
  store %struct.mtk_iommu_data* %90, %struct.mtk_iommu_data** %7, align 8
  %91 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %7, align 8
  %92 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %91, i32 0, i32 0
  %93 = load %struct.device*, %struct.device** %92, align 8
  store %struct.device* %93, %struct.device** %10, align 8
  %94 = load %struct.device*, %struct.device** %10, align 8
  %95 = getelementptr inbounds %struct.device, %struct.device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load %struct.dma_iommu_mapping*, %struct.dma_iommu_mapping** %96, align 8
  store %struct.dma_iommu_mapping* %97, %struct.dma_iommu_mapping** %9, align 8
  %98 = load %struct.dma_iommu_mapping*, %struct.dma_iommu_mapping** %9, align 8
  %99 = icmp ne %struct.dma_iommu_mapping* %98, null
  br i1 %99, label %113, label %100

100:                                              ; preds = %87
  %101 = call %struct.dma_iommu_mapping* @arm_iommu_create_mapping(i32* @platform_bus_type, i32 0, i64 4294967296)
  store %struct.dma_iommu_mapping* %101, %struct.dma_iommu_mapping** %9, align 8
  %102 = load %struct.dma_iommu_mapping*, %struct.dma_iommu_mapping** %9, align 8
  %103 = call i64 @IS_ERR(%struct.dma_iommu_mapping* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.dma_iommu_mapping*, %struct.dma_iommu_mapping** %9, align 8
  %107 = call i32 @PTR_ERR(%struct.dma_iommu_mapping* %106)
  store i32 %107, i32* %3, align 4
  br label %114

108:                                              ; preds = %100
  %109 = load %struct.dma_iommu_mapping*, %struct.dma_iommu_mapping** %9, align 8
  %110 = load %struct.device*, %struct.device** %10, align 8
  %111 = getelementptr inbounds %struct.device, %struct.device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store %struct.dma_iommu_mapping* %109, %struct.dma_iommu_mapping** %112, align 8
  br label %113

113:                                              ; preds = %108, %87
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %105, %85, %69, %49, %38, %18
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @iommu_fwspec_init(%struct.device*, i32*, i32*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.TYPE_4__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.mtk_iommu_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @iommu_fwspec_add_ids(%struct.device*, i32, i32) #1

declare dso_local %struct.dma_iommu_mapping* @arm_iommu_create_mapping(i32*, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.dma_iommu_mapping*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_iommu_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
