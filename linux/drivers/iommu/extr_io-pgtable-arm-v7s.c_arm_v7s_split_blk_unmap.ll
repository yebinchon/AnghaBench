; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_split_blk_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_split_blk_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_v7s_io_pgtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.io_pgtable_cfg }
%struct.io_pgtable_cfg = type { i32 }
%struct.iommu_iotlb_gather = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.arm_v7s_io_pgtable*, %struct.iommu_iotlb_gather*, i64, i64, i64, i64*)* @arm_v7s_split_blk_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arm_v7s_split_blk_unmap(%struct.arm_v7s_io_pgtable* %0, %struct.iommu_iotlb_gather* %1, i64 %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.arm_v7s_io_pgtable*, align 8
  %9 = alloca %struct.iommu_iotlb_gather*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.io_pgtable_cfg*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.arm_v7s_io_pgtable* %0, %struct.arm_v7s_io_pgtable** %8, align 8
  store %struct.iommu_iotlb_gather* %1, %struct.iommu_iotlb_gather** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %21 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %22 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.io_pgtable_cfg* %23, %struct.io_pgtable_cfg** %14, align 8
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %26 = call i64* @__arm_v7s_alloc_table(i32 2, i32 %24, %struct.arm_v7s_io_pgtable* %25)
  store i64* %26, i64** %16, align 8
  %27 = load i64*, i64** %16, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %108

30:                                               ; preds = %6
  %31 = call i32 @ARM_V7S_PTES_PER_LVL(i32 2)
  store i32 %31, i32* %20, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @ARM_V7S_LVL_SHIFT(i32 2)
  %34 = lshr i64 %32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %19, align 4
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @ARM_V7S_LVL_IDX(i64 %36, i32 2)
  store i32 %37, i32* %18, align 4
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @arm_v7s_pte_to_prot(i64 %38, i32 1)
  %40 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %14, align 8
  %41 = call i64 @arm_v7s_prot_to_pte(i32 %39, i32 2, %struct.io_pgtable_cfg* %40)
  store i64 %41, i64* %15, align 8
  %42 = load i32, i32* %19, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i64, i64* %15, align 8
  %46 = call i64 @arm_v7s_pte_to_cont(i64 %45, i32 2)
  store i64 %46, i64* %15, align 8
  br label %47

47:                                               ; preds = %44, %30
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %20, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %66

57:                                               ; preds = %52
  %58 = load i64*, i64** %16, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %15, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %14, align 8
  %65 = call i32 @__arm_v7s_set_pte(i64* %61, i64 %62, i32 %63, %struct.io_pgtable_cfg* %64)
  br label %66

66:                                               ; preds = %57, %56
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %17, align 4
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %15, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %15, align 8
  br label %48

73:                                               ; preds = %48
  %74 = load i64*, i64** %16, align 8
  %75 = load i64*, i64** %13, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %14, align 8
  %78 = call i64 @arm_v7s_install_table(i64* %74, i64* %75, i64 %76, %struct.io_pgtable_cfg* %77)
  store i64 %78, i64* %15, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %73
  %83 = load i64*, i64** %16, align 8
  %84 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %85 = call i32 @__arm_v7s_free_table(i64* %83, i32 2, %struct.arm_v7s_io_pgtable* %84)
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @ARM_V7S_PTE_IS_TABLE(i64 %86, i32 1)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  store i64 0, i64* %7, align 8
  br label %108

90:                                               ; preds = %82
  %91 = load i64, i64* %15, align 8
  %92 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %93 = call i64* @iopte_deref(i64 %91, i32 1, %struct.arm_v7s_io_pgtable* %92)
  store i64* %93, i64** %16, align 8
  %94 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %95 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i64*, i64** %16, align 8
  %99 = call i64 @__arm_v7s_unmap(%struct.arm_v7s_io_pgtable* %94, %struct.iommu_iotlb_gather* %95, i64 %96, i64 %97, i32 2, i64* %98)
  store i64 %99, i64* %7, align 8
  br label %108

100:                                              ; preds = %73
  %101 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %8, align 8
  %102 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %101, i32 0, i32 0
  %103 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @io_pgtable_tlb_add_page(%struct.TYPE_2__* %102, %struct.iommu_iotlb_gather* %103, i64 %104, i64 %105)
  %107 = load i64, i64* %11, align 8
  store i64 %107, i64* %7, align 8
  br label %108

108:                                              ; preds = %100, %90, %89, %29
  %109 = load i64, i64* %7, align 8
  ret i64 %109
}

declare dso_local i64* @__arm_v7s_alloc_table(i32, i32, %struct.arm_v7s_io_pgtable*) #1

declare dso_local i32 @ARM_V7S_PTES_PER_LVL(i32) #1

declare dso_local i64 @ARM_V7S_LVL_SHIFT(i32) #1

declare dso_local i32 @ARM_V7S_LVL_IDX(i64, i32) #1

declare dso_local i64 @arm_v7s_prot_to_pte(i32, i32, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @arm_v7s_pte_to_prot(i64, i32) #1

declare dso_local i64 @arm_v7s_pte_to_cont(i64, i32) #1

declare dso_local i32 @__arm_v7s_set_pte(i64*, i64, i32, %struct.io_pgtable_cfg*) #1

declare dso_local i64 @arm_v7s_install_table(i64*, i64*, i64, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @__arm_v7s_free_table(i64*, i32, %struct.arm_v7s_io_pgtable*) #1

declare dso_local i32 @ARM_V7S_PTE_IS_TABLE(i64, i32) #1

declare dso_local i64* @iopte_deref(i64, i32, %struct.arm_v7s_io_pgtable*) #1

declare dso_local i64 @__arm_v7s_unmap(%struct.arm_v7s_io_pgtable*, %struct.iommu_iotlb_gather*, i64, i64, i32, i64*) #1

declare dso_local i32 @io_pgtable_tlb_add_page(%struct.TYPE_2__*, %struct.iommu_iotlb_gather*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
