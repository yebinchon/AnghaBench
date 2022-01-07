; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_smmu_flush_tlb_section.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_smmu_flush_tlb_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SMMU_TLB_FLUSH_ASID_MATCH = common dso_local global i32 0, align 4
@SMMU_TLB_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_smmu*, i64, i64)* @smmu_flush_tlb_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smmu_flush_tlb_section(%struct.tegra_smmu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.tegra_smmu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_smmu* %0, %struct.tegra_smmu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, 3
  %17 = shl i64 %16, 29
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, 127
  %22 = shl i64 %21, 24
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @SMMU_TLB_FLUSH_ASID_MATCH, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @SMMU_TLB_FLUSH_VA_SECTION(i64 %26)
  %28 = or i32 %25, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SMMU_TLB_FLUSH, align 4
  %34 = call i32 @smmu_writel(%struct.tegra_smmu* %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @SMMU_TLB_FLUSH_VA_SECTION(i64) #1

declare dso_local i32 @smmu_writel(%struct.tegra_smmu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
