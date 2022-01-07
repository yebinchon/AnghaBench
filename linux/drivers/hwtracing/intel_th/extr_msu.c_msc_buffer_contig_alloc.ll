; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_buffer_contig_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_buffer_contig_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc = type { i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msc*, i64)* @msc_buffer_contig_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msc_buffer_contig_alloc(%struct.msc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.msc* %0, %struct.msc** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @PAGE_SHIFT, align 8
  %12 = lshr i64 %10, %11
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @get_order(i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

18:                                               ; preds = %2
  %19 = load %struct.msc*, %struct.msc** %4, align 8
  %20 = getelementptr inbounds %struct.msc, %struct.msc* %19, i32 0, i32 1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @sg_alloc_table(%struct.TYPE_6__* %20, i32 1, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %89

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load i32, i32* @__GFP_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @GFP_DMA32, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.page* @alloc_pages(i32 %33, i32 %34)
  store %struct.page* %35, %struct.page** %8, align 8
  %36 = load %struct.page*, %struct.page** %8, align 8
  %37 = icmp ne %struct.page* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %26
  br label %85

39:                                               ; preds = %26
  %40 = load %struct.page*, %struct.page** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @split_page(%struct.page* %40, i32 %41)
  %43 = load %struct.msc*, %struct.msc** %4, align 8
  %44 = getelementptr inbounds %struct.msc, %struct.msc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.page*, %struct.page** %8, align 8
  %48 = call i32 @page_address(%struct.page* %47)
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @sg_set_buf(i32 %46, i32 %48, i64 %49)
  %51 = load %struct.msc*, %struct.msc** %4, align 8
  %52 = call %struct.TYPE_7__* @msc_dev(%struct.msc* %51)
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.msc*, %struct.msc** %4, align 8
  %58 = getelementptr inbounds %struct.msc, %struct.msc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %62 = call i32 @dma_map_sg(i32 %56, i32 %60, i32 1, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %39
  br label %81

66:                                               ; preds = %39
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.msc*, %struct.msc** %4, align 8
  %69 = getelementptr inbounds %struct.msc, %struct.msc* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.page*, %struct.page** %8, align 8
  %71 = call i32 @page_address(%struct.page* %70)
  %72 = load %struct.msc*, %struct.msc** %4, align 8
  %73 = getelementptr inbounds %struct.msc, %struct.msc* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.msc*, %struct.msc** %4, align 8
  %75 = getelementptr inbounds %struct.msc, %struct.msc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @sg_dma_address(i32 %77)
  %79 = load %struct.msc*, %struct.msc** %4, align 8
  %80 = getelementptr inbounds %struct.msc, %struct.msc* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %3, align 4
  br label %91

81:                                               ; preds = %65
  %82 = load %struct.page*, %struct.page** %8, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @__free_pages(%struct.page* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %38
  %86 = load %struct.msc*, %struct.msc** %4, align 8
  %87 = getelementptr inbounds %struct.msc, %struct.msc* %86, i32 0, i32 1
  %88 = call i32 @sg_free_table(%struct.TYPE_6__* %87)
  br label %89

89:                                               ; preds = %85, %25
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %66, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @sg_alloc_table(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @split_page(%struct.page*, i32) #1

declare dso_local i32 @sg_set_buf(i32, i32, i64) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @msc_dev(%struct.msc*) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @sg_free_table(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
