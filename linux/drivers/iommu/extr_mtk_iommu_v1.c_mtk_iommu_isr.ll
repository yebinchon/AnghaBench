; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_iommu_data = type { i64, i32, %struct.mtk_iommu_domain* }
%struct.mtk_iommu_domain = type { i32 }

@REG_MMU_FAULT_ST = common dso_local global i64 0, align 8
@REG_MMU_FAULT_VA = common dso_local global i64 0, align 8
@F_MMU_FAULT_VA_MSK = common dso_local global i32 0, align 4
@REG_MMU_INVLD_PA = common dso_local global i64 0, align 8
@REG_MMU_INT_ID = common dso_local global i64 0, align 8
@IOMMU_FAULT_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"fault type=0x%x iova=0x%x pa=0x%x larb=%d port=%d\0A\00", align 1
@REG_MMU_INT_CONTROL = common dso_local global i64 0, align 8
@F_INT_CLR_BIT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_iommu_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_iommu_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtk_iommu_data*, align 8
  %6 = alloca %struct.mtk_iommu_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.mtk_iommu_data*
  store %struct.mtk_iommu_data* %14, %struct.mtk_iommu_data** %5, align 8
  %15 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %16 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %15, i32 0, i32 2
  %17 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %16, align 8
  store %struct.mtk_iommu_domain* %17, %struct.mtk_iommu_domain** %6, align 8
  %18 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %19 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_MMU_FAULT_ST, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REG_MMU_FAULT_VA, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl_relaxed(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @F_MMU_FAULT_VA_MSK, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %34 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REG_MMU_INVLD_PA, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl_relaxed(i64 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %40 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @REG_MMU_INT_ID, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl_relaxed(i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @MT2701_M4U_TF_LARB(i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @MT2701_M4U_TF_PORT(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %6, align 8
  %50 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %49, i32 0, i32 0
  %51 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %52 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @IOMMU_FAULT_READ, align 4
  %56 = call i64 @report_iommu_fault(i32* %50, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %2
  %59 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %60 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @dev_err_ratelimited(i32 %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %58, %2
  %69 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %70 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @REG_MMU_INT_CONTROL, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readl_relaxed(i64 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @F_INT_CLR_BIT, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %80 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @REG_MMU_INT_CONTROL, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel_relaxed(i32 %78, i64 %83)
  %85 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %86 = call i32 @mtk_iommu_tlb_flush_all(%struct.mtk_iommu_data* %85)
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %87
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @MT2701_M4U_TF_LARB(i32) #1

declare dso_local i32 @MT2701_M4U_TF_PORT(i32) #1

declare dso_local i64 @report_iommu_fault(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @mtk_iommu_tlb_flush_all(%struct.mtk_iommu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
