; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i64, %struct.file*, %struct.TYPE_2__* }
%struct.file = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.dma_buf*, %struct.vm_area_struct*)* }
%struct.vm_area_struct = type { i64, %struct.file* }

@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_buf_mmap(%struct.dma_buf* %0, %struct.vm_area_struct* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_buf*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  store %struct.dma_buf* %0, %struct.dma_buf** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %11 = icmp ne %struct.dma_buf* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %14 = icmp ne %struct.vm_area_struct* %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ true, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %102

24:                                               ; preds = %16
  %25 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %26 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dma_buf*, %struct.vm_area_struct*)*, i32 (%struct.dma_buf*, %struct.vm_area_struct*)** %28, align 8
  %30 = icmp ne i32 (%struct.dma_buf*, %struct.vm_area_struct*)* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %102

34:                                               ; preds = %24
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %37 = call i64 @vma_pages(%struct.vm_area_struct* %36)
  %38 = add i64 %35, %37
  %39 = load i64, i64* %7, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EOVERFLOW, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %102

44:                                               ; preds = %34
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %47 = call i64 @vma_pages(%struct.vm_area_struct* %46)
  %48 = add i64 %45, %47
  %49 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %50 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @PAGE_SHIFT, align 4
  %53 = zext i32 %52 to i64
  %54 = lshr i64 %51, %53
  %55 = icmp ugt i64 %48, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %102

59:                                               ; preds = %44
  %60 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %61 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %60, i32 0, i32 1
  %62 = load %struct.file*, %struct.file** %61, align 8
  %63 = call i32 @get_file(%struct.file* %62)
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 1
  %66 = load %struct.file*, %struct.file** %65, align 8
  store %struct.file* %66, %struct.file** %8, align 8
  %67 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %68 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %67, i32 0, i32 1
  %69 = load %struct.file*, %struct.file** %68, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 1
  store %struct.file* %69, %struct.file** %71, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %76 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32 (%struct.dma_buf*, %struct.vm_area_struct*)*, i32 (%struct.dma_buf*, %struct.vm_area_struct*)** %78, align 8
  %80 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %82 = call i32 %79(%struct.dma_buf* %80, %struct.vm_area_struct* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %59
  %86 = load %struct.file*, %struct.file** %8, align 8
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 1
  store %struct.file* %86, %struct.file** %88, align 8
  %89 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %90 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %89, i32 0, i32 1
  %91 = load %struct.file*, %struct.file** %90, align 8
  %92 = call i32 @fput(%struct.file* %91)
  br label %100

93:                                               ; preds = %59
  %94 = load %struct.file*, %struct.file** %8, align 8
  %95 = icmp ne %struct.file* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.file*, %struct.file** %8, align 8
  %98 = call i32 @fput(%struct.file* %97)
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %85
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %56, %41, %31, %21
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
