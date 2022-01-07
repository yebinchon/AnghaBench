; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_find_swgroup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_find_swgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu_swgroup = type { i32 }
%struct.tegra_smmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.tegra_smmu_swgroup* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_smmu_swgroup* (%struct.tegra_smmu*, i32)* @tegra_smmu_find_swgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_smmu_swgroup* @tegra_smmu_find_swgroup(%struct.tegra_smmu* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_smmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_smmu_swgroup*, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_smmu* %0, %struct.tegra_smmu** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.tegra_smmu_swgroup* null, %struct.tegra_smmu_swgroup** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %38, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.tegra_smmu*, %struct.tegra_smmu** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %8, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %7
  %16 = load %struct.tegra_smmu*, %struct.tegra_smmu** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.tegra_smmu_swgroup*, %struct.tegra_smmu_swgroup** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.tegra_smmu_swgroup, %struct.tegra_smmu_swgroup* %20, i64 %22
  %24 = getelementptr inbounds %struct.tegra_smmu_swgroup, %struct.tegra_smmu_swgroup* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %15
  %29 = load %struct.tegra_smmu*, %struct.tegra_smmu** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.tegra_smmu_swgroup*, %struct.tegra_smmu_swgroup** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tegra_smmu_swgroup, %struct.tegra_smmu_swgroup* %33, i64 %35
  store %struct.tegra_smmu_swgroup* %36, %struct.tegra_smmu_swgroup** %5, align 8
  br label %41

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %7

41:                                               ; preds = %28, %7
  %42 = load %struct.tegra_smmu_swgroup*, %struct.tegra_smmu_swgroup** %5, align 8
  ret %struct.tegra_smmu_swgroup* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
