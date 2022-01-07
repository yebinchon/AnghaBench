; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_access_page_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_access_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_sector = type { i32 }
%struct.dm_integrity_c = type { i32 }
%struct.page_list = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.journal_sector* (%struct.dm_integrity_c*, %struct.page_list*, i32, i32, i32*)* @access_page_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.journal_sector* @access_page_list(%struct.dm_integrity_c* %0, %struct.page_list* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.dm_integrity_c*, align 8
  %7 = alloca %struct.page_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %6, align 8
  store %struct.page_list* %1, %struct.page_list** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @page_list_location(%struct.dm_integrity_c* %14, i32 %15, i32 %16, i32* %11, i32* %12)
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32, i32* %12, align 4
  %23 = sub i32 %21, %22
  %24 = load i32, i32* @SECTOR_SHIFT, align 4
  %25 = lshr i32 %23, %24
  %26 = load i32*, i32** %10, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %20, %5
  %28 = load %struct.page_list*, %struct.page_list** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.page_list, %struct.page_list* %28, i64 %30
  %32 = getelementptr inbounds %struct.page_list, %struct.page_list* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @lowmem_page_address(i32 %33)
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = bitcast i8* %38 to %struct.journal_sector*
  ret %struct.journal_sector* %39
}

declare dso_local i32 @page_list_location(%struct.dm_integrity_c*, i32, i32, i32*, i32*) #1

declare dso_local i8* @lowmem_page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
