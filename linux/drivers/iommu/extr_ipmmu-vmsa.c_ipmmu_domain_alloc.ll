; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_ipmmu-vmsa.c_ipmmu_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_domain* (i32)* @ipmmu_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_domain* @ipmmu_domain_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iommu_domain*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.iommu_domain* null, %struct.iommu_domain** %3, align 8
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %21 [
    i32 128, label %5
    i32 129, label %8
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.iommu_domain* @__ipmmu_domain_alloc(i32 %6)
  store %struct.iommu_domain* %7, %struct.iommu_domain** %3, align 8
  br label %21

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.iommu_domain* @__ipmmu_domain_alloc(i32 %9)
  store %struct.iommu_domain* %10, %struct.iommu_domain** %3, align 8
  %11 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %12 = icmp ne %struct.iommu_domain* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %15 = call i32 @iommu_get_dma_cookie(%struct.iommu_domain* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %19 = call i32 @kfree(%struct.iommu_domain* %18)
  store %struct.iommu_domain* null, %struct.iommu_domain** %3, align 8
  br label %20

20:                                               ; preds = %17, %13, %8
  br label %21

21:                                               ; preds = %1, %20, %5
  %22 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  ret %struct.iommu_domain* %22
}

declare dso_local %struct.iommu_domain* @__ipmmu_domain_alloc(i32) #1

declare dso_local i32 @iommu_get_dma_cookie(%struct.iommu_domain*) #1

declare dso_local i32 @kfree(%struct.iommu_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
