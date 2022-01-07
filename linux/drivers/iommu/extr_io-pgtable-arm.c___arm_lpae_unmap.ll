; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c___arm_lpae_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c___arm_lpae_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_lpae_io_pgtable = type { %struct.io_pgtable }
%struct.io_pgtable = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iommu_iotlb_gather = type { i32 }

@ARM_LPAE_MAX_LEVELS = common dso_local global i32 0, align 4
@IO_PGTABLE_QUIRK_NON_STRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.arm_lpae_io_pgtable*, %struct.iommu_iotlb_gather*, i64, i64, i32, i32*)* @__arm_lpae_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__arm_lpae_unmap(%struct.arm_lpae_io_pgtable* %0, %struct.iommu_iotlb_gather* %1, i64 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.arm_lpae_io_pgtable*, align 8
  %9 = alloca %struct.iommu_iotlb_gather*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.io_pgtable*, align 8
  store %struct.arm_lpae_io_pgtable* %0, %struct.arm_lpae_io_pgtable** %8, align 8
  store %struct.iommu_iotlb_gather* %1, %struct.iommu_iotlb_gather** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %17 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %16, i32 0, i32 0
  store %struct.io_pgtable* %17, %struct.io_pgtable** %15, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @ARM_LPAE_MAX_LEVELS, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %126

25:                                               ; preds = %6
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %29 = call i32 @ARM_LPAE_LVL_IDX(i64 %26, i32 %27, %struct.arm_lpae_io_pgtable* %28)
  %30 = load i32*, i32** %13, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @READ_ONCE(i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  store i64 0, i64* %7, align 8
  br label %126

43:                                               ; preds = %25
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %47 = call i64 @ARM_LPAE_BLOCK_SIZE(i32 %45, %struct.arm_lpae_io_pgtable* %46)
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %95

49:                                               ; preds = %43
  %50 = load i32*, i32** %13, align 8
  %51 = load %struct.io_pgtable*, %struct.io_pgtable** %15, align 8
  %52 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %51, i32 0, i32 1
  %53 = call i32 @__arm_lpae_set_pte(i32* %50, i32 0, %struct.TYPE_2__* %52)
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.io_pgtable*, %struct.io_pgtable** %15, align 8
  %57 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @iopte_leaf(i32 %54, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %49
  %62 = load %struct.io_pgtable*, %struct.io_pgtable** %15, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %66 = call i32 @ARM_LPAE_GRANULE(%struct.arm_lpae_io_pgtable* %65)
  %67 = call i32 @io_pgtable_tlb_flush_walk(%struct.io_pgtable* %62, i64 %63, i64 %64, i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %70 = call i32* @iopte_deref(i32 %68, %struct.arm_lpae_io_pgtable* %69)
  store i32* %70, i32** %13, align 8
  %71 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @__arm_lpae_free_pgtable(%struct.arm_lpae_io_pgtable* %71, i32 %73, i32* %74)
  br label %93

76:                                               ; preds = %49
  %77 = load %struct.io_pgtable*, %struct.io_pgtable** %15, align 8
  %78 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IO_PGTABLE_QUIRK_NON_STRICT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = call i32 (...) @smp_wmb()
  br label %92

86:                                               ; preds = %76
  %87 = load %struct.io_pgtable*, %struct.io_pgtable** %15, align 8
  %88 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @io_pgtable_tlb_add_page(%struct.io_pgtable* %87, %struct.iommu_iotlb_gather* %88, i64 %89, i64 %90)
  br label %92

92:                                               ; preds = %86, %84
  br label %93

93:                                               ; preds = %92, %61
  %94 = load i64, i64* %11, align 8
  store i64 %94, i64* %7, align 8
  br label %126

95:                                               ; preds = %43
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.io_pgtable*, %struct.io_pgtable** %15, align 8
  %99 = getelementptr inbounds %struct.io_pgtable, %struct.io_pgtable* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @iopte_leaf(i32 %96, i32 %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %95
  %104 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %105 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  %111 = load i32*, i32** %13, align 8
  %112 = call i64 @arm_lpae_split_blk_unmap(%struct.arm_lpae_io_pgtable* %104, %struct.iommu_iotlb_gather* %105, i64 %106, i64 %107, i32 %108, i32 %110, i32* %111)
  store i64 %112, i64* %7, align 8
  br label %126

113:                                              ; preds = %95
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %117 = call i32* @iopte_deref(i32 %115, %struct.arm_lpae_io_pgtable* %116)
  store i32* %117, i32** %13, align 8
  %118 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %119 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  %124 = load i32*, i32** %13, align 8
  %125 = call i64 @__arm_lpae_unmap(%struct.arm_lpae_io_pgtable* %118, %struct.iommu_iotlb_gather* %119, i64 %120, i64 %121, i32 %123, i32* %124)
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %114, %103, %93, %42, %24
  %127 = load i64, i64* %7, align 8
  ret i64 %127
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARM_LPAE_LVL_IDX(i64, i32, %struct.arm_lpae_io_pgtable*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @ARM_LPAE_BLOCK_SIZE(i32, %struct.arm_lpae_io_pgtable*) #1

declare dso_local i32 @__arm_lpae_set_pte(i32*, i32, %struct.TYPE_2__*) #1

declare dso_local i64 @iopte_leaf(i32, i32, i32) #1

declare dso_local i32 @io_pgtable_tlb_flush_walk(%struct.io_pgtable*, i64, i64, i32) #1

declare dso_local i32 @ARM_LPAE_GRANULE(%struct.arm_lpae_io_pgtable*) #1

declare dso_local i32* @iopte_deref(i32, %struct.arm_lpae_io_pgtable*) #1

declare dso_local i32 @__arm_lpae_free_pgtable(%struct.arm_lpae_io_pgtable*, i32, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @io_pgtable_tlb_add_page(%struct.io_pgtable*, %struct.iommu_iotlb_gather*, i64, i64) #1

declare dso_local i64 @arm_lpae_split_blk_unmap(%struct.arm_lpae_io_pgtable*, %struct.iommu_iotlb_gather*, i64, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
