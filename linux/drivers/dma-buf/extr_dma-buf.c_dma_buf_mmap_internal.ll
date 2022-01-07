; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_mmap_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_mmap_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dma_buf* }
%struct.dma_buf = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dma_buf*, %struct.vm_area_struct*)* }
%struct.vm_area_struct = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @dma_buf_mmap_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_buf_mmap_internal(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.dma_buf*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = call i32 @is_dma_buf_file(%struct.file* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.dma_buf*, %struct.dma_buf** %15, align 8
  store %struct.dma_buf* %16, %struct.dma_buf** %6, align 8
  %17 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %18 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dma_buf*, %struct.vm_area_struct*)*, i32 (%struct.dma_buf*, %struct.vm_area_struct*)** %20, align 8
  %22 = icmp ne i32 (%struct.dma_buf*, %struct.vm_area_struct*)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %13
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %31 = call i64 @vma_pages(%struct.vm_area_struct* %30)
  %32 = add nsw i64 %29, %31
  %33 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %34 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @PAGE_SHIFT, align 4
  %37 = zext i32 %36 to i64
  %38 = ashr i64 %35, %37
  %39 = icmp sgt i64 %32, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %52

43:                                               ; preds = %26
  %44 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %45 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.dma_buf*, %struct.vm_area_struct*)*, i32 (%struct.dma_buf*, %struct.vm_area_struct*)** %47, align 8
  %49 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = call i32 %48(%struct.dma_buf* %49, %struct.vm_area_struct* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %43, %40, %23, %10
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @is_dma_buf_file(%struct.file*) #1

declare dso_local i64 @vma_pages(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
