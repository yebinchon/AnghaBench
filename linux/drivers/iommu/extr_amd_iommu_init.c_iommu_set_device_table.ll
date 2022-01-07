; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_init.c_iommu_set_device_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_init.c_iommu_set_device_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32* }

@amd_iommu_dev_table = common dso_local global i32 0, align 4
@dev_table_size = common dso_local global i32 0, align 4
@MMIO_DEV_TABLE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*)* @iommu_set_device_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_set_device_table(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  %3 = alloca i32, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  %4 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %5 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load i32, i32* @amd_iommu_dev_table, align 4
  %11 = call i32 @iommu_virt_to_phys(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @dev_table_size, align 4
  %13 = ashr i32 %12, 12
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %18 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @MMIO_DEV_TABLE_OFFSET, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @memcpy_toio(i32* %22, i32* %3, i32 4)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iommu_virt_to_phys(i32) #1

declare dso_local i32 @memcpy_toio(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
