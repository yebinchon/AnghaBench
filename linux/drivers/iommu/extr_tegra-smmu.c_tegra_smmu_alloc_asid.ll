; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_alloc_asid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_alloc_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_smmu*, i32*)* @tegra_smmu_alloc_asid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_smmu_alloc_asid(%struct.tegra_smmu* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_smmu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.tegra_smmu* %0, %struct.tegra_smmu** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %8 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @find_first_zero_bit(i32 %12, i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %19, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* @ENOSPC, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %2
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %35 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @set_bit(i64 %33, i32 %36)
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %32, %26
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
