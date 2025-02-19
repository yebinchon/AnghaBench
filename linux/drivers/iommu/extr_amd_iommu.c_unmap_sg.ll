; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32 }
%struct.protection_domain = type { i32 }
%struct.dma_ops_domain = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, i32, i32, i64)* @unmap_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_sg(%struct.device* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.protection_domain*, align 8
  %12 = alloca %struct.dma_ops_domain*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.protection_domain* @get_domain(%struct.device* %15)
  store %struct.protection_domain* %16, %struct.protection_domain** %11, align 8
  %17 = load %struct.protection_domain*, %struct.protection_domain** %11, align 8
  %18 = call i64 @IS_ERR(%struct.protection_domain* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %39

21:                                               ; preds = %5
  %22 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %23 = call i64 @sg_dma_address(%struct.scatterlist* %22)
  %24 = load i64, i64* @PAGE_MASK, align 8
  %25 = and i64 %23, %24
  store i64 %25, i64* %13, align 8
  %26 = load %struct.protection_domain*, %struct.protection_domain** %11, align 8
  %27 = call %struct.dma_ops_domain* @to_dma_ops_domain(%struct.protection_domain* %26)
  store %struct.dma_ops_domain* %27, %struct.dma_ops_domain** %12, align 8
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @sg_num_pages(%struct.device* %28, %struct.scatterlist* %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @__unmap_single(%struct.dma_ops_domain* %32, i64 %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.protection_domain* @get_domain(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.protection_domain*) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local %struct.dma_ops_domain* @to_dma_ops_domain(%struct.protection_domain*) #1

declare dso_local i32 @sg_num_pages(%struct.device*, %struct.scatterlist*, i32) #1

declare dso_local i32 @__unmap_single(%struct.dma_ops_domain*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
