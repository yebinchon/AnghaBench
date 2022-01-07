; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_flush_all_caches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_flush_all_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }

@FEATURE_IA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_flush_all_caches(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  %3 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %4 = load i32, i32* @FEATURE_IA, align 4
  %5 = call i64 @iommu_feature(%struct.amd_iommu* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %9 = call i32 @amd_iommu_flush_all(%struct.amd_iommu* %8)
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %12 = call i32 @amd_iommu_flush_dte_all(%struct.amd_iommu* %11)
  %13 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %14 = call i32 @amd_iommu_flush_irt_all(%struct.amd_iommu* %13)
  %15 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %16 = call i32 @amd_iommu_flush_tlb_all(%struct.amd_iommu* %15)
  br label %17

17:                                               ; preds = %10, %7
  ret void
}

declare dso_local i64 @iommu_feature(%struct.amd_iommu*, i32) #1

declare dso_local i32 @amd_iommu_flush_all(%struct.amd_iommu*) #1

declare dso_local i32 @amd_iommu_flush_dte_all(%struct.amd_iommu*) #1

declare dso_local i32 @amd_iommu_flush_irt_all(%struct.amd_iommu*) #1

declare dso_local i32 @amd_iommu_flush_tlb_all(%struct.amd_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
