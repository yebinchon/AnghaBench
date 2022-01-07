; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_restore_tlb_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_restore_tlb_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu = type { i32, %struct.cr_regs* }
%struct.cr_regs = type { i32 }
%struct.iotlb_lock = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_iommu*)* @omap_iommu_restore_tlb_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_iommu_restore_tlb_entries(%struct.omap_iommu* %0) #0 {
  %2 = alloca %struct.omap_iommu*, align 8
  %3 = alloca %struct.iotlb_lock, align 4
  %4 = alloca %struct.cr_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.omap_iommu* %0, %struct.omap_iommu** %2, align 8
  %6 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %7 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %44

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.iotlb_lock, %struct.iotlb_lock* %3, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %14 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %13, i32 0, i32 1
  %15 = load %struct.cr_regs*, %struct.cr_regs** %14, align 8
  store %struct.cr_regs* %15, %struct.cr_regs** %4, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %30, %11
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %19 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds %struct.iotlb_lock, %struct.iotlb_lock* %3, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %26 = call i32 @iotlb_lock_set(%struct.omap_iommu* %25, %struct.iotlb_lock* %3)
  %27 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %28 = load %struct.cr_regs*, %struct.cr_regs** %4, align 8
  %29 = call i32 @iotlb_load_cr(%struct.omap_iommu* %27, %struct.cr_regs* %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = load %struct.cr_regs*, %struct.cr_regs** %4, align 8
  %34 = getelementptr inbounds %struct.cr_regs, %struct.cr_regs* %33, i32 1
  store %struct.cr_regs* %34, %struct.cr_regs** %4, align 8
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %37 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.iotlb_lock, %struct.iotlb_lock* %3, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds %struct.iotlb_lock, %struct.iotlb_lock* %3, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %43 = call i32 @iotlb_lock_set(%struct.omap_iommu* %42, %struct.iotlb_lock* %3)
  br label %44

44:                                               ; preds = %35, %10
  ret void
}

declare dso_local i32 @iotlb_lock_set(%struct.omap_iommu*, %struct.iotlb_lock*) #1

declare dso_local i32 @iotlb_load_cr(%struct.omap_iommu*, %struct.cr_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
