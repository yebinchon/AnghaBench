; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i64, i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*)* @domain_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domain_exit(%struct.dmar_domain* %0) #0 {
  %2 = alloca %struct.dmar_domain*, align 8
  %3 = alloca %struct.page*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %2, align 8
  %4 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %5 = call i32 @domain_remove_dev_info(%struct.dmar_domain* %4)
  %6 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %7 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %6, i32 0, i32 2
  %8 = call i32 @put_iova_domain(i32* %7)
  %9 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %10 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %15 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %16 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @DOMAIN_MAX_PFN(i32 %17)
  %19 = call %struct.page* @domain_unmap(%struct.dmar_domain* %14, i32 0, i32 %18)
  store %struct.page* %19, %struct.page** %3, align 8
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = call i32 @dma_free_pagelist(%struct.page* %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %24 = call i32 @free_domain_mem(%struct.dmar_domain* %23)
  ret void
}

declare dso_local i32 @domain_remove_dev_info(%struct.dmar_domain*) #1

declare dso_local i32 @put_iova_domain(i32*) #1

declare dso_local %struct.page* @domain_unmap(%struct.dmar_domain*, i32, i32) #1

declare dso_local i32 @DOMAIN_MAX_PFN(i32) #1

declare dso_local i32 @dma_free_pagelist(%struct.page*) #1

declare dso_local i32 @free_domain_mem(%struct.dmar_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
