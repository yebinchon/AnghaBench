; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_access_journal_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_access_journal_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_sector = type { i32 }
%struct.dm_integrity_c = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@JOURNAL_BLOCK_SECTORS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"access_journal_data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.journal_sector* (%struct.dm_integrity_c*, i32, i32)* @access_journal_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.journal_sector* @access_journal_data(%struct.dm_integrity_c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_integrity_c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %8 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* @JOURNAL_BLOCK_SECTORS, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @access_journal_check(%struct.dm_integrity_c* %19, i32 %20, i32 %21, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.journal_sector* @access_journal(%struct.dm_integrity_c* %23, i32 %24, i32 %25)
  ret %struct.journal_sector* %26
}

declare dso_local i32 @access_journal_check(%struct.dm_integrity_c*, i32, i32, i32, i8*) #1

declare dso_local %struct.journal_sector* @access_journal(%struct.dm_integrity_c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
