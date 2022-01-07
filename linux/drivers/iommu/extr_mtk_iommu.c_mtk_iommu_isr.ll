; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_iommu_data = type { i64, i32, %struct.TYPE_2__*, %struct.mtk_iommu_domain* }
%struct.TYPE_2__ = type { i32* }
%struct.mtk_iommu_domain = type { i32 }

@REG_MMU_FAULT_ST1 = common dso_local global i64 0, align 8
@F_REG_MMU0_FAULT_MASK = common dso_local global i32 0, align 4
@REG_MMU0_INT_ID = common dso_local global i64 0, align 8
@REG_MMU0_FAULT_VA = common dso_local global i64 0, align 8
@REG_MMU0_INVLD_PA = common dso_local global i64 0, align 8
@REG_MMU1_INT_ID = common dso_local global i64 0, align 8
@REG_MMU1_FAULT_VA = common dso_local global i64 0, align 8
@REG_MMU1_INVLD_PA = common dso_local global i64 0, align 8
@F_MMU_FAULT_VA_LAYER_BIT = common dso_local global i32 0, align 4
@F_MMU_FAULT_VA_WRITE_BIT = common dso_local global i32 0, align 4
@IOMMU_FAULT_WRITE = common dso_local global i32 0, align 4
@IOMMU_FAULT_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"fault type=0x%x iova=0x%x pa=0x%x larb=%d port=%d layer=%d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@REG_MMU_INT_CONTROL0 = common dso_local global i64 0, align 8
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.mtk_iommu_data*
  store %struct.mtk_iommu_data* %16, %struct.mtk_iommu_data** %5, align 8
  %17 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %18 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %17, i32 0, i32 3
  %19 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %18, align 8
  store %struct.mtk_iommu_domain* %19, %struct.mtk_iommu_domain** %6, align 8
  %20 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %21 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REG_MMU_FAULT_ST1, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @F_REG_MMU0_FAULT_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %2
  %31 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %32 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REG_MMU0_INT_ID, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl_relaxed(i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %38 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @REG_MMU0_FAULT_VA, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl_relaxed(i64 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %44 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @REG_MMU0_INVLD_PA, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readl_relaxed(i64 %47)
  store i32 %48, i32* %10, align 4
  br label %68

49:                                               ; preds = %2
  %50 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %51 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @REG_MMU1_INT_ID, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl_relaxed(i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %57 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @REG_MMU1_FAULT_VA, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readl_relaxed(i64 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %63 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @REG_MMU1_INVLD_PA, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readl_relaxed(i64 %66)
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %49, %30
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @F_MMU_FAULT_VA_LAYER_BIT, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @F_MMU_FAULT_VA_WRITE_BIT, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @F_MMU_INT_ID_LARB_ID(i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @F_MMU_INT_ID_PORT_ID(i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %80 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %11, align 4
  %88 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %6, align 8
  %89 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %88, i32 0, i32 0
  %90 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %91 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %68
  %97 = load i32, i32* @IOMMU_FAULT_WRITE, align 4
  br label %100

98:                                               ; preds = %68
  %99 = load i32, i32* @IOMMU_FAULT_READ, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = call i64 @report_iommu_fault(i32* %89, i32 %92, i32 %93, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %100
  %105 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %106 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %118 = call i32 @dev_err_ratelimited(i32 %107, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i8* %117)
  br label %119

119:                                              ; preds = %104, %100
  %120 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %121 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @REG_MMU_INT_CONTROL0, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @readl_relaxed(i64 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* @F_INT_CLR_BIT, align 4
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %131 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @REG_MMU_INT_CONTROL0, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @writel_relaxed(i32 %129, i64 %134)
  %136 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %137 = call i32 @mtk_iommu_tlb_flush_all(%struct.mtk_iommu_data* %136)
  %138 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %138
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @F_MMU_INT_ID_LARB_ID(i32) #1

declare dso_local i32 @F_MMU_INT_ID_PORT_ID(i32) #1

declare dso_local i64 @report_iommu_fault(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @mtk_iommu_tlb_flush_all(%struct.mtk_iommu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
