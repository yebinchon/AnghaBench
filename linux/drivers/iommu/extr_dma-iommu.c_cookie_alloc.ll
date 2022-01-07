; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_cookie_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_cookie_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_dma_cookie = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_dma_cookie* (i32)* @cookie_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_dma_cookie* @cookie_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iommu_dma_cookie*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.iommu_dma_cookie* @kzalloc(i32 12, i32 %4)
  store %struct.iommu_dma_cookie* %5, %struct.iommu_dma_cookie** %3, align 8
  %6 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %3, align 8
  %7 = icmp ne %struct.iommu_dma_cookie* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %3, align 8
  %10 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %3, align 8
  %13 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %12, i32 0, i32 1
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %3, align 8
  %17 = getelementptr inbounds %struct.iommu_dma_cookie, %struct.iommu_dma_cookie* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.iommu_dma_cookie*, %struct.iommu_dma_cookie** %3, align 8
  ret %struct.iommu_dma_cookie* %19
}

declare dso_local %struct.iommu_dma_cookie* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
