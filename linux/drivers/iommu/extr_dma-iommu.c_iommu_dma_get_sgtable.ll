; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_get_sgtable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_get_sgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sg_table = type { i32 }
%struct.page = type { i32 }

@CONFIG_DMA_REMAP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sg_table*, i8*, i32, i64, i64)* @iommu_dma_get_sgtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_dma_get_sgtable(%struct.device* %0, %struct.sg_table* %1, i8* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.sg_table*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.page**, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.sg_table* %1, %struct.sg_table** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i32, i32* @CONFIG_DMA_REMAP, align 4
  %18 = call i64 @IS_ENABLED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %6
  %21 = load i8*, i8** %10, align 8
  %22 = call i64 @is_vmalloc_addr(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load i8*, i8** %10, align 8
  %26 = call %struct.page** @dma_common_find_pages(i8* %25)
  store %struct.page** %26, %struct.page*** %16, align 8
  %27 = load %struct.page**, %struct.page*** %16, align 8
  %28 = icmp ne %struct.page** %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %31 = load %struct.page**, %struct.page*** %16, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @PAGE_ALIGN(i64 %32)
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @sg_alloc_table_from_pages(%struct.sg_table* %30, %struct.page** %31, i32 %35, i32 0, i64 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %61

39:                                               ; preds = %24
  %40 = load i8*, i8** %10, align 8
  %41 = call %struct.page* @vmalloc_to_page(i8* %40)
  store %struct.page* %41, %struct.page** %14, align 8
  br label %45

42:                                               ; preds = %20, %6
  %43 = load i8*, i8** %10, align 8
  %44 = call %struct.page* @virt_to_page(i8* %43)
  store %struct.page* %44, %struct.page** %14, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @sg_alloc_table(%struct.sg_table* %46, i32 1, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %53 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.page*, %struct.page** %14, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @PAGE_ALIGN(i64 %56)
  %58 = call i32 @sg_set_page(i32 %54, %struct.page* %55, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %51, %45
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %59, %29
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local %struct.page** @dma_common_find_pages(i8*) #1

declare dso_local i32 @sg_alloc_table_from_pages(%struct.sg_table*, %struct.page**, i32, i32, i64, i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @sg_alloc_table(%struct.sg_table*, i32, i32) #1

declare dso_local i32 @sg_set_page(i32, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
