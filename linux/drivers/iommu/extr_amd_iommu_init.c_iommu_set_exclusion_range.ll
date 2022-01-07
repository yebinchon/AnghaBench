; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_init.c_iommu_set_exclusion_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_init.c_iommu_set_exclusion_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32, i32, i64 }

@PAGE_MASK = common dso_local global i32 0, align 4
@MMIO_EXCL_ENABLE_MASK = common dso_local global i32 0, align 4
@MMIO_EXCL_BASE_OFFSET = common dso_local global i64 0, align 8
@MMIO_EXCL_LIMIT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*)* @iommu_set_exclusion_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_set_exclusion_range(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  %6 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %7 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PAGE_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %13 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* @PAGE_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %20 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %41

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MMIO_EXCL_ENABLE_MASK, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %29 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MMIO_EXCL_BASE_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @memcpy_toio(i64 %32, i32* %5, i32 4)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %36 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MMIO_EXCL_LIMIT_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @memcpy_toio(i64 %39, i32* %5, i32 4)
  br label %41

41:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @memcpy_toio(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
