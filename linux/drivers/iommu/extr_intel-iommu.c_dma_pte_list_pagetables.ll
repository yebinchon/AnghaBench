; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dma_pte_list_pagetables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_dma_pte_list_pagetables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.dma_pte = type { i32 }
%struct.page = type { %struct.page* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.dmar_domain*, i32, %struct.dma_pte*, %struct.page*)* @dma_pte_list_pagetables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @dma_pte_list_pagetables(%struct.dmar_domain* %0, i32 %1, %struct.dma_pte* %2, %struct.page* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.dmar_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_pte*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dma_pte* %2, %struct.dma_pte** %8, align 8
  store %struct.page* %3, %struct.page** %9, align 8
  %11 = load %struct.dma_pte*, %struct.dma_pte** %8, align 8
  %12 = call i32 @dma_pte_addr(%struct.dma_pte* %11)
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = call %struct.page* @pfn_to_page(i32 %14)
  store %struct.page* %15, %struct.page** %10, align 8
  %16 = load %struct.page*, %struct.page** %9, align 8
  %17 = load %struct.page*, %struct.page** %10, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 0
  store %struct.page* %16, %struct.page** %18, align 8
  %19 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %19, %struct.page** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %23, %struct.page** %5, align 8
  br label %52

24:                                               ; preds = %4
  %25 = load %struct.page*, %struct.page** %10, align 8
  %26 = call %struct.dma_pte* @page_address(%struct.page* %25)
  store %struct.dma_pte* %26, %struct.dma_pte** %8, align 8
  br label %27

27:                                               ; preds = %45, %24
  %28 = load %struct.dma_pte*, %struct.dma_pte** %8, align 8
  %29 = call i64 @dma_pte_present(%struct.dma_pte* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.dma_pte*, %struct.dma_pte** %8, align 8
  %33 = call i32 @dma_pte_superpage(%struct.dma_pte* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.dma_pte*, %struct.dma_pte** %8, align 8
  %40 = load %struct.page*, %struct.page** %9, align 8
  %41 = call %struct.page* @dma_pte_list_pagetables(%struct.dmar_domain* %36, i32 %38, %struct.dma_pte* %39, %struct.page* %40)
  store %struct.page* %41, %struct.page** %9, align 8
  br label %42

42:                                               ; preds = %35, %31, %27
  %43 = load %struct.dma_pte*, %struct.dma_pte** %8, align 8
  %44 = getelementptr inbounds %struct.dma_pte, %struct.dma_pte* %43, i32 1
  store %struct.dma_pte* %44, %struct.dma_pte** %8, align 8
  br label %45

45:                                               ; preds = %42
  %46 = load %struct.dma_pte*, %struct.dma_pte** %8, align 8
  %47 = call i32 @first_pte_in_page(%struct.dma_pte* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %27, label %50

50:                                               ; preds = %45
  %51 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %51, %struct.page** %5, align 8
  br label %52

52:                                               ; preds = %50, %22
  %53 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %53
}

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @dma_pte_addr(%struct.dma_pte*) #1

declare dso_local %struct.dma_pte* @page_address(%struct.page*) #1

declare dso_local i64 @dma_pte_present(%struct.dma_pte*) #1

declare dso_local i32 @dma_pte_superpage(%struct.dma_pte*) #1

declare dso_local i32 @first_pte_in_page(%struct.dma_pte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
