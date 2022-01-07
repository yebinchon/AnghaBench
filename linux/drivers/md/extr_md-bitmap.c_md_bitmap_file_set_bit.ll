; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_file_set_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_file_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i32, %struct.bitmap_storage, i32, %struct.TYPE_2__ }
%struct.bitmap_storage = type { i64 }
%struct.TYPE_2__ = type { i64 }
%struct.page = type { i64 }

@BITMAP_HOSTENDIAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"set file bit %lu page %lu\0A\00", align 1
@BITMAP_PAGE_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitmap*, i64)* @md_bitmap_file_set_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_bitmap_file_set_bit(%struct.bitmap* %0, i64 %1) #0 {
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bitmap_storage*, align 8
  %10 = alloca i64, align 8
  store %struct.bitmap* %0, %struct.bitmap** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %13 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = lshr i64 %11, %15
  store i64 %16, i64* %8, align 8
  %17 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %18 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %17, i32 0, i32 2
  store %struct.bitmap_storage* %18, %struct.bitmap_storage** %9, align 8
  store i64 0, i64* %10, align 8
  %19 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %20 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @mddev_is_clustered(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %26 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.bitmap_storage*, %struct.bitmap_storage** %9, align 8
  %29 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = mul i64 %27, %30
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %24, %2
  %33 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %34 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %33, i32 0, i32 2
  %35 = load i64, i64* %8, align 8
  %36 = call %struct.page* @filemap_get_page(%struct.bitmap_storage* %34, i64 %35)
  store %struct.page* %36, %struct.page** %6, align 8
  %37 = load %struct.page*, %struct.page** %6, align 8
  %38 = icmp ne %struct.page* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %76

40:                                               ; preds = %32
  %41 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %42 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %41, i32 0, i32 2
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @file_page_offset(%struct.bitmap_storage* %42, i64 %43)
  store i64 %44, i64* %5, align 8
  %45 = load %struct.page*, %struct.page** %6, align 8
  %46 = call i8* @kmap_atomic(%struct.page* %45)
  store i8* %46, i8** %7, align 8
  %47 = load i32, i32* @BITMAP_HOSTENDIAN, align 4
  %48 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %49 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %48, i32 0, i32 1
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load i64, i64* %5, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @set_bit(i64 %53, i8* %54)
  br label %60

56:                                               ; preds = %40
  %57 = load i64, i64* %5, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @set_bit_le(i64 %57, i8* %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @kunmap_atomic(i8* %61)
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.page*, %struct.page** %6, align 8
  %65 = getelementptr inbounds %struct.page, %struct.page* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %66)
  %68 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %69 = load %struct.page*, %struct.page** %6, align 8
  %70 = getelementptr inbounds %struct.page, %struct.page* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = sub i64 %71, %72
  %74 = load i32, i32* @BITMAP_PAGE_DIRTY, align 4
  %75 = call i32 @set_page_attr(%struct.bitmap* %68, i64 %73, i32 %74)
  br label %76

76:                                               ; preds = %60, %39
  ret void
}

declare dso_local i64 @mddev_is_clustered(i32) #1

declare dso_local %struct.page* @filemap_get_page(%struct.bitmap_storage*, i64) #1

declare dso_local i64 @file_page_offset(%struct.bitmap_storage*, i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i64, i8*) #1

declare dso_local i32 @set_bit_le(i64, i8*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @set_page_attr(%struct.bitmap*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
