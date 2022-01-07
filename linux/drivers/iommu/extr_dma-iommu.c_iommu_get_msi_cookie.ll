; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_get_msi_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_get_msi_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i64, %struct.iommu_dma_cookie* }
%struct.iommu_dma_cookie = type { i32 }

@IOMMU_DOMAIN_UNMANAGED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@IOMMU_DMA_MSI_COOKIE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_get_msi_cookie(%struct.iommu_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iommu_dma_cookie*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %8 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IOMMU_DOMAIN_UNMANAGED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %17 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %16, i32 0, i32 1
  %18 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %17, align 8
  %19 = icmp ne %struct.iommu_dma_cookie* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EEXIST, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %15
  %24 = load i32, i32* @IOMMU_DMA_MSI_COOKIE, align 4
  %25 = call %struct.iommu_dma_cookie* @cookie_alloc(i32 %24)
  store %struct.iommu_dma_cookie* %25, %struct.iommu_dma_cookie** %6, align 8
  %26 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %6, align 8
  %27 = icmp ne %struct.iommu_dma_cookie* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %6, align 8
  %34 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %6, align 8
  %36 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %37 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %36, i32 0, i32 1
  store %struct.iommu_dma_cookie* %35, %struct.iommu_dma_cookie** %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %28, %20, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.iommu_dma_cookie* @cookie_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
