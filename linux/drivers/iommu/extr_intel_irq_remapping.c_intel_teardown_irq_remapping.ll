; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_teardown_irq_remapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_teardown_irq_remapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i64 }

@INTR_REMAP_PAGE_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*)* @intel_teardown_irq_remapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_teardown_irq_remapping(%struct.intel_iommu* %0) #0 {
  %2 = alloca %struct.intel_iommu*, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %2, align 8
  %3 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %4 = icmp ne %struct.intel_iommu* %3, null
  br i1 %4, label %5, label %54

5:                                                ; preds = %1
  %6 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %7 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %54

10:                                               ; preds = %5
  %11 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %12 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %17 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @irq_domain_remove(i32* %18)
  %20 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %21 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15, %10
  %23 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %24 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %29 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @irq_domain_remove(i32* %30)
  %32 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %33 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %36 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @INTR_REMAP_PAGE_ORDER, align 4
  %41 = call i32 @free_pages(i64 %39, i32 %40)
  %42 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %43 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bitmap_free(i32 %46)
  %48 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %49 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @kfree(%struct.TYPE_2__* %50)
  %52 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %53 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %52, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %53, align 8
  br label %54

54:                                               ; preds = %34, %5, %1
  ret void
}

declare dso_local i32 @irq_domain_remove(i32*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @bitmap_free(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
