; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.iommu_iotlb_gather = type { i32 }
%struct.rk_iommu_domain = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_domain*, i64, i64, %struct.iommu_iotlb_gather*)* @rk_iommu_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rk_iommu_unmap(%struct.iommu_domain* %0, i64 %1, i64 %2, %struct.iommu_iotlb_gather* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iommu_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iommu_iotlb_gather*, align 8
  %10 = alloca %struct.rk_iommu_domain*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.iommu_iotlb_gather* %3, %struct.iommu_iotlb_gather** %9, align 8
  %18 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %19 = call %struct.rk_iommu_domain* @to_rk_domain(%struct.iommu_domain* %18)
  store %struct.rk_iommu_domain* %19, %struct.rk_iommu_domain** %10, align 8
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %13, align 8
  %21 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %10, align 8
  %22 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %21, i32 0, i32 0
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %10, align 8
  %26 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i64 @rk_iova_dte_index(i64 %28)
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @rk_dte_is_pt_valid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %4
  %36 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %10, align 8
  %37 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %36, i32 0, i32 0
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  store i64 0, i64* %5, align 8
  br label %70

40:                                               ; preds = %4
  %41 = load i32, i32* %15, align 4
  %42 = call i64 @rk_dte_pt_address(i32 %41)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i64 @phys_to_virt(i64 %43)
  %45 = inttoptr i64 %44 to i32*
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @rk_iova_pte_index(i64 %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32* %49, i32** %16, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @rk_iova_pte_index(i64 %51)
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = add i64 %50, %54
  store i64 %55, i64* %12, align 8
  %56 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %10, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @rk_iommu_unmap_iova(%struct.rk_iommu_domain* %56, i32* %57, i64 %58, i64 %59)
  store i64 %60, i64* %17, align 8
  %61 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %10, align 8
  %62 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %61, i32 0, i32 0
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %10, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %17, align 8
  %68 = call i32 @rk_iommu_zap_iova(%struct.rk_iommu_domain* %65, i64 %66, i64 %67)
  %69 = load i64, i64* %17, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %40, %35
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local %struct.rk_iommu_domain* @to_rk_domain(%struct.iommu_domain*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @rk_iova_dte_index(i64) #1

declare dso_local i32 @rk_dte_is_pt_valid(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @rk_dte_pt_address(i32) #1

declare dso_local i64 @phys_to_virt(i64) #1

declare dso_local i32 @rk_iova_pte_index(i64) #1

declare dso_local i64 @rk_iommu_unmap_iova(%struct.rk_iommu_domain*, i32*, i64, i64) #1

declare dso_local i32 @rk_iommu_zap_iova(%struct.rk_iommu_domain*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
