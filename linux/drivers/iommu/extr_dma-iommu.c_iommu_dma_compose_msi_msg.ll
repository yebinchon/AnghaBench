; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_compose_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_compose_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_desc = type { i32 }
%struct.msi_msg = type { i32, i32 }
%struct.device = type { i32 }
%struct.iommu_domain = type { i32 }
%struct.iommu_dma_msi_page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_dma_compose_msi_msg(%struct.msi_desc* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.msi_desc*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.iommu_domain*, align 8
  %7 = alloca %struct.iommu_dma_msi_page*, align 8
  store %struct.msi_desc* %0, %struct.msi_desc** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %8 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %9 = call %struct.device* @msi_desc_to_dev(%struct.msi_desc* %8)
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device* %10)
  store %struct.iommu_domain* %11, %struct.iommu_domain** %6, align 8
  %12 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %13 = call %struct.iommu_dma_msi_page* @msi_desc_get_iommu_cookie(%struct.msi_desc* %12)
  store %struct.iommu_dma_msi_page* %13, %struct.iommu_dma_msi_page** %7, align 8
  %14 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %15 = icmp ne %struct.iommu_domain* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %18 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.iommu_dma_msi_page*, %struct.iommu_dma_msi_page** %7, align 8
  %23 = icmp ne %struct.iommu_dma_msi_page* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %16, %2
  br label %55

29:                                               ; preds = %21
  %30 = load %struct.iommu_dma_msi_page*, %struct.iommu_dma_msi_page** %7, align 8
  %31 = getelementptr inbounds %struct.iommu_dma_msi_page, %struct.iommu_dma_msi_page* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @upper_32_bits(i32 %32)
  %34 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %35 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %37 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cookie_msi_granule(i32 %38)
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %42 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.iommu_dma_msi_page*, %struct.iommu_dma_msi_page** %7, align 8
  %46 = getelementptr inbounds %struct.iommu_dma_msi_page, %struct.iommu_dma_msi_page* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @lower_32_bits(i32 %47)
  %49 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %50 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  br label %55

55:                                               ; preds = %29, %28
  ret void
}

declare dso_local %struct.device* @msi_desc_to_dev(%struct.msi_desc*) #1

declare dso_local %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device*) #1

declare dso_local %struct.iommu_dma_msi_page* @msi_desc_get_iommu_cookie(%struct.msi_desc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @cookie_msi_granule(i32) #1

declare dso_local i64 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
