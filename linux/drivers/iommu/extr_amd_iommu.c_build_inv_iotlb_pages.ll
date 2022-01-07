; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_build_inv_iotlb_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_build_inv_iotlb_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_cmd = type { i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@CMD_INV_IOMMU_ALL_PAGES_ADDRESS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@CMD_INV_IOTLB_PAGES = common dso_local global i32 0, align 4
@CMD_INV_IOMMU_PAGES_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_cmd*, i8*, i32, i32, i64)* @build_inv_iotlb_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_inv_iotlb_pages(%struct.iommu_cmd* %0, i8* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.iommu_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iommu_cmd* %0, %struct.iommu_cmd** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i64, i64* %10, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i32 @iommu_num_pages(i32 %13, i64 %14, i32 %15)
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @CMD_INV_IOMMU_ALL_PAGES_ADDRESS, align 4
  store i32 %20, i32* %9, align 4
  store i32 1, i32* %12, align 4
  br label %21

21:                                               ; preds = %19, %5
  %22 = load i32, i32* @PAGE_MASK, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %26 = call i32 @memset(%struct.iommu_cmd* %25, i32 0, i32 8)
  %27 = load i8*, i8** %7, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %30 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 255
  %35 = shl i32 %34, 24
  %36 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %37 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @lower_32_bits(i32 %48)
  %50 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @upper_32_bits(i32 %54)
  %56 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %55, i32* %59, align 4
  %60 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %61 = load i32, i32* @CMD_INV_IOTLB_PAGES, align 4
  %62 = call i32 @CMD_SET_TYPE(%struct.iommu_cmd* %60, i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %21
  %66 = load i32, i32* @CMD_INV_IOMMU_PAGES_SIZE_MASK, align 4
  %67 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %68 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %66
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %65, %21
  ret void
}

declare dso_local i32 @iommu_num_pages(i32, i64, i32) #1

declare dso_local i32 @memset(%struct.iommu_cmd*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @CMD_SET_TYPE(%struct.iommu_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
