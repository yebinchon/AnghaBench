; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_lpae_split_blk_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_lpae_split_blk_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_lpae_io_pgtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.io_pgtable_cfg }
%struct.io_pgtable_cfg = type { i32 }
%struct.iommu_iotlb_gather = type { i32 }

@ARM_LPAE_MAX_LEVELS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_TYPE_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.arm_lpae_io_pgtable*, %struct.iommu_iotlb_gather*, i64, i64, i32, i32, i32*)* @arm_lpae_split_blk_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arm_lpae_split_blk_unmap(%struct.arm_lpae_io_pgtable* %0, %struct.iommu_iotlb_gather* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.arm_lpae_io_pgtable*, align 8
  %10 = alloca %struct.iommu_iotlb_gather*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.io_pgtable_cfg*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.arm_lpae_io_pgtable* %0, %struct.arm_lpae_io_pgtable** %9, align 8
  store %struct.iommu_iotlb_gather* %1, %struct.iommu_iotlb_gather** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %24 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %25 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.io_pgtable_cfg* %26, %struct.io_pgtable_cfg** %16, align 8
  %27 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %28 = call i64 @ARM_LPAE_GRANULE(%struct.arm_lpae_io_pgtable* %27)
  store i64 %28, i64* %20, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %31 = call i64 @ARM_LPAE_BLOCK_SIZE(i32 %29, %struct.arm_lpae_io_pgtable* %30)
  store i64 %31, i64* %21, align 8
  store i32 -1, i32* %23, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @ARM_LPAE_MAX_LEVELS, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %7
  store i64 0, i64* %8, align 8
  br label %134

39:                                               ; preds = %7
  %40 = load i64, i64* %20, align 8
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %16, align 8
  %43 = call i32* @__arm_lpae_alloc_pages(i64 %40, i32 %41, %struct.io_pgtable_cfg* %42)
  store i32* %43, i32** %18, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i64 0, i64* %8, align 8
  br label %134

47:                                               ; preds = %39
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %21, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i64, i64* %11, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %55 = call i32 @ARM_LPAE_LVL_IDX(i64 %52, i32 %53, %struct.arm_lpae_io_pgtable* %54)
  store i32 %55, i32* %23, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %59 = call i64 @iopte_to_paddr(i32 %57, %struct.arm_lpae_io_pgtable* %58)
  store i64 %59, i64* %19, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @iopte_prot(i32 %60)
  store i32 %61, i32* %17, align 4
  store i32 0, i32* %22, align 4
  br label %62

62:                                               ; preds = %83, %56
  %63 = load i32, i32* %22, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %20, align 8
  %66 = udiv i64 %65, 4
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %62
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %23, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %83

73:                                               ; preds = %68
  %74 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %75 = load i64, i64* %19, align 8
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %18, align 8
  %79 = load i32, i32* %22, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @__arm_lpae_init_pte(%struct.arm_lpae_io_pgtable* %74, i64 %75, i32 %76, i32 %77, i32* %81)
  br label %83

83:                                               ; preds = %73, %72
  %84 = load i32, i32* %22, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %22, align 4
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* %19, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %19, align 8
  br label %62

89:                                               ; preds = %62
  %90 = load i32*, i32** %18, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %16, align 8
  %94 = call i32 @arm_lpae_install_table(i32* %90, i32* %91, i32 %92, %struct.io_pgtable_cfg* %93)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %89
  %99 = load i32*, i32** %18, align 8
  %100 = load i64, i64* %20, align 8
  %101 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %16, align 8
  %102 = call i32 @__arm_lpae_free_pages(i32* %99, i64 %100, %struct.io_pgtable_cfg* %101)
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %104, 1
  %106 = call i64 @iopte_type(i32 %103, i32 %105)
  %107 = load i64, i64* @ARM_LPAE_PTE_TYPE_TABLE, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  store i64 0, i64* %8, align 8
  br label %134

110:                                              ; preds = %98
  %111 = load i32, i32* %17, align 4
  %112 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %113 = call i32* @iopte_deref(i32 %111, %struct.arm_lpae_io_pgtable* %112)
  store i32* %113, i32** %18, align 8
  br label %126

114:                                              ; preds = %89
  %115 = load i32, i32* %23, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %119 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %118, i32 0, i32 0
  %120 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %10, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @io_pgtable_tlb_add_page(%struct.TYPE_2__* %119, %struct.iommu_iotlb_gather* %120, i64 %121, i64 %122)
  %124 = load i64, i64* %12, align 8
  store i64 %124, i64* %8, align 8
  br label %134

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125, %110
  %127 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %128 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %10, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %12, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32*, i32** %18, align 8
  %133 = call i64 @__arm_lpae_unmap(%struct.arm_lpae_io_pgtable* %127, %struct.iommu_iotlb_gather* %128, i64 %129, i64 %130, i32 %131, i32* %132)
  store i64 %133, i64* %8, align 8
  br label %134

134:                                              ; preds = %126, %117, %109, %46, %38
  %135 = load i64, i64* %8, align 8
  ret i64 %135
}

declare dso_local i64 @ARM_LPAE_GRANULE(%struct.arm_lpae_io_pgtable*) #1

declare dso_local i64 @ARM_LPAE_BLOCK_SIZE(i32, %struct.arm_lpae_io_pgtable*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32* @__arm_lpae_alloc_pages(i64, i32, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @ARM_LPAE_LVL_IDX(i64, i32, %struct.arm_lpae_io_pgtable*) #1

declare dso_local i64 @iopte_to_paddr(i32, %struct.arm_lpae_io_pgtable*) #1

declare dso_local i32 @iopte_prot(i32) #1

declare dso_local i32 @__arm_lpae_init_pte(%struct.arm_lpae_io_pgtable*, i64, i32, i32, i32*) #1

declare dso_local i32 @arm_lpae_install_table(i32*, i32*, i32, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @__arm_lpae_free_pages(i32*, i64, %struct.io_pgtable_cfg*) #1

declare dso_local i64 @iopte_type(i32, i32) #1

declare dso_local i32* @iopte_deref(i32, %struct.arm_lpae_io_pgtable*) #1

declare dso_local i32 @io_pgtable_tlb_add_page(%struct.TYPE_2__*, %struct.iommu_iotlb_gather*, i64, i64) #1

declare dso_local i64 @__arm_lpae_unmap(%struct.arm_lpae_io_pgtable*, %struct.iommu_iotlb_gather*, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
