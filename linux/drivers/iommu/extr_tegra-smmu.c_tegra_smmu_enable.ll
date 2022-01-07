; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.tegra_mc_client* }
%struct.tegra_mc_client = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tegra_smmu_swgroup = type { i32 }

@SMMU_ASID_MASK = common dso_local global i32 0, align 4
@SMMU_ASID_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_smmu*, i32, i32)* @tegra_smmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_smmu_enable(%struct.tegra_smmu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tegra_smmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_smmu_swgroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_mc_client*, align 8
  store %struct.tegra_smmu* %0, %struct.tegra_smmu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %55, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %12, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %11
  %20 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %24, i64 %26
  store %struct.tegra_mc_client* %27, %struct.tegra_mc_client** %10, align 8
  %28 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %10, align 8
  %29 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %55

34:                                               ; preds = %19
  %35 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %36 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %10, align 8
  %37 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @smmu_readl(%struct.tegra_smmu* %35, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %10, align 8
  %42 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.tegra_mc_client*, %struct.tegra_mc_client** %10, align 8
  %51 = getelementptr inbounds %struct.tegra_mc_client, %struct.tegra_mc_client* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @smmu_writel(%struct.tegra_smmu* %48, i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %34, %33
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %11

58:                                               ; preds = %11
  %59 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call %struct.tegra_smmu_swgroup* @tegra_smmu_find_swgroup(%struct.tegra_smmu* %59, i32 %60)
  store %struct.tegra_smmu_swgroup* %61, %struct.tegra_smmu_swgroup** %7, align 8
  %62 = load %struct.tegra_smmu_swgroup*, %struct.tegra_smmu_swgroup** %7, align 8
  %63 = icmp ne %struct.tegra_smmu_swgroup* %62, null
  br i1 %63, label %64, label %87

64:                                               ; preds = %58
  %65 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %66 = load %struct.tegra_smmu_swgroup*, %struct.tegra_smmu_swgroup** %7, align 8
  %67 = getelementptr inbounds %struct.tegra_smmu_swgroup, %struct.tegra_smmu_swgroup* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @smmu_readl(%struct.tegra_smmu* %65, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @SMMU_ASID_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @SMMU_ASID_VALUE(i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @SMMU_ASID_ENABLE, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.tegra_smmu_swgroup*, %struct.tegra_smmu_swgroup** %7, align 8
  %84 = getelementptr inbounds %struct.tegra_smmu_swgroup, %struct.tegra_smmu_swgroup* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @smmu_writel(%struct.tegra_smmu* %81, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %64, %58
  ret void
}

declare dso_local i32 @smmu_readl(%struct.tegra_smmu*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @smmu_writel(%struct.tegra_smmu*, i32, i32) #1

declare dso_local %struct.tegra_smmu_swgroup* @tegra_smmu_find_swgroup(%struct.tegra_smmu*, i32) #1

declare dso_local i32 @SMMU_ASID_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
