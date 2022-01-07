; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__, %struct.device_node* }
%struct.TYPE_2__ = type { %struct.tegra_smmu* }
%struct.tegra_smmu = type { i32 }
%struct.device_node = type { i32 }
%struct.iommu_group = type { i32 }
%struct.of_phandle_args = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"#iommu-cells\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tegra_smmu_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_smmu_add_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.tegra_smmu*, align 8
  %6 = alloca %struct.iommu_group*, align 8
  %7 = alloca %struct.of_phandle_args, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 1
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  store %struct.tegra_smmu* null, %struct.tegra_smmu** %5, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %44, %1
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @of_parse_phandle_with_args(%struct.device_node* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %15, %struct.of_phandle_args* %7)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.tegra_smmu* @tegra_smmu_find(i32 %20)
  store %struct.tegra_smmu* %21, %struct.tegra_smmu** %5, align 8
  %22 = load %struct.tegra_smmu*, %struct.tegra_smmu** %5, align 8
  %23 = icmp ne %struct.tegra_smmu* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load %struct.tegra_smmu*, %struct.tegra_smmu** %5, align 8
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = call i32 @tegra_smmu_configure(%struct.tegra_smmu* %25, %struct.device* %26, %struct.of_phandle_args* %7)
  store i32 %27, i32* %9, align 4
  %28 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @of_node_put(i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %2, align 4
  br label %68

35:                                               ; preds = %24
  %36 = load %struct.tegra_smmu*, %struct.tegra_smmu** %5, align 8
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.tegra_smmu* %36, %struct.tegra_smmu** %39, align 8
  %40 = load %struct.tegra_smmu*, %struct.tegra_smmu** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %40, i32 0, i32 0
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = call i32 @iommu_device_link(i32* %41, %struct.device* %42)
  br label %50

44:                                               ; preds = %18
  %45 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @of_node_put(i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %13

50:                                               ; preds = %35, %13
  %51 = load %struct.tegra_smmu*, %struct.tegra_smmu** %5, align 8
  %52 = icmp ne %struct.tegra_smmu* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %68

56:                                               ; preds = %50
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = call %struct.iommu_group* @iommu_group_get_for_dev(%struct.device* %57)
  store %struct.iommu_group* %58, %struct.iommu_group** %6, align 8
  %59 = load %struct.iommu_group*, %struct.iommu_group** %6, align 8
  %60 = call i64 @IS_ERR(%struct.iommu_group* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.iommu_group*, %struct.iommu_group** %6, align 8
  %64 = call i32 @PTR_ERR(%struct.iommu_group* %63)
  store i32 %64, i32* %2, align 4
  br label %68

65:                                               ; preds = %56
  %66 = load %struct.iommu_group*, %struct.iommu_group** %6, align 8
  %67 = call i32 @iommu_group_put(%struct.iommu_group* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %62, %53, %33
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local %struct.tegra_smmu* @tegra_smmu_find(i32) #1

declare dso_local i32 @tegra_smmu_configure(%struct.tegra_smmu*, %struct.device*, %struct.of_phandle_args*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @iommu_device_link(i32*, %struct.device*) #1

declare dso_local %struct.iommu_group* @iommu_group_get_for_dev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.iommu_group*) #1

declare dso_local i32 @PTR_ERR(%struct.iommu_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
