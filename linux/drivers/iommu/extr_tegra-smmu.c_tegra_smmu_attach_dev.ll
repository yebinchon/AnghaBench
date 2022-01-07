; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_attach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_attach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.device = type { %struct.device_node*, %struct.TYPE_4__ }
%struct.device_node = type { i32 }
%struct.TYPE_4__ = type { %struct.tegra_smmu* }
%struct.tegra_smmu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.tegra_smmu_as = type { i32 }
%struct.of_phandle_args = type { i32*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"#iommu-cells\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, %struct.device*)* @tegra_smmu_attach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_smmu_attach_dev(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.tegra_smmu*, align 8
  %7 = alloca %struct.tegra_smmu_as*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.of_phandle_args, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.tegra_smmu*, %struct.tegra_smmu** %15, align 8
  store %struct.tegra_smmu* %16, %struct.tegra_smmu** %6, align 8
  %17 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %18 = call %struct.tegra_smmu_as* @to_smmu_as(%struct.iommu_domain* %17)
  store %struct.tegra_smmu_as* %18, %struct.tegra_smmu_as** %7, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %56, %41, %2
  %23 = load %struct.device_node*, %struct.device_node** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @of_parse_phandle_with_args(%struct.device_node* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %24, %struct.of_phandle_args* %9)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %65

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tegra_smmu*, %struct.tegra_smmu** %6, align 8
  %36 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %34, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @of_node_put(i64 %43)
  br label %22

45:                                               ; preds = %28
  %46 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @of_node_put(i64 %47)
  %49 = load %struct.tegra_smmu*, %struct.tegra_smmu** %6, align 8
  %50 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %7, align 8
  %51 = call i32 @tegra_smmu_as_prepare(%struct.tegra_smmu* %49, %struct.tegra_smmu_as* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %3, align 4
  br label %72

56:                                               ; preds = %45
  %57 = load %struct.tegra_smmu*, %struct.tegra_smmu** %6, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %7, align 8
  %60 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tegra_smmu_enable(%struct.tegra_smmu* %57, i32 %58, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %22

65:                                               ; preds = %22
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68, %54
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.tegra_smmu_as* @to_smmu_as(%struct.iommu_domain*) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @of_node_put(i64) #1

declare dso_local i32 @tegra_smmu_as_prepare(%struct.tegra_smmu*, %struct.tegra_smmu_as*) #1

declare dso_local i32 @tegra_smmu_enable(%struct.tegra_smmu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
