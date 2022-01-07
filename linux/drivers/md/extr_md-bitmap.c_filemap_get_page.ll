; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_filemap_get_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_filemap_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.bitmap_storage = type { i64, %struct.page** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.bitmap_storage*, i64)* @filemap_get_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @filemap_get_page(%struct.bitmap_storage* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.bitmap_storage*, align 8
  %5 = alloca i64, align 8
  store %struct.bitmap_storage* %0, %struct.bitmap_storage** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.bitmap_storage*, %struct.bitmap_storage** %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i64 @file_page_index(%struct.bitmap_storage* %6, i64 %7)
  %9 = load %struct.bitmap_storage*, %struct.bitmap_storage** %4, align 8
  %10 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp uge i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.page* null, %struct.page** %3, align 8
  br label %23

14:                                               ; preds = %2
  %15 = load %struct.bitmap_storage*, %struct.bitmap_storage** %4, align 8
  %16 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %15, i32 0, i32 1
  %17 = load %struct.page**, %struct.page*** %16, align 8
  %18 = load %struct.bitmap_storage*, %struct.bitmap_storage** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @file_page_index(%struct.bitmap_storage* %18, i64 %19)
  %21 = getelementptr inbounds %struct.page*, %struct.page** %17, i64 %20
  %22 = load %struct.page*, %struct.page** %21, align 8
  store %struct.page* %22, %struct.page** %3, align 8
  br label %23

23:                                               ; preds = %14, %13
  %24 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %24
}

declare dso_local i64 @file_page_index(%struct.bitmap_storage*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
