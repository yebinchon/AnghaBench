; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_iotlb_load_cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_iotlb_load_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu = type { i32 }
%struct.cr_regs = type { i32, i32 }

@MMU_CAM_V = common dso_local global i32 0, align 4
@MMU_CAM = common dso_local global i32 0, align 4
@MMU_RAM = common dso_local global i32 0, align 4
@MMU_FLUSH_ENTRY = common dso_local global i32 0, align 4
@MMU_LD_TLB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_iommu*, %struct.cr_regs*)* @iotlb_load_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iotlb_load_cr(%struct.omap_iommu* %0, %struct.cr_regs* %1) #0 {
  %3 = alloca %struct.omap_iommu*, align 8
  %4 = alloca %struct.cr_regs*, align 8
  store %struct.omap_iommu* %0, %struct.omap_iommu** %3, align 8
  store %struct.cr_regs* %1, %struct.cr_regs** %4, align 8
  %5 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %6 = load %struct.cr_regs*, %struct.cr_regs** %4, align 8
  %7 = getelementptr inbounds %struct.cr_regs, %struct.cr_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MMU_CAM_V, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MMU_CAM, align 4
  %12 = call i32 @iommu_write_reg(%struct.omap_iommu* %5, i32 %10, i32 %11)
  %13 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %14 = load %struct.cr_regs*, %struct.cr_regs** %4, align 8
  %15 = getelementptr inbounds %struct.cr_regs, %struct.cr_regs* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MMU_RAM, align 4
  %18 = call i32 @iommu_write_reg(%struct.omap_iommu* %13, i32 %16, i32 %17)
  %19 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %20 = load i32, i32* @MMU_FLUSH_ENTRY, align 4
  %21 = call i32 @iommu_write_reg(%struct.omap_iommu* %19, i32 1, i32 %20)
  %22 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %23 = load i32, i32* @MMU_LD_TLB, align 4
  %24 = call i32 @iommu_write_reg(%struct.omap_iommu* %22, i32 1, i32 %23)
  ret void
}

declare dso_local i32 @iommu_write_reg(%struct.omap_iommu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
