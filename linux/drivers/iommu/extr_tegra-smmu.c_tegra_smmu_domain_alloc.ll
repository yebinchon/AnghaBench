; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.tegra_smmu_as = type { i32, %struct.iommu_domain, i32, %struct.tegra_smmu_as*, i8* }

@IOMMU_DOMAIN_UNMANAGED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SMMU_PD_READABLE = common dso_local global i32 0, align 4
@SMMU_PD_WRITABLE = common dso_local global i32 0, align 4
@SMMU_PD_NONSECURE = common dso_local global i32 0, align 4
@__GFP_DMA = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@SMMU_NUM_PDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_domain* (i32)* @tegra_smmu_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_domain* @tegra_smmu_domain_alloc(i32 %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_smmu_as*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IOMMU_DOMAIN_UNMANAGED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %92

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.tegra_smmu_as* @kzalloc(i32 48, i32 %10)
  store %struct.tegra_smmu_as* %11, %struct.tegra_smmu_as** %4, align 8
  %12 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %13 = icmp ne %struct.tegra_smmu_as* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %92

15:                                               ; preds = %9
  %16 = load i32, i32* @SMMU_PD_READABLE, align 4
  %17 = load i32, i32* @SMMU_PD_WRITABLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SMMU_PD_NONSECURE, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* @__GFP_DMA, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @__GFP_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @alloc_page(i32 %27)
  %29 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %15
  %36 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %37 = call i32 @kfree(%struct.tegra_smmu_as* %36)
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %92

38:                                               ; preds = %15
  %39 = load i32, i32* @SMMU_NUM_PDE, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kcalloc(i32 %39, i32 4, i32 %40)
  %42 = bitcast i8* %41 to %struct.tegra_smmu_as*
  %43 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %44 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %43, i32 0, i32 3
  store %struct.tegra_smmu_as* %42, %struct.tegra_smmu_as** %44, align 8
  %45 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %46 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %45, i32 0, i32 3
  %47 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %46, align 8
  %48 = icmp ne %struct.tegra_smmu_as* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %38
  %50 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @__free_page(i32 %52)
  %54 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %55 = call i32 @kfree(%struct.tegra_smmu_as* %54)
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %92

56:                                               ; preds = %38
  %57 = load i32, i32* @SMMU_NUM_PDE, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @kcalloc(i32 %57, i32 1, i32 %58)
  %60 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %61 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %63 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %62, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %56
  %67 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %68 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %67, i32 0, i32 3
  %69 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %68, align 8
  %70 = call i32 @kfree(%struct.tegra_smmu_as* %69)
  %71 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @__free_page(i32 %73)
  %75 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %76 = call i32 @kfree(%struct.tegra_smmu_as* %75)
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %92

77:                                               ; preds = %56
  %78 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %79 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %83 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 -1, i32* %85, align 8
  %86 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %87 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %91 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %90, i32 0, i32 1
  store %struct.iommu_domain* %91, %struct.iommu_domain** %2, align 8
  br label %92

92:                                               ; preds = %77, %66, %49, %35, %14, %8
  %93 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  ret %struct.iommu_domain* %93
}

declare dso_local %struct.tegra_smmu_as* @kzalloc(i32, i32) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @kfree(%struct.tegra_smmu_as*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @__free_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
