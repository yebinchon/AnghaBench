; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.mtk_iommu_domain = type { i32*, i32, i32 }

@MT2701_IOMMU_PAGE_SHIFT = common dso_local global i64 0, align 8
@F_DESC_VALID = common dso_local global i32 0, align 4
@F_DESC_NONSEC = common dso_local global i32 0, align 4
@MT2701_IOMMU_PAGE_SIZE = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, i64, i32, i64, i32)* @mtk_iommu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_iommu_map(%struct.iommu_domain* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.iommu_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mtk_iommu_domain*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %19 = call %struct.mtk_iommu_domain* @to_mtk_domain(%struct.iommu_domain* %18)
  store %struct.mtk_iommu_domain* %19, %struct.mtk_iommu_domain** %11, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @MT2701_IOMMU_PAGE_SHIFT, align 8
  %22 = lshr i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %11, align 8
  %25 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @MT2701_IOMMU_PAGE_SHIFT, align 8
  %29 = lshr i64 %27, %28
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32* %30, i32** %15, align 8
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %32 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %11, align 8
  %33 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %32, i32 0, i32 2
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %74, %5
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %36
  %41 = load i32*, i32** %15, align 8
  %42 = load i32, i32* %14, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %14, align 4
  %50 = zext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memset(i32* %48, i32 0, i32 %52)
  br label %77

54:                                               ; preds = %40
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @F_DESC_VALID, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @F_DESC_NONSEC, align 4
  %59 = or i32 %57, %58
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* %14, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load i64, i64* @MT2701_IOMMU_PAGE_SIZE, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %16, align 4
  %69 = load i64, i64* @MT2701_IOMMU_PAGE_SIZE, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %54
  %75 = load i32, i32* %14, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %36

77:                                               ; preds = %47, %36
  %78 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %11, align 8
  %79 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %78, i32 0, i32 2
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %11, align 8
  %83 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @mtk_iommu_tlb_flush_range(i32 %84, i64 %85, i64 %86)
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %9, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %77
  br label %96

93:                                               ; preds = %77
  %94 = load i32, i32* @EEXIST, align 4
  %95 = sub nsw i32 0, %94
  br label %96

96:                                               ; preds = %93, %92
  %97 = phi i32 [ 0, %92 ], [ %95, %93 ]
  ret i32 %97
}

declare dso_local %struct.mtk_iommu_domain* @to_mtk_domain(%struct.iommu_domain*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mtk_iommu_tlb_flush_range(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
