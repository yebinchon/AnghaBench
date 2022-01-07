; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_smmu_flush_tlb_asid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_smmu_flush_tlb_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SMMU_TLB_FLUSH_ASID_MATCH = common dso_local global i32 0, align 4
@SMMU_TLB_FLUSH_VA_MATCH_ALL = common dso_local global i32 0, align 4
@SMMU_TLB_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_smmu*, i64)* @smmu_flush_tlb_asid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smmu_flush_tlb_asid(%struct.tegra_smmu* %0, i64 %1) #0 {
  %3 = alloca %struct.tegra_smmu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_smmu* %0, %struct.tegra_smmu** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.tegra_smmu*, %struct.tegra_smmu** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = and i64 %13, 3
  %15 = shl i64 %14, 29
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = and i64 %18, 127
  %20 = shl i64 %19, 24
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @SMMU_TLB_FLUSH_ASID_MATCH, align 4
  %24 = load i32, i32* @SMMU_TLB_FLUSH_VA_MATCH_ALL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.tegra_smmu*, %struct.tegra_smmu** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SMMU_TLB_FLUSH, align 4
  %31 = call i32 @smmu_writel(%struct.tegra_smmu* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @smmu_writel(%struct.tegra_smmu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
