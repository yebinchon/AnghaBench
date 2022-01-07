; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_build_inv_iommu_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_build_inv_iommu_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_cmd = type { i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@CMD_INV_IOMMU_ALL_PAGES_ADDRESS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@CMD_INV_IOMMU_PAGES = common dso_local global i32 0, align 4
@CMD_INV_IOMMU_PAGES_SIZE_MASK = common dso_local global i32 0, align 4
@CMD_INV_IOMMU_PAGES_PDE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_cmd*, i32, i64, i32, i32)* @build_inv_iommu_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_inv_iommu_pages(%struct.iommu_cmd* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iommu_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iommu_cmd* %0, %struct.iommu_cmd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i32 @iommu_num_pages(i32 %13, i64 %14, i32 %15)
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @CMD_INV_IOMMU_ALL_PAGES_ADDRESS, align 4
  store i32 %20, i32* %7, align 4
  store i32 1, i32* %12, align 4
  br label %21

21:                                               ; preds = %19, %5
  %22 = load i32, i32* @PAGE_MASK, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %26 = call i32 @memset(%struct.iommu_cmd* %25, i32 0, i32 8)
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @lower_32_bits(i32 %34)
  %36 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %37 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @upper_32_bits(i32 %40)
  %42 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %43 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %41, i32* %45, align 4
  %46 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %47 = load i32, i32* @CMD_INV_IOMMU_PAGES, align 4
  %48 = call i32 @CMD_SET_TYPE(%struct.iommu_cmd* %46, i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %21
  %52 = load i32, i32* @CMD_INV_IOMMU_PAGES_SIZE_MASK, align 4
  %53 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %54 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %51, %21
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* @CMD_INV_IOMMU_PAGES_PDE_MASK, align 4
  %64 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %65 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %62, %59
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
