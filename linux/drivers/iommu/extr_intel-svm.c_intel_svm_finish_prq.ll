; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-svm.c_intel_svm_finish_prq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-svm.c_intel_svm_finish_prq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32*, i64, i64 }

@DMAR_PQH_REG = common dso_local global i64 0, align 8
@DMAR_PQT_REG = common dso_local global i64 0, align 8
@DMAR_PQA_REG = common dso_local global i64 0, align 8
@PRQ_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_svm_finish_prq(%struct.intel_iommu* %0) #0 {
  %2 = alloca %struct.intel_iommu*, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %2, align 8
  %3 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %4 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DMAR_PQH_REG, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @dmar_writeq(i64 %7, i64 0)
  %9 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %10 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DMAR_PQT_REG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @dmar_writeq(i64 %13, i64 0)
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %16 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DMAR_PQA_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @dmar_writeq(i64 %19, i64 0)
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %22 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %1
  %26 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %27 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %30 = call i32 @free_irq(i64 %28, %struct.intel_iommu* %29)
  %31 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %32 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dmar_free_hwirq(i64 %33)
  %35 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %36 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %25, %1
  %38 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %39 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = ptrtoint i32* %40 to i64
  %42 = load i32, i32* @PRQ_ORDER, align 4
  %43 = call i32 @free_pages(i64 %41, i32 %42)
  %44 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %45 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  ret i32 0
}

declare dso_local i32 @dmar_writeq(i64, i64) #1

declare dso_local i32 @free_irq(i64, %struct.intel_iommu*) #1

declare dso_local i32 @dmar_free_hwirq(i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
