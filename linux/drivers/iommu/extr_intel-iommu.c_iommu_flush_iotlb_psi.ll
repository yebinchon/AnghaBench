; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_flush_iotlb_psi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_flush_iotlb_psi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.intel_iommu.0*, i32, i32, i32, i32)* }
%struct.intel_iommu.0 = type opaque
%struct.dmar_domain = type { i32* }

@VTD_PAGE_SHIFT = common dso_local global i32 0, align 4
@DMA_TLB_DSI_FLUSH = common dso_local global i32 0, align 4
@DMA_TLB_PSI_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*, %struct.dmar_domain*, i64, i32, i32, i32)* @iommu_flush_iotlb_psi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_flush_iotlb_psi(%struct.intel_iommu* %0, %struct.dmar_domain* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.intel_iommu*, align 8
  %8 = alloca %struct.dmar_domain*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %7, align 8
  store %struct.dmar_domain* %1, %struct.dmar_domain** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @__roundup_pow_of_two(i32 %16)
  %18 = call i32 @ilog2(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i64, i64* %9, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @VTD_PAGE_SHIFT, align 4
  %22 = shl i32 %20, %21
  store i32 %22, i32* %14, align 4
  %23 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %24 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %27 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store i32 64, i32* %11, align 4
  br label %38

38:                                               ; preds = %37, %6
  %39 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %40 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cap_pgsel_inv(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %47 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cap_max_amask_val(i32 %48)
  %50 = icmp ugt i32 %45, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %44, %38
  %52 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %53 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.intel_iommu.0*, i32, i32, i32, i32)*, i32 (%struct.intel_iommu.0*, i32, i32, i32, i32)** %54, align 8
  %56 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %57 = bitcast %struct.intel_iommu* %56 to %struct.intel_iommu.0*
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @DMA_TLB_DSI_FLUSH, align 4
  %60 = call i32 %55(%struct.intel_iommu.0* %57, i32 %58, i32 0, i32 0, i32 %59)
  br label %75

61:                                               ; preds = %44
  %62 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %63 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.intel_iommu.0*, i32, i32, i32, i32)*, i32 (%struct.intel_iommu.0*, i32, i32, i32, i32)** %64, align 8
  %66 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %67 = bitcast %struct.intel_iommu* %66 to %struct.intel_iommu.0*
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @DMA_TLB_PSI_FLUSH, align 4
  %74 = call i32 %65(%struct.intel_iommu.0* %67, i32 %68, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %61, %51
  %76 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %77 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @cap_caching_mode(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81, %75
  %85 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @iommu_flush_dev_iotlb(%struct.dmar_domain* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %81
  ret void
}

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @__roundup_pow_of_two(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cap_pgsel_inv(i32) #1

declare dso_local i32 @cap_max_amask_val(i32) #1

declare dso_local i32 @cap_caching_mode(i32) #1

declare dso_local i32 @iommu_flush_dev_iotlb(%struct.dmar_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
