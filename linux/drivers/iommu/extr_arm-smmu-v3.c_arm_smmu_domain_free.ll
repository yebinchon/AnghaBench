; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.arm_smmu_domain = type { i64, %struct.arm_smmu_s2_cfg, %struct.arm_smmu_device*, %struct.arm_smmu_s1_cfg, i32 }
%struct.arm_smmu_s2_cfg = type { i64 }
%struct.arm_smmu_device = type { i32, i32, i32 }
%struct.arm_smmu_s1_cfg = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@ARM_SMMU_DOMAIN_S1 = common dso_local global i64 0, align 8
@CTXDESC_CD_DWORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*)* @arm_smmu_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_domain_free(%struct.iommu_domain* %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca %struct.arm_smmu_domain*, align 8
  %4 = alloca %struct.arm_smmu_device*, align 8
  %5 = alloca %struct.arm_smmu_s1_cfg*, align 8
  %6 = alloca %struct.arm_smmu_s2_cfg*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %2, align 8
  %7 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %8 = call %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain* %7)
  store %struct.arm_smmu_domain* %8, %struct.arm_smmu_domain** %3, align 8
  %9 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %10 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %9, i32 0, i32 2
  %11 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %10, align 8
  store %struct.arm_smmu_device* %11, %struct.arm_smmu_device** %4, align 8
  %12 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %13 = call i32 @iommu_put_dma_cookie(%struct.iommu_domain* %12)
  %14 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %15 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @free_io_pgtable_ops(i32 %16)
  %18 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %19 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ARM_SMMU_DOMAIN_S1, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %1
  %24 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %25 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %24, i32 0, i32 3
  store %struct.arm_smmu_s1_cfg* %25, %struct.arm_smmu_s1_cfg** %5, align 8
  %26 = load %struct.arm_smmu_s1_cfg*, %struct.arm_smmu_s1_cfg** %5, align 8
  %27 = getelementptr inbounds %struct.arm_smmu_s1_cfg, %struct.arm_smmu_s1_cfg* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %23
  %31 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %32 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %31, i32 0, i32 2
  %33 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %32, align 8
  %34 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CTXDESC_CD_DWORDS, align 4
  %37 = shl i32 %36, 3
  %38 = load %struct.arm_smmu_s1_cfg*, %struct.arm_smmu_s1_cfg** %5, align 8
  %39 = getelementptr inbounds %struct.arm_smmu_s1_cfg, %struct.arm_smmu_s1_cfg* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.arm_smmu_s1_cfg*, %struct.arm_smmu_s1_cfg** %5, align 8
  %42 = getelementptr inbounds %struct.arm_smmu_s1_cfg, %struct.arm_smmu_s1_cfg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dmam_free_coherent(i32 %35, i32 %37, i64 %40, i32 %43)
  %45 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %46 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.arm_smmu_s1_cfg*, %struct.arm_smmu_s1_cfg** %5, align 8
  %49 = getelementptr inbounds %struct.arm_smmu_s1_cfg, %struct.arm_smmu_s1_cfg* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @arm_smmu_bitmap_free(i32 %47, i64 %51)
  br label %53

53:                                               ; preds = %30, %23
  br label %70

54:                                               ; preds = %1
  %55 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %56 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %55, i32 0, i32 1
  store %struct.arm_smmu_s2_cfg* %56, %struct.arm_smmu_s2_cfg** %6, align 8
  %57 = load %struct.arm_smmu_s2_cfg*, %struct.arm_smmu_s2_cfg** %6, align 8
  %58 = getelementptr inbounds %struct.arm_smmu_s2_cfg, %struct.arm_smmu_s2_cfg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %63 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.arm_smmu_s2_cfg*, %struct.arm_smmu_s2_cfg** %6, align 8
  %66 = getelementptr inbounds %struct.arm_smmu_s2_cfg, %struct.arm_smmu_s2_cfg* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @arm_smmu_bitmap_free(i32 %64, i64 %67)
  br label %69

69:                                               ; preds = %61, %54
  br label %70

70:                                               ; preds = %69, %53
  %71 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %72 = call i32 @kfree(%struct.arm_smmu_domain* %71)
  ret void
}

declare dso_local %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain*) #1

declare dso_local i32 @iommu_put_dma_cookie(%struct.iommu_domain*) #1

declare dso_local i32 @free_io_pgtable_ops(i32) #1

declare dso_local i32 @dmam_free_coherent(i32, i32, i64, i32) #1

declare dso_local i32 @arm_smmu_bitmap_free(i32, i64) #1

declare dso_local i32 @kfree(%struct.arm_smmu_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
