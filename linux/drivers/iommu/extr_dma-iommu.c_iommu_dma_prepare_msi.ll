; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_prepare_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_prepare_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_desc = type { i32* }
%struct.device = type { i32 }
%struct.iommu_domain = type { %struct.iommu_dma_cookie* }
%struct.iommu_dma_cookie = type { i32 }
%struct.iommu_dma_msi_page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_dma_prepare_msi(%struct.msi_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msi_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.iommu_domain*, align 8
  %8 = alloca %struct.iommu_dma_cookie*, align 8
  %9 = alloca %struct.iommu_dma_msi_page*, align 8
  %10 = alloca i64, align 8
  store %struct.msi_desc* %0, %struct.msi_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %12 = call %struct.device* @msi_desc_to_dev(%struct.msi_desc* %11)
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device* %13)
  store %struct.iommu_domain* %14, %struct.iommu_domain** %7, align 8
  %15 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %16 = icmp ne %struct.iommu_domain* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %19 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %18, i32 0, i32 0
  %20 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %19, align 8
  %21 = icmp ne %struct.iommu_dma_cookie* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %24 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  store i32 0, i32* %3, align 4
  br label %50

25:                                               ; preds = %17
  %26 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %27 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %26, i32 0, i32 0
  %28 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %27, align 8
  store %struct.iommu_dma_cookie* %28, %struct.iommu_dma_cookie** %8, align 8
  %29 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %8, align 8
  %30 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %29, i32 0, i32 0
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %36 = call %struct.iommu_dma_msi_page* @iommu_dma_get_msi_page(%struct.device* %33, i32 %34, %struct.iommu_domain* %35)
  store %struct.iommu_dma_msi_page* %36, %struct.iommu_dma_msi_page** %9, align 8
  %37 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %8, align 8
  %38 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %37, i32 0, i32 0
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %42 = load %struct.iommu_dma_msi_page*, %struct.iommu_dma_msi_page** %9, align 8
  %43 = call i32 @msi_desc_set_iommu_cookie(%struct.msi_desc* %41, %struct.iommu_dma_msi_page* %42)
  %44 = load %struct.iommu_dma_msi_page*, %struct.iommu_dma_msi_page** %9, align 8
  %45 = icmp ne %struct.iommu_dma_msi_page* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %25
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.device* @msi_desc_to_dev(%struct.msi_desc*) #1

declare dso_local %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.iommu_dma_msi_page* @iommu_dma_get_msi_page(%struct.device*, i32, %struct.iommu_domain*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msi_desc_set_iommu_cookie(%struct.msi_desc*, %struct.iommu_dma_msi_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
