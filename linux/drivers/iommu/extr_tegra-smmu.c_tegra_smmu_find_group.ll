; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_find_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_find_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu_group_soc = type { i32, i32* }
%struct.tegra_smmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.tegra_smmu_group_soc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_smmu_group_soc* (%struct.tegra_smmu*, i32)* @tegra_smmu_find_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_smmu_group_soc* @tegra_smmu_find_group(%struct.tegra_smmu* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_smmu_group_soc*, align 8
  %4 = alloca %struct.tegra_smmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_smmu* %0, %struct.tegra_smmu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %61, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %9, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %57, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.tegra_smmu_group_soc*, %struct.tegra_smmu_group_soc** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.tegra_smmu_group_soc, %struct.tegra_smmu_group_soc* %23, i64 %25
  %27 = getelementptr inbounds %struct.tegra_smmu_group_soc, %struct.tegra_smmu_group_soc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %18, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %17
  %31 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.tegra_smmu_group_soc*, %struct.tegra_smmu_group_soc** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tegra_smmu_group_soc, %struct.tegra_smmu_group_soc* %35, i64 %37
  %39 = getelementptr inbounds %struct.tegra_smmu_group_soc, %struct.tegra_smmu_group_soc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %30
  %48 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %49 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.tegra_smmu_group_soc*, %struct.tegra_smmu_group_soc** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.tegra_smmu_group_soc, %struct.tegra_smmu_group_soc* %52, i64 %54
  store %struct.tegra_smmu_group_soc* %55, %struct.tegra_smmu_group_soc** %3, align 8
  br label %65

56:                                               ; preds = %30
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %17

60:                                               ; preds = %17
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %8

64:                                               ; preds = %8
  store %struct.tegra_smmu_group_soc* null, %struct.tegra_smmu_group_soc** %3, align 8
  br label %65

65:                                               ; preds = %64, %47
  %66 = load %struct.tegra_smmu_group_soc*, %struct.tegra_smmu_group_soc** %3, align 8
  ret %struct.tegra_smmu_group_soc* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
