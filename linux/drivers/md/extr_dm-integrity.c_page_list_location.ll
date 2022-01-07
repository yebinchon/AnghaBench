; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_page_list_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_page_list_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"page_list_location\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, i32, i32, i32*, i32*)* @page_list_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @page_list_location(%struct.dm_integrity_c* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.dm_integrity_c*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @access_journal_check(%struct.dm_integrity_c* %12, i32 %13, i32 %14, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %18 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul i32 %16, %19
  %21 = load i32, i32* %8, align 4
  %22 = add i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = load i32, i32* @SECTOR_SHIFT, align 4
  %26 = sub i32 %24, %25
  %27 = lshr i32 %23, %26
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @SECTOR_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %31, %33
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  ret void
}

declare dso_local i32 @access_journal_check(%struct.dm_integrity_c*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
