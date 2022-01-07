; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_file_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_file_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_storage = type { i32, %struct.page**, %struct.page*, %struct.page**, %struct.file* }
%struct.page = type { i32 }
%struct.file = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitmap_storage*)* @md_bitmap_file_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_bitmap_file_unmap(%struct.bitmap_storage* %0) #0 {
  %2 = alloca %struct.bitmap_storage*, align 8
  %3 = alloca %struct.page**, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.bitmap_storage* %0, %struct.bitmap_storage** %2, align 8
  %8 = load %struct.bitmap_storage*, %struct.bitmap_storage** %2, align 8
  %9 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %8, i32 0, i32 4
  %10 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %10, %struct.file** %6, align 8
  %11 = load %struct.bitmap_storage*, %struct.bitmap_storage** %2, align 8
  %12 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %11, i32 0, i32 3
  %13 = load %struct.page**, %struct.page*** %12, align 8
  store %struct.page** %13, %struct.page*** %3, align 8
  %14 = load %struct.bitmap_storage*, %struct.bitmap_storage** %2, align 8
  %15 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.bitmap_storage*, %struct.bitmap_storage** %2, align 8
  %18 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %17, i32 0, i32 2
  %19 = load %struct.page*, %struct.page** %18, align 8
  store %struct.page* %19, %struct.page** %4, align 8
  br label %20

20:                                               ; preds = %39, %1
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.page**, %struct.page*** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.page*, %struct.page** %25, i64 %27
  %29 = load %struct.page*, %struct.page** %28, align 8
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = icmp ne %struct.page* %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.page**, %struct.page*** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.page*, %struct.page** %33, i64 %35
  %37 = load %struct.page*, %struct.page** %36, align 8
  %38 = call i32 @free_buffers(%struct.page* %37)
  br label %39

39:                                               ; preds = %32, %24
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.page**, %struct.page*** %3, align 8
  %42 = call i32 @kfree(%struct.page** %41)
  %43 = load %struct.bitmap_storage*, %struct.bitmap_storage** %2, align 8
  %44 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %43, i32 0, i32 1
  %45 = load %struct.page**, %struct.page*** %44, align 8
  %46 = call i32 @kfree(%struct.page** %45)
  %47 = load %struct.page*, %struct.page** %4, align 8
  %48 = icmp ne %struct.page* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.page*, %struct.page** %4, align 8
  %51 = call i32 @free_buffers(%struct.page* %50)
  br label %52

52:                                               ; preds = %49, %40
  %53 = load %struct.file*, %struct.file** %6, align 8
  %54 = icmp ne %struct.file* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.file*, %struct.file** %6, align 8
  %57 = call %struct.inode* @file_inode(%struct.file* %56)
  store %struct.inode* %57, %struct.inode** %7, align 8
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @invalidate_mapping_pages(i32 %60, i32 0, i32 -1)
  %62 = load %struct.file*, %struct.file** %6, align 8
  %63 = call i32 @fput(%struct.file* %62)
  br label %64

64:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @free_buffers(%struct.page*) #1

declare dso_local i32 @kfree(%struct.page**) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @invalidate_mapping_pages(i32, i32, i32) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
