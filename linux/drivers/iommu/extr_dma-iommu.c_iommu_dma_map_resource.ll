; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_map_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_map_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@IOMMU_MMIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64, i32, i64)* @iommu_dma_map_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_dma_map_resource(%struct.device* %0, i32 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i64, i64* %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @dma_info_to_prot(i32 %14, i32 0, i64 %15)
  %17 = load i32, i32* @IOMMU_MMIO, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @__iommu_dma_map(%struct.device* %11, i32 %12, i64 %13, i32 %18)
  ret i32 %19
}

declare dso_local i32 @__iommu_dma_map(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @dma_info_to_prot(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
