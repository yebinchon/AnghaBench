; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_dra7_cfg_dspsys_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_dra7_cfg_dspsys_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu = type { i32, i32 }

@DSP_SYS_MMU_CONFIG_EN_SHIFT = common dso_local global i32 0, align 4
@DSP_SYS_MMU_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_iommu*, i32)* @dra7_cfg_dspsys_mmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dra7_cfg_dspsys_mmu(%struct.omap_iommu* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_iommu* %0, %struct.omap_iommu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %8 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %14 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DSP_SYS_MMU_CONFIG_EN_SHIFT, align 4
  %17 = mul nsw i32 %15, %16
  %18 = shl i32 1, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  br label %24

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  store i32 %25, i32* %5, align 4
  %26 = load %struct.omap_iommu*, %struct.omap_iommu** %3, align 8
  %27 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DSP_SYS_MMU_CONFIG, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %11
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
