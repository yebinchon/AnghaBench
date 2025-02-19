; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_msm_iommu_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_msm_iommu_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.msm_priv = type { %struct.iommu_domain, i32 }

@IOMMU_DOMAIN_UNMANAGED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_domain* (i32)* @msm_iommu_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_domain* @msm_iommu_domain_alloc(i32 %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_priv*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IOMMU_DOMAIN_UNMANAGED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %36

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.msm_priv* @kzalloc(i32 32, i32 %10)
  store %struct.msm_priv* %11, %struct.msm_priv** %4, align 8
  %12 = load %struct.msm_priv*, %struct.msm_priv** %4, align 8
  %13 = icmp ne %struct.msm_priv* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %33

15:                                               ; preds = %9
  %16 = load %struct.msm_priv*, %struct.msm_priv** %4, align 8
  %17 = getelementptr inbounds %struct.msm_priv, %struct.msm_priv* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.msm_priv*, %struct.msm_priv** %4, align 8
  %20 = getelementptr inbounds %struct.msm_priv, %struct.msm_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.msm_priv*, %struct.msm_priv** %4, align 8
  %24 = getelementptr inbounds %struct.msm_priv, %struct.msm_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 4294967295, i64* %26, align 8
  %27 = load %struct.msm_priv*, %struct.msm_priv** %4, align 8
  %28 = getelementptr inbounds %struct.msm_priv, %struct.msm_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 8
  %31 = load %struct.msm_priv*, %struct.msm_priv** %4, align 8
  %32 = getelementptr inbounds %struct.msm_priv, %struct.msm_priv* %31, i32 0, i32 0
  store %struct.iommu_domain* %32, %struct.iommu_domain** %2, align 8
  br label %36

33:                                               ; preds = %14
  %34 = load %struct.msm_priv*, %struct.msm_priv** %4, align 8
  %35 = call i32 @kfree(%struct.msm_priv* %34)
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %36

36:                                               ; preds = %33, %15, %8
  %37 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  ret %struct.iommu_domain* %37
}

declare dso_local %struct.msm_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.msm_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
