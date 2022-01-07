; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_free_context_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_free_context_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, %struct.context_entry* }
%struct.context_entry = type { i32 }

@ROOT_ENTRY_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*)* @free_context_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_context_table(%struct.intel_iommu* %0) #0 {
  %2 = alloca %struct.intel_iommu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.context_entry*, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %2, align 8
  %6 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %7 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %6, i32 0, i32 0
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %11 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %10, i32 0, i32 1
  %12 = load %struct.context_entry*, %struct.context_entry** %11, align 8
  %13 = icmp ne %struct.context_entry* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %54

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %44, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ROOT_ENTRY_NR, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.context_entry* @iommu_context_addr(%struct.intel_iommu* %21, i32 %22, i32 0, i32 0)
  store %struct.context_entry* %23, %struct.context_entry** %5, align 8
  %24 = load %struct.context_entry*, %struct.context_entry** %5, align 8
  %25 = icmp ne %struct.context_entry* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.context_entry*, %struct.context_entry** %5, align 8
  %28 = call i32 @free_pgtable_page(%struct.context_entry* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %31 = call i32 @sm_supported(%struct.intel_iommu* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %44

34:                                               ; preds = %29
  %35 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call %struct.context_entry* @iommu_context_addr(%struct.intel_iommu* %35, i32 %36, i32 128, i32 0)
  store %struct.context_entry* %37, %struct.context_entry** %5, align 8
  %38 = load %struct.context_entry*, %struct.context_entry** %5, align 8
  %39 = icmp ne %struct.context_entry* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.context_entry*, %struct.context_entry** %5, align 8
  %42 = call i32 @free_pgtable_page(%struct.context_entry* %41)
  br label %43

43:                                               ; preds = %40, %34
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %49 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %48, i32 0, i32 1
  %50 = load %struct.context_entry*, %struct.context_entry** %49, align 8
  %51 = call i32 @free_pgtable_page(%struct.context_entry* %50)
  %52 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %53 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %52, i32 0, i32 1
  store %struct.context_entry* null, %struct.context_entry** %53, align 8
  br label %54

54:                                               ; preds = %47, %14
  %55 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %56 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %55, i32 0, i32 0
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.context_entry* @iommu_context_addr(%struct.intel_iommu*, i32, i32, i32) #1

declare dso_local i32 @free_pgtable_page(%struct.context_entry*) #1

declare dso_local i32 @sm_supported(%struct.intel_iommu*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
