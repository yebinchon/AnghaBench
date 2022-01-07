; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.arm_smmu_domain = type { %struct.iommu_domain, i32, i32 }

@IOMMU_DOMAIN_UNMANAGED = common dso_local global i32 0, align 4
@IOMMU_DOMAIN_DMA = common dso_local global i32 0, align 4
@IOMMU_DOMAIN_IDENTITY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@using_legacy_binding = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_domain* (i32)* @arm_smmu_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_domain* @arm_smmu_domain_alloc(i32 %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.arm_smmu_domain*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IOMMU_DOMAIN_UNMANAGED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @IOMMU_DOMAIN_DMA, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IOMMU_DOMAIN_IDENTITY, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %47

17:                                               ; preds = %12, %8, %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.arm_smmu_domain* @kzalloc(i32 12, i32 %18)
  store %struct.arm_smmu_domain* %19, %struct.arm_smmu_domain** %4, align 8
  %20 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %4, align 8
  %21 = icmp ne %struct.arm_smmu_domain* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %47

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @IOMMU_DOMAIN_DMA, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i64, i64* @using_legacy_binding, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %4, align 8
  %32 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %31, i32 0, i32 0
  %33 = call i64 @iommu_get_dma_cookie(%struct.iommu_domain* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %27
  %36 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %4, align 8
  %37 = call i32 @kfree(%struct.arm_smmu_domain* %36)
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %47

38:                                               ; preds = %30, %23
  %39 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %4, align 8
  %40 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %39, i32 0, i32 2
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %4, align 8
  %43 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %42, i32 0, i32 1
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %4, align 8
  %46 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %45, i32 0, i32 0
  store %struct.iommu_domain* %46, %struct.iommu_domain** %2, align 8
  br label %47

47:                                               ; preds = %38, %35, %22, %16
  %48 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  ret %struct.iommu_domain* %48
}

declare dso_local %struct.arm_smmu_domain* @kzalloc(i32, i32) #1

declare dso_local i64 @iommu_get_dma_cookie(%struct.iommu_domain*) #1

declare dso_local i32 @kfree(%struct.arm_smmu_domain*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
