; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_exynos_iommu_iova_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_exynos_iommu_iova_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.exynos_iommu_domain = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_domain*, i32)* @exynos_iommu_iova_to_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @exynos_iommu_iova_to_phys(%struct.iommu_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.exynos_iommu_domain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %10 = call %struct.exynos_iommu_domain* @to_exynos_domain(%struct.iommu_domain* %9)
  store %struct.exynos_iommu_domain* %10, %struct.exynos_iommu_domain** %5, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %5, align 8
  %12 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %5, align 8
  %16 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32* @section_entry(i32 %17, i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @lv1ent_section(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @section_phys(i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @section_offs(i32 %26)
  %28 = add nsw i64 %25, %27
  store i64 %28, i64* %8, align 8
  br label %59

29:                                               ; preds = %2
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @lv1ent_page(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32* @page_entry(i32* %34, i32 %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @lv2ent_large(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @lpage_phys(i32* %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @lpage_offs(i32 %43)
  %45 = add nsw i64 %42, %44
  store i64 %45, i64* %8, align 8
  br label %57

46:                                               ; preds = %33
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @lv2ent_small(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @spage_phys(i32* %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @spage_offs(i32 %53)
  %55 = add nsw i64 %52, %54
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %50, %46
  br label %57

57:                                               ; preds = %56, %40
  br label %58

58:                                               ; preds = %57, %29
  br label %59

59:                                               ; preds = %58, %23
  %60 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %5, align 8
  %61 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %60, i32 0, i32 0
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i64, i64* %8, align 8
  ret i64 %64
}

declare dso_local %struct.exynos_iommu_domain* @to_exynos_domain(%struct.iommu_domain*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32* @section_entry(i32, i32) #1

declare dso_local i64 @lv1ent_section(i32*) #1

declare dso_local i64 @section_phys(i32*) #1

declare dso_local i64 @section_offs(i32) #1

declare dso_local i64 @lv1ent_page(i32*) #1

declare dso_local i32* @page_entry(i32*, i32) #1

declare dso_local i64 @lv2ent_large(i32*) #1

declare dso_local i64 @lpage_phys(i32*) #1

declare dso_local i64 @lpage_offs(i32) #1

declare dso_local i64 @lv2ent_small(i32*) #1

declare dso_local i64 @spage_phys(i32*) #1

declare dso_local i64 @spage_offs(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
