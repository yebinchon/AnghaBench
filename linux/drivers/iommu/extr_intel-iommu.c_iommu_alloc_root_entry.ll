; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_alloc_root_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_alloc_root_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, %struct.root_entry*, i32, i32 }
%struct.root_entry = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Allocating root entry for %s failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ROOT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_iommu*)* @iommu_alloc_root_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_alloc_root_entry(%struct.intel_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_iommu*, align 8
  %4 = alloca %struct.root_entry*, align 8
  %5 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %3, align 8
  %6 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %7 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @alloc_pgtable_page(i32 %8)
  %10 = inttoptr i64 %9 to %struct.root_entry*
  store %struct.root_entry* %10, %struct.root_entry** %4, align 8
  %11 = load %struct.root_entry*, %struct.root_entry** %4, align 8
  %12 = icmp ne %struct.root_entry* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %15 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %22 = load %struct.root_entry*, %struct.root_entry** %4, align 8
  %23 = load i32, i32* @ROOT_SIZE, align 4
  %24 = call i32 @__iommu_flush_cache(%struct.intel_iommu* %21, %struct.root_entry* %22, i32 %23)
  %25 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %26 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.root_entry*, %struct.root_entry** %4, align 8
  %30 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %31 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %30, i32 0, i32 1
  store %struct.root_entry* %29, %struct.root_entry** %31, align 8
  %32 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %33 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %20, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @alloc_pgtable_page(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @__iommu_flush_cache(%struct.intel_iommu*, %struct.root_entry*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
