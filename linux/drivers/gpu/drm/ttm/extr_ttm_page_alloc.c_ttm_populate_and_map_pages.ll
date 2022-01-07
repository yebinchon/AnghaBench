; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_populate_and_map_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_page_alloc.c_ttm_populate_and_map_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ttm_dma_tt = type { i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.page** }
%struct.page = type { i32 }
%struct.ttm_operation_ctx = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_populate_and_map_pages(%struct.device* %0, %struct.ttm_dma_tt* %1, %struct.ttm_operation_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ttm_dma_tt*, align 8
  %7 = alloca %struct.ttm_operation_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.ttm_dma_tt* %1, %struct.ttm_dma_tt** %6, align 8
  store %struct.ttm_operation_ctx* %2, %struct.ttm_operation_ctx** %7, align 8
  %13 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %6, align 8
  %14 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %13, i32 0, i32 1
  %15 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %7, align 8
  %16 = call i32 @ttm_pool_populate(%struct.TYPE_3__* %14, %struct.ttm_operation_ctx* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %159

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %155, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %6, align 8
  %25 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %23, %27
  br i1 %28, label %29, label %158

29:                                               ; preds = %22
  %30 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %6, align 8
  %31 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.page**, %struct.page*** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.page*, %struct.page** %33, i64 %35
  %37 = load %struct.page*, %struct.page** %36, align 8
  store %struct.page* %37, %struct.page** %11, align 8
  store i64 1, i64* %12, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %63, %29
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %6, align 8
  %43 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %40
  %48 = load %struct.page*, %struct.page** %11, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 1
  store %struct.page* %49, %struct.page** %11, align 8
  %50 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %6, align 8
  %51 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load %struct.page**, %struct.page*** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.page*, %struct.page** %53, i64 %55
  %57 = load %struct.page*, %struct.page** %56, align 8
  %58 = icmp ne %struct.page* %49, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %66

60:                                               ; preds = %47
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %12, align 8
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %40

66:                                               ; preds = %59, %40
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %6, align 8
  %69 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load %struct.page**, %struct.page*** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.page*, %struct.page** %71, i64 %73
  %75 = load %struct.page*, %struct.page** %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = mul i64 %76, %77
  %79 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %80 = call i64 @dma_map_page(%struct.device* %67, %struct.page* %75, i32 0, i64 %78, i32 %79)
  %81 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %6, align 8
  %82 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 %80, i64* %86, align 8
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %6, align 8
  %89 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @dma_mapping_error(%struct.device* %87, i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %66
  br label %98

98:                                               ; preds = %102, %97
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, -1
  store i32 %100, i32* %8, align 4
  %101 = icmp ne i32 %99, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %6, align 8
  %105 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PAGE_SIZE, align 8
  %112 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %113 = call i32 @dma_unmap_page(%struct.device* %103, i64 %110, i64 %111, i32 %112)
  %114 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %6, align 8
  %115 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 0, i64* %119, align 8
  br label %98

120:                                              ; preds = %98
  %121 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %6, align 8
  %122 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %121, i32 0, i32 1
  %123 = call i32 @ttm_pool_unpopulate(%struct.TYPE_3__* %122)
  %124 = load i32, i32* @EFAULT, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %159

126:                                              ; preds = %66
  store i32 1, i32* %9, align 4
  br label %127

127:                                              ; preds = %151, %126
  %128 = load i32, i32* %9, align 4
  %129 = zext i32 %128 to i64
  %130 = load i64, i64* %12, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %154

132:                                              ; preds = %127
  %133 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %6, align 8
  %134 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @PAGE_SIZE, align 8
  %141 = add i64 %139, %140
  %142 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %6, align 8
  %143 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = add i32 %145, 1
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %144, i64 %147
  store i64 %141, i64* %148, align 8
  %149 = load i32, i32* %8, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %132
  %152 = load i32, i32* %9, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %127

154:                                              ; preds = %127
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %8, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %22

158:                                              ; preds = %22
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %120, %19
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @ttm_pool_populate(%struct.TYPE_3__*, %struct.ttm_operation_ctx*) #1

declare dso_local i64 @dma_map_page(%struct.device*, %struct.page*, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @ttm_pool_unpopulate(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
