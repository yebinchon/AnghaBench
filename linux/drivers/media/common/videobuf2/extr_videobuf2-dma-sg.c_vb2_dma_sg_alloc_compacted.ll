; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_alloc_compacted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_alloc_compacted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_dma_sg_buf = type { i64, %struct.page** }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_dma_sg_buf*, i32)* @vb2_dma_sg_alloc_compacted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb2_dma_sg_alloc_compacted(%struct.vb2_dma_sg_buf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_dma_sg_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vb2_dma_sg_buf* %0, %struct.vb2_dma_sg_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %4, align 8
  %12 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %94, %2
  %15 = load i64, i64* %7, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %101

17:                                               ; preds = %14
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @get_order(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %7, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %17
  store %struct.page* null, %struct.page** %8, align 8
  br label %30

30:                                               ; preds = %67, %29
  %31 = load %struct.page*, %struct.page** %8, align 8
  %32 = icmp ne %struct.page* %31, null
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load i32, i32* @__GFP_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @__GFP_NOWARN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.page* @alloc_pages(i32 %41, i32 %42)
  store %struct.page* %43, %struct.page** %8, align 8
  %44 = load %struct.page*, %struct.page** %8, align 8
  %45 = icmp ne %struct.page* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %70

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %55, %50
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %6, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %4, align 8
  %57 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %56, i32 0, i32 1
  %58 = load %struct.page**, %struct.page*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.page*, %struct.page** %58, i64 %60
  %62 = load %struct.page*, %struct.page** %61, align 8
  %63 = call i32 @__free_page(%struct.page* %62)
  br label %51

64:                                               ; preds = %51
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %102

67:                                               ; preds = %47
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %9, align 4
  br label %30

70:                                               ; preds = %46, %30
  %71 = load %struct.page*, %struct.page** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @split_page(%struct.page* %71, i32 %72)
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %91, %70
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 1, %76
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load %struct.page*, %struct.page** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.page, %struct.page* %80, i64 %82
  %84 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %4, align 8
  %85 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %84, i32 0, i32 1
  %86 = load %struct.page**, %struct.page*** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds %struct.page*, %struct.page** %86, i64 %89
  store %struct.page* %83, %struct.page** %90, align 8
  br label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %74

94:                                               ; preds = %74
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = load i32, i32* %9, align 4
  %97 = shl i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %7, align 8
  %100 = sub i64 %99, %98
  store i64 %100, i64* %7, align 8
  br label %14

101:                                              ; preds = %14
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %64
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @get_order(i64) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @split_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
