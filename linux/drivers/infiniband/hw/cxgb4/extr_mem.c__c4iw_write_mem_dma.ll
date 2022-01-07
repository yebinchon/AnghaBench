; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c__c4iw_write_mem_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c__c4iw_write_mem_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.c4iw_wr_wait = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@inline_threshold = common dso_local global i32 0, align 4
@T4_ULPTX_MAX_DMA = common dso_local global i32 0, align 4
@T4_ULPTX_MIN_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_rdev*, i32, i32, i8*, %struct.sk_buff*, %struct.c4iw_wr_wait*)* @_c4iw_write_mem_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_c4iw_write_mem_dma(%struct.c4iw_rdev* %0, i32 %1, i32 %2, i8* %3, %struct.sk_buff* %4, %struct.c4iw_wr_wait* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.c4iw_rdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.c4iw_wr_wait*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %12, align 8
  store %struct.c4iw_wr_wait* %5, %struct.c4iw_wr_wait** %13, align 8
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %21 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  %28 = call i32 @dma_map_single(i32* %24, i8* %25, i32 %26, i32 %27)
  store i32 %28, i32* %17, align 4
  %29 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %30 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %17, align 4
  %35 = call i64 @dma_mapping_error(i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %120

38:                                               ; preds = %6
  %39 = load i32, i32* %17, align 4
  store i32 %39, i32* %18, align 4
  br label %40

40:                                               ; preds = %85, %38
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @inline_threshold, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %97

44:                                               ; preds = %40
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @T4_ULPTX_MAX_DMA, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @T4_ULPTX_MIN_IO, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @T4_ULPTX_MIN_IO, align 4
  %57 = sub nsw i32 %56, 1
  %58 = xor i32 %57, -1
  %59 = and i32 %55, %58
  store i32 %59, i32* %15, align 4
  br label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %60, %54
  br label %65

63:                                               ; preds = %44
  %64 = load i32, i32* @T4_ULPTX_MAX_DMA, align 4
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %14, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %14, align 4
  %69 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %79

77:                                               ; preds = %65
  %78 = load %struct.c4iw_wr_wait*, %struct.c4iw_wr_wait** %13, align 8
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi %struct.c4iw_wr_wait* [ null, %76 ], [ %78, %77 ]
  %81 = call i32 @_c4iw_write_mem_dma_aligned(%struct.c4iw_rdev* %69, i32 %70, i32 %71, i32 %72, %struct.sk_buff* %73, %struct.c4iw_wr_wait* %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %109

85:                                               ; preds = %79
  %86 = load i32, i32* %15, align 4
  %87 = ashr i32 %86, 5
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i8*, i8** %11, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr i8, i8* %91, i64 %92
  store i8* %93, i8** %11, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %17, align 4
  br label %40

97:                                               ; preds = %40
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i8*, i8** %11, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %106 = load %struct.c4iw_wr_wait*, %struct.c4iw_wr_wait** %13, align 8
  %107 = call i32 @_c4iw_write_mem_inline(%struct.c4iw_rdev* %101, i32 %102, i32 %103, i8* %104, %struct.sk_buff* %105, %struct.c4iw_wr_wait* %106)
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %100, %97
  br label %109

109:                                              ; preds = %108, %84
  %110 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %111 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @DMA_TO_DEVICE, align 4
  %118 = call i32 @dma_unmap_single(i32* %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %109, %37
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @_c4iw_write_mem_dma_aligned(%struct.c4iw_rdev*, i32, i32, i32, %struct.sk_buff*, %struct.c4iw_wr_wait*) #1

declare dso_local i32 @_c4iw_write_mem_inline(%struct.c4iw_rdev*, i32, i32, i8*, %struct.sk_buff*, %struct.c4iw_wr_wait*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
