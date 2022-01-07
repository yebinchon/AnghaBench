; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_flush_irt_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_flush_irt_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }

@MAX_DEV_TABLE_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*)* @amd_iommu_flush_irt_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_iommu_flush_irt_all(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  %3 = alloca i64, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @MAX_DEV_TABLE_ENTRIES, align 8
  %7 = icmp sle i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @iommu_flush_irt(%struct.amd_iommu* %9, i64 %10)
  br label %12

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %3, align 8
  br label %4

15:                                               ; preds = %4
  %16 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %17 = call i32 @iommu_completion_wait(%struct.amd_iommu* %16)
  ret void
}

declare dso_local i32 @iommu_flush_irt(%struct.amd_iommu*, i64) #1

declare dso_local i32 @iommu_completion_wait(%struct.amd_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
