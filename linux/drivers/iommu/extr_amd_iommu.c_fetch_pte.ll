; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_fetch_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_fetch_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i32, i32* }

@PAGE_MODE_7_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.protection_domain*, i64, i64*)* @fetch_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fetch_pte(%struct.protection_domain* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.protection_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.protection_domain* %0, %struct.protection_domain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64*, i64** %7, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.protection_domain*, %struct.protection_domain** %5, align 8
  %13 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @PM_LEVEL_SIZE(i32 %14)
  %16 = icmp ugt i64 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %86

18:                                               ; preds = %3
  %19 = load %struct.protection_domain*, %struct.protection_domain** %5, align 8
  %20 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load %struct.protection_domain*, %struct.protection_domain** %5, align 8
  %24 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @PM_LEVEL_INDEX(i32 %26, i64 %27)
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32* %29, i32** %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @PTE_LEVEL_PAGE_SIZE(i32 %30)
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %60, %18
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %33
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @IOMMU_PTE_PRESENT(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32* null, i32** %4, align 8
  br label %86

42:                                               ; preds = %36
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PM_PTE_LEVEL(i32 %44)
  %46 = icmp eq i32 %45, 7
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PM_PTE_LEVEL(i32 %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %42
  br label %74

53:                                               ; preds = %47
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PM_PTE_LEVEL(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32* null, i32** %4, align 8
  br label %86

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @IOMMU_PTE_PAGE(i32 %64)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @PM_LEVEL_INDEX(i32 %67, i64 %68)
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32* %70, i32** %9, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @PTE_LEVEL_PAGE_SIZE(i32 %71)
  %73 = load i64*, i64** %7, align 8
  store i64 %72, i64* %73, align 8
  br label %33

74:                                               ; preds = %52, %33
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @PM_PTE_LEVEL(i32 %76)
  %78 = load i32, i32* @PAGE_MODE_7_LEVEL, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32*, i32** %9, align 8
  %82 = load i64*, i64** %7, align 8
  %83 = call i32* @first_pte_l7(i32* %81, i64* %82, i32* null)
  store i32* %83, i32** %9, align 8
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i32*, i32** %9, align 8
  store i32* %85, i32** %4, align 8
  br label %86

86:                                               ; preds = %84, %59, %41, %17
  %87 = load i32*, i32** %4, align 8
  ret i32* %87
}

declare dso_local i64 @PM_LEVEL_SIZE(i32) #1

declare dso_local i64 @PM_LEVEL_INDEX(i32, i64) #1

declare dso_local i64 @PTE_LEVEL_PAGE_SIZE(i32) #1

declare dso_local i32 @IOMMU_PTE_PRESENT(i32) #1

declare dso_local i32 @PM_PTE_LEVEL(i32) #1

declare dso_local i32* @IOMMU_PTE_PAGE(i32) #1

declare dso_local i32* @first_pte_l7(i32*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
