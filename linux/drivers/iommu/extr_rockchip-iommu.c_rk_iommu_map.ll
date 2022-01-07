; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.rk_iommu_domain = type { i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, i64, i32, i64, i32)* @rk_iommu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_iommu_map(%struct.iommu_domain* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iommu_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rk_iommu_domain*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %22 = call %struct.rk_iommu_domain* @to_rk_domain(%struct.iommu_domain* %21)
  store %struct.rk_iommu_domain* %22, %struct.rk_iommu_domain** %12, align 8
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %15, align 8
  %24 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %12, align 8
  %25 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %24, i32 0, i32 1
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %12, align 8
  %29 = load i64, i64* %15, align 8
  %30 = call i64* @rk_dte_get_page_table(%struct.rk_iommu_domain* %28, i64 %29)
  store i64* %30, i64** %16, align 8
  %31 = load i64*, i64** %16, align 8
  %32 = call i64 @IS_ERR(i64* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %12, align 8
  %36 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %35, i32 0, i32 1
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i64*, i64** %16, align 8
  %40 = call i32 @PTR_ERR(i64* %39)
  store i32 %40, i32* %6, align 4
  br label %72

41:                                               ; preds = %5
  %42 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %12, align 8
  %43 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %15, align 8
  %46 = call i64 @rk_iova_dte_index(i64 %45)
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %18, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i64 @rk_iova_pte_index(i64 %49)
  store i64 %50, i64* %19, align 8
  %51 = load i64*, i64** %16, align 8
  %52 = load i64, i64* %19, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64* %53, i64** %17, align 8
  %54 = load i64, i64* %18, align 8
  %55 = call i64 @rk_dte_pt_address(i64 %54)
  %56 = load i64, i64* %19, align 8
  %57 = mul i64 %56, 8
  %58 = add i64 %55, %57
  store i64 %58, i64* %14, align 8
  %59 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %12, align 8
  %60 = load i64*, i64** %17, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @rk_iommu_map_iova(%struct.rk_iommu_domain* %59, i64* %60, i64 %61, i64 %62, i32 %63, i64 %64, i32 %65)
  store i32 %66, i32* %20, align 4
  %67 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %12, align 8
  %68 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %67, i32 0, i32 1
  %69 = load i64, i64* %13, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* %20, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %41, %34
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.rk_iommu_domain* @to_rk_domain(%struct.iommu_domain*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64* @rk_dte_get_page_table(%struct.rk_iommu_domain*, i64) #1

declare dso_local i64 @IS_ERR(i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @PTR_ERR(i64*) #1

declare dso_local i64 @rk_iova_dte_index(i64) #1

declare dso_local i64 @rk_iova_pte_index(i64) #1

declare dso_local i64 @rk_dte_pt_address(i64) #1

declare dso_local i32 @rk_iommu_map_iova(%struct.rk_iommu_domain*, i64*, i64, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
