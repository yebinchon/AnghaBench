; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_iopgtable_clear_entry_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_iopgtable_clear_entry_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu = type { i32, i32, i32 }

@PTRS_PER_IOPGD = common dso_local global i32 0, align 4
@IOPGD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_iommu*)* @iopgtable_clear_entry_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iopgtable_clear_entry_all(%struct.omap_iommu* %0) #0 {
  %2 = alloca %struct.omap_iommu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.omap_iommu* %0, %struct.omap_iommu** %2, align 8
  %7 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %8 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %49, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PTRS_PER_IOPGD, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @IOPGD_SHIFT, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32* @iopgd_offset(%struct.omap_iommu* %18, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @iopgd_index(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  store i64 %24, i64* %3, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %14
  br label %49

29:                                               ; preds = %14
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @iopgd_is_table(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @iopte_offset(i32* %36, i32 0)
  %38 = call i32 @iopte_free(%struct.omap_iommu* %35, i32 %37, i32 1)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32*, i32** %6, align 8
  store i32 0, i32* %40, align 4
  %41 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %42 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %45 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @flush_iopte_range(i32 %43, i32 %46, i64 %47, i32 1)
  br label %49

49:                                               ; preds = %39, %28
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %10

52:                                               ; preds = %10
  %53 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %54 = call i32 @flush_iotlb_all(%struct.omap_iommu* %53)
  %55 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %56 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @iopgd_offset(%struct.omap_iommu*, i32) #1

declare dso_local i32 @iopgd_index(i32) #1

declare dso_local i64 @iopgd_is_table(i32) #1

declare dso_local i32 @iopte_free(%struct.omap_iommu*, i32, i32) #1

declare dso_local i32 @iopte_offset(i32*, i32) #1

declare dso_local i32 @flush_iopte_range(i32, i32, i64, i32) #1

declare dso_local i32 @flush_iotlb_all(%struct.omap_iommu*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
