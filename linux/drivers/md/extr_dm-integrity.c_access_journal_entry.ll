; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_access_journal_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_access_journal_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_entry = type { i32 }
%struct.dm_integrity_c = type { i32 }
%struct.journal_sector = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"access_journal_entry\00", align 1
@JOURNAL_BLOCK_SECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.journal_entry* (%struct.dm_integrity_c*, i32, i32)* @access_journal_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.journal_entry* @access_journal_entry(%struct.dm_integrity_c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_integrity_c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.journal_sector*, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @access_journal_check(%struct.dm_integrity_c* %10, i32 %11, i32 %12, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @JOURNAL_BLOCK_SECTORS, align 4
  %16 = urem i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @JOURNAL_BLOCK_SECTORS, align 4
  %19 = udiv i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.journal_sector* @access_journal(%struct.dm_integrity_c* %20, i32 %21, i32 %22)
  store %struct.journal_sector* %23, %struct.journal_sector** %9, align 8
  %24 = load %struct.journal_sector*, %struct.journal_sector** %9, align 8
  %25 = bitcast %struct.journal_sector* %24 to i8*
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %28 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul i32 %26, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %25, i64 %31
  %33 = bitcast i8* %32 to %struct.journal_entry*
  ret %struct.journal_entry* %33
}

declare dso_local i32 @access_journal_check(%struct.dm_integrity_c*, i32, i32, i32, i8*) #1

declare dso_local %struct.journal_sector* @access_journal(%struct.dm_integrity_c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
