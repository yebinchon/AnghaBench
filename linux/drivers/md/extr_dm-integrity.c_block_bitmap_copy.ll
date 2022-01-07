; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_block_bitmap_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_block_bitmap_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32 }
%struct.page_list = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BITMAP_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, %struct.page_list*, %struct.page_list*)* @block_bitmap_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @block_bitmap_copy(%struct.dm_integrity_c* %0, %struct.page_list* %1, %struct.page_list* %2) #0 {
  %4 = alloca %struct.dm_integrity_c*, align 8
  %5 = alloca %struct.page_list*, align 8
  %6 = alloca %struct.page_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %4, align 8
  store %struct.page_list* %1, %struct.page_list** %5, align 8
  store %struct.page_list* %2, %struct.page_list** %6, align 8
  %11 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %12 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load i32, i32* @BITMAP_BLOCK_SIZE, align 4
  %16 = sdiv i32 %14, %15
  %17 = call i32 @DIV_ROUND_UP(i32 %13, i32 %16)
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %40, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load %struct.page_list*, %struct.page_list** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.page_list, %struct.page_list* %23, i64 %25
  %27 = getelementptr inbounds %struct.page_list, %struct.page_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64* @lowmem_page_address(i32 %28)
  store i64* %29, i64** %9, align 8
  %30 = load %struct.page_list*, %struct.page_list** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.page_list, %struct.page_list* %30, i64 %32
  %34 = getelementptr inbounds %struct.page_list, %struct.page_list* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64* @lowmem_page_address(i32 %35)
  store i64* %36, i64** %10, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = call i32 @copy_page(i64* %37, i64* %38)
  br label %40

40:                                               ; preds = %22
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %18

43:                                               ; preds = %18
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64* @lowmem_page_address(i32) #1

declare dso_local i32 @copy_page(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
