; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_smmu_flush_ptc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_smmu_flush_ptc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@SMMU_PTC_FLUSH_HI = common dso_local global i32 0, align 4
@SMMU_PTC_FLUSH_TYPE_ADR = common dso_local global i32 0, align 4
@SMMU_PTC_FLUSH = common dso_local global i32 0, align 4
@SMMU_PTC_FLUSH_HI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_smmu*, i32, i64)* @smmu_flush_ptc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smmu_flush_ptc(%struct.tegra_smmu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.tegra_smmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_smmu* %0, %struct.tegra_smmu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  %16 = xor i32 %15, -1
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %6, align 8
  %20 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 32
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %29 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SMMU_PTC_FLUSH_HI, align 4
  %32 = call i32 @smmu_writel(%struct.tegra_smmu* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %3
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %35, %36
  %38 = load i32, i32* @SMMU_PTC_FLUSH_TYPE_ADR, align 4
  %39 = sext i32 %38 to i64
  %40 = or i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SMMU_PTC_FLUSH, align 4
  %45 = call i32 @smmu_writel(%struct.tegra_smmu* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @smmu_writel(%struct.tegra_smmu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
