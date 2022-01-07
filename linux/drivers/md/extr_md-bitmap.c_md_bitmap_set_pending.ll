; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_set_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_set_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_counts = type { i64, %struct.bitmap_page* }
%struct.bitmap_page = type { i32 }

@PAGE_COUNTER_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitmap_counts*, i64)* @md_bitmap_set_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_bitmap_set_pending(%struct.bitmap_counts* %0, i64 %1) #0 {
  %3 = alloca %struct.bitmap_counts*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bitmap_page*, align 8
  store %struct.bitmap_counts* %0, %struct.bitmap_counts** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.bitmap_counts*, %struct.bitmap_counts** %3, align 8
  %10 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = lshr i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @PAGE_COUNTER_SHIFT, align 8
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %6, align 8
  %16 = load %struct.bitmap_counts*, %struct.bitmap_counts** %3, align 8
  %17 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %16, i32 0, i32 1
  %18 = load %struct.bitmap_page*, %struct.bitmap_page** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %18, i64 %19
  store %struct.bitmap_page* %20, %struct.bitmap_page** %7, align 8
  %21 = load %struct.bitmap_page*, %struct.bitmap_page** %7, align 8
  %22 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load %struct.bitmap_page*, %struct.bitmap_page** %7, align 8
  %27 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
