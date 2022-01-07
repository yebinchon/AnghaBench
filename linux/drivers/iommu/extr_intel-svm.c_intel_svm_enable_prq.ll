; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-svm.c_intel_svm_enable_prq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-svm.c_intel_svm_enable_prq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i32, i32*, i64, i32, i32, i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PRQ_ORDER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"IOMMU: %s: Failed to allocate page request queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMAR_UNITS_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"IOMMU: %s: Failed to create IRQ vector for page request queue\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"dmar%d-prq\00", align 1
@prq_event_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"IOMMU: %s: Failed to request IRQ for page request queue\0A\00", align 1
@DMAR_PQH_REG = common dso_local global i64 0, align 8
@DMAR_PQT_REG = common dso_local global i64 0, align 8
@DMAR_PQA_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_svm_enable_prq(%struct.intel_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_iommu*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = load i32, i32* @__GFP_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = load i64, i64* @PRQ_ORDER, align 8
  %11 = call %struct.page* @alloc_pages(i32 %9, i64 %10)
  store %struct.page* %11, %struct.page** %4, align 8
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = icmp ne %struct.page* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %16 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %110

21:                                               ; preds = %1
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i32* @page_address(%struct.page* %22)
  %24 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %25 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* @DMAR_UNITS_SUPPORTED, align 4
  %27 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %28 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %26, %29
  %31 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %32 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %35 = call i32 @dmar_alloc_hwirq(i32 %30, i32 %33, %struct.intel_iommu* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %21
  %39 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %40 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %76, %38
  %46 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %47 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = ptrtoint i32* %48 to i64
  %50 = load i64, i64* @PRQ_ORDER, align 8
  %51 = call i32 @free_pages(i64 %49, i64 %50)
  %52 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %53 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %110

55:                                               ; preds = %21
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %58 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %60 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %63 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @snprintf(i32 %61, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @prq_event_thread, align 4
  %68 = load i32, i32* @IRQF_ONESHOT, align 4
  %69 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %70 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %73 = call i32 @request_threaded_irq(i32 %66, i32* null, i32 %67, i32 %68, i32 %71, %struct.intel_iommu* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %55
  %77 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %78 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @dmar_free_hwirq(i32 %81)
  %83 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %84 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  br label %45

85:                                               ; preds = %55
  %86 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %87 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DMAR_PQH_REG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @dmar_writeq(i64 %90, i64 0)
  %92 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %93 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DMAR_PQT_REG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @dmar_writeq(i64 %96, i64 0)
  %98 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %99 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @DMAR_PQA_REG, align 8
  %102 = add nsw i64 %100, %101
  %103 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %104 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @virt_to_phys(i32* %105)
  %107 = load i64, i64* @PRQ_ORDER, align 8
  %108 = or i64 %106, %107
  %109 = call i32 @dmar_writeq(i64 %102, i64 %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %85, %45, %14
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.page* @alloc_pages(i32, i64) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32* @page_address(%struct.page*) #1

declare dso_local i32 @dmar_alloc_hwirq(i32, i32, %struct.intel_iommu*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @free_pages(i64, i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.intel_iommu*) #1

declare dso_local i32 @dmar_free_hwirq(i32) #1

declare dso_local i32 @dmar_writeq(i64, i64) #1

declare dso_local i64 @virt_to_phys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
