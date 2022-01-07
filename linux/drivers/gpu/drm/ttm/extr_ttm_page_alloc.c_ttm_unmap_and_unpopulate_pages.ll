; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_unmap_and_unpopulate_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_unmap_and_unpopulate_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ttm_dma_tt = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, %struct.page** }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_unmap_and_unpopulate_pages(%struct.device* %0, %struct.ttm_dma_tt* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ttm_dma_tt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.ttm_dma_tt* %1, %struct.ttm_dma_tt** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %75, %43, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %12 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %16, label %94

16:                                               ; preds = %9
  %17 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %18 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.page**, %struct.page*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.page*, %struct.page** %20, i64 %22
  %24 = load %struct.page*, %struct.page** %23, align 8
  store %struct.page* %24, %struct.page** %7, align 8
  store i64 1, i64* %8, align 8
  %25 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %26 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %16
  %34 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %35 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.page**, %struct.page*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.page*, %struct.page** %37, i64 %39
  %41 = load %struct.page*, %struct.page** %40, align 8
  %42 = icmp ne %struct.page* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %33, %16
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %9

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %72, %46
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %52 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %50, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %49
  %57 = load %struct.page*, %struct.page** %7, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 1
  store %struct.page* %58, %struct.page** %7, align 8
  %59 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %60 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load %struct.page**, %struct.page*** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.page*, %struct.page** %62, i64 %64
  %66 = load %struct.page*, %struct.page** %65, align 8
  %67 = icmp ne %struct.page* %58, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %75

69:                                               ; preds = %56
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %49

75:                                               ; preds = %68, %49
  %76 = load %struct.device*, %struct.device** %3, align 8
  %77 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %78 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @PAGE_SIZE, align 8
  %86 = mul i64 %84, %85
  %87 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %88 = call i32 @dma_unmap_page(%struct.device* %76, i32 %83, i64 %86, i32 %87)
  %89 = load i64, i64* %8, align 8
  %90 = load i32, i32* %5, align 4
  %91 = zext i32 %90 to i64
  %92 = add i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %5, align 4
  br label %9

94:                                               ; preds = %9
  %95 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %96 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %95, i32 0, i32 0
  %97 = call i32 @ttm_pool_unpopulate(%struct.TYPE_2__* %96)
  ret void
}

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @ttm_pool_unpopulate(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
