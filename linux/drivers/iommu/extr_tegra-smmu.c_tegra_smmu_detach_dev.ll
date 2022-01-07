; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_detach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_detach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.tegra_smmu_as = type { i32, %struct.tegra_smmu* }
%struct.tegra_smmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.of_phandle_args = type { i32*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"#iommu-cells\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*, %struct.device*)* @tegra_smmu_detach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_smmu_detach_dev(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tegra_smmu_as*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.tegra_smmu*, align 8
  %8 = alloca %struct.of_phandle_args, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %11 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %12 = call %struct.tegra_smmu_as* @to_smmu_as(%struct.iommu_domain* %11)
  store %struct.tegra_smmu_as* %12, %struct.tegra_smmu_as** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %17 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %16, i32 0, i32 1
  %18 = load %struct.tegra_smmu*, %struct.tegra_smmu** %17, align 8
  store %struct.tegra_smmu* %18, %struct.tegra_smmu** %7, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %42, %38, %2
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @of_parse_phandle_with_args(%struct.device_node* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %21, %struct.of_phandle_args* %8)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %57

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tegra_smmu*, %struct.tegra_smmu** %7, align 8
  %33 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %31, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @of_node_put(i64 %40)
  br label %19

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @of_node_put(i64 %44)
  %46 = load %struct.tegra_smmu*, %struct.tegra_smmu** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %49 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @tegra_smmu_disable(%struct.tegra_smmu* %46, i32 %47, i32 %50)
  %52 = load %struct.tegra_smmu*, %struct.tegra_smmu** %7, align 8
  %53 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %54 = call i32 @tegra_smmu_as_unprepare(%struct.tegra_smmu* %52, %struct.tegra_smmu_as* %53)
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %19

57:                                               ; preds = %19
  ret void
}

declare dso_local %struct.tegra_smmu_as* @to_smmu_as(%struct.iommu_domain*) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @of_node_put(i64) #1

declare dso_local i32 @tegra_smmu_disable(%struct.tegra_smmu*, i32, i32) #1

declare dso_local i32 @tegra_smmu_as_unprepare(%struct.tegra_smmu*, %struct.tegra_smmu_as*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
