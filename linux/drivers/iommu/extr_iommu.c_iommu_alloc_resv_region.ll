; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_alloc_resv_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_alloc_resv_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_resv_region = type { i64, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iommu_resv_region* @iommu_alloc_resv_region(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iommu_resv_region*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iommu_resv_region*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.iommu_resv_region* @kzalloc(i32 24, i32 %11)
  store %struct.iommu_resv_region* %12, %struct.iommu_resv_region** %10, align 8
  %13 = load %struct.iommu_resv_region*, %struct.iommu_resv_region** %10, align 8
  %14 = icmp ne %struct.iommu_resv_region* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.iommu_resv_region* null, %struct.iommu_resv_region** %5, align 8
  br label %33

16:                                               ; preds = %4
  %17 = load %struct.iommu_resv_region*, %struct.iommu_resv_region** %10, align 8
  %18 = getelementptr inbounds %struct.iommu_resv_region, %struct.iommu_resv_region* %17, i32 0, i32 4
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.iommu_resv_region*, %struct.iommu_resv_region** %10, align 8
  %22 = getelementptr inbounds %struct.iommu_resv_region, %struct.iommu_resv_region* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.iommu_resv_region*, %struct.iommu_resv_region** %10, align 8
  %25 = getelementptr inbounds %struct.iommu_resv_region, %struct.iommu_resv_region* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.iommu_resv_region*, %struct.iommu_resv_region** %10, align 8
  %28 = getelementptr inbounds %struct.iommu_resv_region, %struct.iommu_resv_region* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.iommu_resv_region*, %struct.iommu_resv_region** %10, align 8
  %31 = getelementptr inbounds %struct.iommu_resv_region, %struct.iommu_resv_region* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.iommu_resv_region*, %struct.iommu_resv_region** %10, align 8
  store %struct.iommu_resv_region* %32, %struct.iommu_resv_region** %5, align 8
  br label %33

33:                                               ; preds = %16, %15
  %34 = load %struct.iommu_resv_region*, %struct.iommu_resv_region** %5, align 8
  ret %struct.iommu_resv_region* %34
}

declare dso_local %struct.iommu_resv_region* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
